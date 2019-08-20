/*****************************************************************************/
/*
 * This is a vector addition program. While the addition part is
 * performed on FPGA and the rest is handled by CPU. The basic flow
 * works in the following step:
 * 1) Software initialization data and DMA devices.
 * 2) Move source data from CPU to FPGA through DMA.
 * 3) Hardware computation on FPGA. When it is done, it send an interruption to CPU.
 * 4) CPU get to fetch the result when it gets the interruption signal.
 * 5) Software complete the program.
 *
 *****************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include "xscutimer.h"
#include "common.h"

XDmaPs XDma;
XScuGic XGic;
XScuTimer PS_Timer;

int Dma_Channel0_Flag=0;
int Computation_Done_Flag=0;
int PS_Timer_Flag = 0;
int Overflow_Cnt=0;

u32 t0;
u32 t1;
long int cnt0;
long int cnt1;

int ARM_Calculated_Centroids[N][D];
int FPGA_Calculated_Centroids[N][D];
int Const_Num=2;

int Scu_Timer_Setup(XScuTimer *PS_TimerPtr, u16 Timer_Device_ID);
int Interruption_Setup(XScuGic *XGic_Ptr, XDmaPs *XDma_Ptr);
void Scu_Timer_Start(XScuTimer * PS_TimerPtr);
int XDma_PS_Setup(u16 DeviceId, XDmaPs* XDma_Ptr);
void Timer_Intr_Handler(void *CallBackRef);
void GPIO_Move(int* Data_Ptr, u32 Buffer_Addr, int Length, int Is_Out);
int XDma_PS_Move(u32 Src_Addr, u32 Dst_Addr, int Length, unsigned int Channel);
void Dma_Done_Handler(unsigned int Channel, XDmaPs_Cmd *Dma_Cmd, void *CallbackRef);
void Computation_Done_ISR(void *Any_Ptr);
void CPU_Compute();
void FPGA_Compute();
int FPGA_Acc();
int Verification();
void Init();
void PS_Timer_Start();
long long PS_Timer_Return();
void Load_Ctrl_Words();
void Kmean_Kernel();
void Search_Nearest_Nodes(int Avg_Centroids[N][D], int Calculated_Centroids[N][D]);

int main() {

	printf("--------------------------------------------------------------------------------\n\r");
	printf("Kmean (N=%d, D=%d, S=%d) using CGRA!\n\r", N, D, S);
	printf("--------------------------------------------------------------------------------\n\r");

	Init();

	Scu_Timer_Setup(&PS_Timer, TIMER_DEVICE_ID);

	Interruption_Setup(&XGic, &XDma);

	Scu_Timer_Start(&PS_Timer);

	FPGA_Acc();

	CPU_Compute();

	Verification();

	return XST_SUCCESS;
}
void Init(){

	//Input and output are already there.
}

void PS_Timer_Start(){

	cnt0 = Overflow_Cnt;
	t0 = XScuTimer_GetCounterValue(&PS_Timer);

}

long long PS_Timer_Return(){

	long long cycles;
	t1 = XScuTimer_GetCounterValue(&PS_Timer);
	cnt1 = Overflow_Cnt;
	cycles = (cnt1 - cnt0)*TIMER_LOAD_VALUE + (int)t0 - (int) t1;
	return cycles;

}

/* ------------------------------------------------------------
 * Move the controlling words to the BRAM using GPIO.
 * They could be removed in future as we may initialize it at
 * bit stream updating step.
 ------------------------------------------------------------*/
void Load_Ctrl_Words(){

	int i;
	for (i=0; i<INST_NUM; i++) {
		Xil_Out32(Bram2_Base_Addr + i*4, SrcMemCtrlWords[i]);
		Xil_Out32(Bram3_Base_Addr + i*4, ResultMemCtrlWords[i]);
	}

}

/* When the input data size is small, GPIO is used for moving data. */
void GPIO_Move(int* Data_Ptr, u32 Buffer_Addr, int Length, int Is_Out){

	int i;
	if(Is_Out){
		for(i=0; i<Length; i++){
			Xil_Out32(Buffer_Addr+i*4, *(Data_Ptr+i));
		}
	}
	else{
		for(i=0; i<Length; i++){
			*(Data_Ptr+i)=(int)Xil_In32(Buffer_Addr+i*4);
		}
	}

}

int Verification(){

	int i;
	int j;

	for(i=0; i<N; i++){
		for(j=0; j<D; j++){
			if(ARM_Calculated_Centroids[i][j]!=FPGA_Calculated_Centroids[i][j]){
				printf("Verification failed! ARM_Calculated_Centroids[%d][%d]=%d, FPGA_Calculated_Centroids[%d][%d]=%d\n\r", i, j, ARM_Calculated_Centroids[i][j], i, j, FPGA_Calculated_Centroids[i][j]);
				return XST_FAILURE;
			}
		}
	}

	printf("Verification passed!\n\r");

	return XST_SUCCESS;

}

void FPGA_Compute(){

	Xil_Out32(SW_IO_Addr, 0x01);
	while(Xil_In32(HW_IO_Addr)!=0x01);
	Xil_Out32(SW_IO_Addr, 0x00);

}

int FPGA_Acc(void){

	u32 Input_Buffer_Addr;
	u32 Output_Buffer_Addr;
	int FPGA_Centroids_Sum[N][D];
	int FPGA_Centroids_Num[N];
	int IM_Centroids[N][D];
	int i;
	int j;

	/* System initialization */
	PS_Timer_Start();

	XDma_PS_Setup(DMA_DEVICE_ID, &XDma);

	for(i=0; i<N; i++){
		for(j=0; j<D; j++){
			IM_Centroids[i][j] = Init_Centroids[i][j];
		}
	}

	printf("System initialization time: %lld!\n\r", PS_Timer_Return());

	Load_Ctrl_Words();

	/* Move initial data from main memory to FPGA. */
	PS_Timer_Start();

	Input_Buffer_Addr = Bram0_Base_Addr;
	GPIO_Move(Const_In, Input_Buffer_Addr, Const_Num, 1);

	Input_Buffer_Addr = Bram0_Base_Addr + Const_Num*4;
	XDma_PS_Move((u32)(&Block_Samples[0][0]), Input_Buffer_Addr, S*D, 0);
	//GPIO_Move(&Block_Samples[0][0], Input_Buffer_Addr, S*D, 1);

	printf("Time consumption of moving initial data to FPGA: %lld cycles!\n\r", PS_Timer_Return());

	for(i=0; i<IT; i++){

		PS_Timer_Start();

		Input_Buffer_Addr = Bram0_Base_Addr + (Const_Num + S*D)*4;
		XDma_PS_Move((u32)(&IM_Centroids[0][0]), Input_Buffer_Addr, N*D, 0);
		//GPIO_Move(&IM_Centroids[0][0], Input_Buffer_Addr, N*D, 1);

		if(i==0){
			printf("Time consumption of moving input data to FPGA: %lld cycles!\n\r", PS_Timer_Return());
		}

		/* Computation on FPGA. */
		PS_Timer_Start();
		FPGA_Compute();
		if(i==0){
			printf("Time consumption of FPGA computation: %lld cycles!\n\r", PS_Timer_Return());
		}

		/* Move the FPGA computation result back to main memory. */
		PS_Timer_Start();

		Xil_DCacheFlushRange((u32)(&FPGA_Centroids_Sum[0][0]), (N*D)*4);
		Output_Buffer_Addr = Bram1_Base_Addr;
		XDma_PS_Move(Output_Buffer_Addr, (u32)(&FPGA_Centroids_Sum[0][0]), N*D, 0);

		Output_Buffer_Addr = Bram1_Base_Addr + N*D*4;
		GPIO_Move(FPGA_Centroids_Num, Output_Buffer_Addr, N, 0);
		if(i==0){
			printf("Time consumption of moving result from FPGA to main memory: %lld cycles!\n\r", PS_Timer_Return());
		}

		/* Update IM centroids */
		PS_Timer_Start();
		for(j=0; j<N; j++){
			IM_Centroids[j][0] = FPGA_Centroids_Sum[j][0]/FPGA_Centroids_Num[j];
			IM_Centroids[j][1] = FPGA_Centroids_Sum[j][1]/FPGA_Centroids_Num[j];
		}
		if(i==0){
			printf("Time consumption of intermediate result update: %lld cycles!\n\r", PS_Timer_Return());
		}

	}

	PS_Timer_Start();
	Search_Nearest_Nodes(IM_Centroids, FPGA_Calculated_Centroids);
	printf("Time consumption of final centroids search: %lld cycles!\n\r", PS_Timer_Return());

	return XST_SUCCESS;
}

void Scu_Timer_Start(XScuTimer * PS_TimerPtr) {

	XScuTimer_EnableAutoReload(PS_TimerPtr);

	XScuTimer_LoadTimer(PS_TimerPtr, TIMER_LOAD_VALUE);

	XScuTimer_Start(PS_TimerPtr);

}

int XDma_PS_Setup(u16 DeviceId, XDmaPs* XDma_Ptr) {
	int Status;

	XDmaPs_Config *DmaCfgPtr;

	/*Initialize the DMA Driver */
	DmaCfgPtr = XDmaPs_LookupConfig(DeviceId);
	if (DmaCfgPtr == NULL) {
		return XST_FAILURE;
	}
	Status = XDmaPs_CfgInitialize(XDma_Ptr, DmaCfgPtr, DmaCfgPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;

}

int XDma_PS_Move(u32 Src_Addr, u32 Dst_Addr, int Length, unsigned int Channel) {

	int Status;
	XDmaPs *DmaPtr = &XDma;
	XDmaPs_Cmd Dma_Cmd;

	memset(&Dma_Cmd, 0, sizeof(XDmaPs_Cmd));
	Dma_Cmd.ChanCtrl.SrcBurstSize = 4;
	Dma_Cmd.ChanCtrl.SrcBurstLen = 16;
	Dma_Cmd.ChanCtrl.SrcInc = 1;
	Dma_Cmd.ChanCtrl.DstBurstSize = 4;
	Dma_Cmd.ChanCtrl.DstBurstLen = 16;
	Dma_Cmd.ChanCtrl.DstInc = 1;
	Dma_Cmd.BD.SrcAddr = Src_Addr;
	Dma_Cmd.BD.DstAddr = Dst_Addr;
	Dma_Cmd.BD.Length = Length * sizeof(int);

	/* Set the Done interrupt handler */
	XDmaPs_SetDoneHandler(DmaPtr, Channel, Dma_Done_Handler, (void *) (Channel));

	Status = XDmaPs_Start(DmaPtr, Channel, &Dma_Cmd, 0);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	while(Dma_Channel0_Flag==0);
	Dma_Channel0_Flag=0;

	return XST_SUCCESS;

}

void Computation_Done_ISR(void* Any_Ptr){

	/*
	XGpio *XGioPtr = (XGpio*)AnyPtr;

	Disable the interrupt.
	XGpio_InterruptDisable(XGioPtr, COMPUTATION_DONE_INTR);
	Computation_Done_Flag=1;

	Clear the interrupt
	(void)XGpio_InterruptClear(XGioPtr, XGPIO_IR_MASK);

	Enable the interrupt
	XGpio_InterruptEnable(XGioPtr, XGPIO_IR_MASK);
	*/

}

/*****************************************************************************/
/*
 * Dma_Done_Handler.
 *
 * @param	Channel is the Channel number.
 * @param	Dma_Cmd is the Dma Command.
 * @param	CallbackRef is the callback reference data.
 *
 * @return	None.
 *
 * @note		None.
 *
 ******************************************************************************/
void Dma_Done_Handler(unsigned int Channel, XDmaPs_Cmd *Dma_Cmd, void *CallbackRef) {

	volatile int *Checked = (volatile int *) CallbackRef;
	int Status = 1;

	if(Channel==0){
		Dma_Channel0_Flag=1;
	}

	*Checked = Status;
}

/*****************************************************************************/
/**
*
* This function tests the functioning of the Cortex A9 Scu Private Timer driver
* and hardware using interrupts.
*
* @param	IntcInstancePtr is a pointer to the instance of XScuGic driver.
* @param	TimerInstancePtr is a pointer to the instance of XScuTimer
*		driver.
* @param	Timer_Device_ID is the Device ID of the XScuTimer device.
* @param	TimerIntrId is the Interrupt Id of the XScuTimer device.
*
* @return	XST_SUCCESS if successful, otherwise XST_FAILURE.
*
* @note		None.
*
******************************************************************************/
int Scu_Timer_Setup(XScuTimer * PS_TimerPtr, u16 Timer_Device_ID){

	XScuTimer_Config *ConfigPtr;
    XStatus Status;

	ConfigPtr = XScuTimer_LookupConfig(Timer_Device_ID);
	Status = XScuTimer_CfgInitialize(PS_TimerPtr, ConfigPtr, ConfigPtr->BaseAddr);

	if (Status != XST_SUCCESS) {
		xil_printf("SCU Timer Interrupt initialization Failed\r\n");
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

int Interruption_Setup(XScuGic *XGic_Ptr, XDmaPs *XDma_Ptr) {
	int Status;
	XScuGic_Config *GicConfig;

	/*--------------------------------------------------------------------
	 * Initialize the interrupt controller driver so that it is ready to
	 * use.
	 *------------------------------------------------------------------*/
	GicConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
	if (NULL == GicConfig) {
		return XST_FAILURE;
	}

	Status = XScuGic_CfgInitialize(XGic_Ptr, GicConfig,
			GicConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*------------------------------------------------------------------
	 * Connect the interrupt controller interrupt handler to the hardware
	 * interrupt handling logic in the processor.
	 *----------------------------------------------------------------*/
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT,
			(Xil_ExceptionHandler) XScuGic_InterruptHandler, XGic_Ptr);

	/*--------------------------------------------------------------------
	 * Connect the device driver handlers that will be called when an interrupt
	 * for the device occurs, the device driver handler performs the specific
	 * interrupt processing for the device
	 *------------------------------------------------------------------*/

	//Connect to the Computation done ISR
	/*Status=XScuGic_Connect(XGic_Ptr, COMPUTATION_DONE_INTR,
	 (Xil_ExceptionHandler)Computation_Done_ISR, &XGio);
	 if (Status != XST_SUCCESS) {
	 return XST_FAILURE;
	 }*/

	/*Connect the timer interruption ISR*/
	Status = XScuGic_Connect(XGic_Ptr, TIMER_IRPT_INTR,
			(Xil_ExceptionHandler) Timer_Intr_Handler, (void *)&PS_Timer);

	/* Connect the Fault ISR */
	Status = XScuGic_Connect(XGic_Ptr, DMA_FAULT_INTR,
			(Xil_InterruptHandler) XDmaPs_FaultISR, (void *) XDma_Ptr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/* Connect the Done ISR for all 8 channels of DMA 0 */
	Status = XScuGic_Connect(XGic_Ptr, DMA_DONE_INTR_0,
			(Xil_InterruptHandler) XDmaPs_DoneISR_0, (void *) XDma_Ptr);
	Status |= XScuGic_Connect(XGic_Ptr, DMA_DONE_INTR_1,
			(Xil_InterruptHandler) XDmaPs_DoneISR_1, (void *) XDma_Ptr);
	Status |= XScuGic_Connect(XGic_Ptr, DMA_DONE_INTR_2,
			(Xil_InterruptHandler) XDmaPs_DoneISR_2, (void *) XDma_Ptr);
	Status |= XScuGic_Connect(XGic_Ptr, DMA_DONE_INTR_3,
			(Xil_InterruptHandler) XDmaPs_DoneISR_3, (void *) XDma_Ptr);
	Status |= XScuGic_Connect(XGic_Ptr, DMA_DONE_INTR_4,
			(Xil_InterruptHandler) XDmaPs_DoneISR_4, (void *) XDma_Ptr);
	Status |= XScuGic_Connect(XGic_Ptr, DMA_DONE_INTR_5,
			(Xil_InterruptHandler) XDmaPs_DoneISR_5, (void *) XDma_Ptr);
	Status |= XScuGic_Connect(XGic_Ptr, DMA_DONE_INTR_6,
			(Xil_InterruptHandler) XDmaPs_DoneISR_6, (void *) XDma_Ptr);
	Status |= XScuGic_Connect(XGic_Ptr, DMA_DONE_INTR_7,
			(Xil_InterruptHandler) XDmaPs_DoneISR_7, (void *) XDma_Ptr);

	if (Status != XST_SUCCESS)
		return XST_FAILURE;

	/*Enable the interrupts for the device*/
	XScuGic_Enable(XGic_Ptr, DMA_DONE_INTR_0);
	XScuGic_Enable(XGic_Ptr, DMA_DONE_INTR_1);
	XScuGic_Enable(XGic_Ptr, DMA_DONE_INTR_2);
	XScuGic_Enable(XGic_Ptr, DMA_DONE_INTR_3);
	XScuGic_Enable(XGic_Ptr, DMA_DONE_INTR_4);
	XScuGic_Enable(XGic_Ptr, DMA_DONE_INTR_5);
	XScuGic_Enable(XGic_Ptr, DMA_DONE_INTR_6);
	XScuGic_Enable(XGic_Ptr, DMA_DONE_INTR_7);
	XScuGic_Enable(XGic_Ptr, DMA_FAULT_INTR);
	XScuGic_Enable(XGic_Ptr, TIMER_IRPT_INTR);
	XScuTimer_EnableInterrupt(&PS_Timer);

	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			(Xil_ExceptionHandler) XScuGic_InterruptHandler, XGic_Ptr);
	Xil_ExceptionEnable();

	return XST_SUCCESS;

}

/*****************************************************************************/
/**
*
* This function is the Interrupt handler for the Timer interrupt of the
* Timer device. It is called on the expiration of the timer counter in
* interrupt context.
*
* @param	CallBackRef is a pointer to the callback function.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
void Timer_Intr_Handler(void *CallBackRef) {
	XScuTimer *PS_TimerPtr = (XScuTimer *) CallBackRef;

	PS_Timer_Flag = 1;
	Overflow_Cnt++;

	if (XScuTimer_IsExpired(PS_TimerPtr)) {
		XScuTimer_ClearInterruptStatus(PS_TimerPtr);
	}
}

void CPU_Compute(){

	PS_Timer_Start();
	Kmean_Kernel();
	printf("Time consumption of ARM computation: %lld!\n\r", PS_Timer_Return());

}



void Kmean_Kernel(){

	int i;
	int j;
	int IM_Centroids[N][D];


	int ARM_Centroids_Sum[N][D];
	int ARM_Centroids_Num[N];

	for(i=0; i<N; i++){
		for(j=0; j<D; j++){
			IM_Centroids[i][j] = Init_Centroids[i][j];
		}
	}

	int it;
	for(it=0; it<IT; it++){

		int dist0;
		int dist1;
		int dist2;
		int dist3;

		for(i=0; i<N; i++){
			ARM_Centroids_Num[i] = 0;
			for(j=0; j<D; j++){
				ARM_Centroids_Sum[i][j] = 0;
			}
		}

		for(i=0; i<S; i++){
			dist0=(Block_Samples[i][0]-IM_Centroids[0][0])*(Block_Samples[i][0]-IM_Centroids[0][0])+ \
					(Block_Samples[i][1]-IM_Centroids[0][1])*(Block_Samples[i][1]-IM_Centroids[0][1]);

			dist1=(Block_Samples[i][0]-IM_Centroids[1][0])*(Block_Samples[i][0]-IM_Centroids[1][0])+ \
					(Block_Samples[i][1]-IM_Centroids[1][1])*(Block_Samples[i][1]-IM_Centroids[1][1]);

			dist2=(Block_Samples[i][0]-IM_Centroids[2][0])*(Block_Samples[i][0]-IM_Centroids[2][0])+ \
					(Block_Samples[i][1]-IM_Centroids[2][1])*(Block_Samples[i][1]-IM_Centroids[2][1]);

			dist3=(Block_Samples[i][0]-IM_Centroids[3][0])*(Block_Samples[i][0]-IM_Centroids[3][0])+ \
					(Block_Samples[i][1]-IM_Centroids[3][1])*(Block_Samples[i][1]-IM_Centroids[3][1]);

			if(dist0<=dist1 && dist0<=dist2 && dist0<=dist3){
				ARM_Centroids_Num[0] += 1;
				ARM_Centroids_Sum[0][0] += Block_Samples[i][0];
				ARM_Centroids_Sum[0][1] += Block_Samples[i][1];
			}

			if(dist1<dist0 && dist1<=dist2 && dist1<=dist3){
				ARM_Centroids_Num[1] += 1;
				ARM_Centroids_Sum[1][0] += Block_Samples[i][0];
				ARM_Centroids_Sum[1][1] += Block_Samples[i][1];
			}

			if(dist2<dist0 && dist2<dist1 && dist2<=dist3){
				ARM_Centroids_Num[2] += 1;
				ARM_Centroids_Sum[2][0] += Block_Samples[i][0];
				ARM_Centroids_Sum[2][1] += Block_Samples[i][1];
			}

			if(dist3<dist0 && dist3<dist1 && dist3<dist2){
				ARM_Centroids_Num[3] += 1;
				ARM_Centroids_Sum[3][0] += Block_Samples[i][0];
				ARM_Centroids_Sum[3][1] += Block_Samples[i][1];
			}
		}

		//Refresh initial centroids
		for(i=0; i<N; i++){
			for(j=0; j<D; j++){
				IM_Centroids[i][j] = ARM_Centroids_Sum[i][j]/ARM_Centroids_Num[i];
			}
		}

	}

	Search_Nearest_Nodes(IM_Centroids, ARM_Calculated_Centroids);

}

void Search_Nearest_Nodes(int Avg_Centroids[N][D], int Calculated_Centroids[N][D]){

	int i;
	int j;
    for(i=0; i<N; i++){

        int dist[S];
        int nid=0;
        int min=(Avg_Centroids[i][0]-Block_Samples[0][0])*(Avg_Centroids[i][0]-Block_Samples[0][0]);
        min+=(Avg_Centroids[i][1]-Block_Samples[0][1])*(Avg_Centroids[i][1]-Block_Samples[0][1]);

        for(j=1; j<S; j++){
            dist[j]=(Avg_Centroids[i][0]-Block_Samples[j][0])*(Avg_Centroids[i][0]-Block_Samples[j][0]);
            dist[j]+=(Avg_Centroids[i][1]-Block_Samples[j][1])*(Avg_Centroids[i][1]-Block_Samples[j][1]);
            if(min>dist[j]){
                nid=j;
                min=dist[j];
            }
        }

        Calculated_Centroids[i][0]=Block_Samples[nid][0];
        Calculated_Centroids[i][1]=Block_Samples[nid][1];
    }

}