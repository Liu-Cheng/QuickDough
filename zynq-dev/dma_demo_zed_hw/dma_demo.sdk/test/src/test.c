#include "xparameters.h"
#include "xil_exception.h"
#include "xscugic.h"
#include "xil_types.h"
#include "stdio.h"

#define SRC_ADDR       0x1000fff0
#define DST_ADDR       0x1200ff00
#define FACE_BASE_ADDR 0x43C00000
#define LEN            (1*1024*1024)
#define IRQ_NUM        61

XScuGic InterruptController;
static XScuGic_Config *GicConfig;
static int dma_done = 0;

void dma_isr(void *baseaddr_p){
	print("Data transmission is done! \r\n");
	dma_done = 1;
	Xil_Out32(FACE_BASE_ADDR + 0x1C, 1);
}

void face_init(){
	// To be added
	Xil_Out32(FACE_BASE_ADDR + 0x4, SRC_ADDR);
	Xil_Out32(FACE_BASE_ADDR + 0x8, DST_ADDR);
	Xil_Out32(FACE_BASE_ADDR + 0xC, LEN);
	Xil_Out32(FACE_BASE_ADDR + 0x14, 1);
	Xil_Out32(FACE_BASE_ADDR + 0x18, 1);
}

void face_start(){
	// To be added
	Xil_Out32(FACE_BASE_ADDR, 1);
	Xil_Out32(FACE_BASE_ADDR, 0);
}

void mem_set(u32 start_addr, unsigned int byte_num, u32 val){
	int i;
	u32 addr = start_addr;
	for(i = 0; i < byte_num/4; i++){
		Xil_Out32(addr, val);
		//printf("Write to [%x] = %d \n", addr, val);
		addr += 4;
	}
}

int Interrupt_Init(){
	int Status;
	/*
	 * Initialize the interrupt controller driver so that it is ready to
	 * use.
	 */
	Xil_ExceptionInit();
	GicConfig = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
	if (NULL == GicConfig) {
		return XST_FAILURE;
	}

	Status = XScuGic_CfgInitialize(&InterruptController, GicConfig, GicConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Connect the interrupt controller interrupt handler to the hardware
	 * interrupt handling logic in the ARM processor.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT, (Xil_ExceptionHandler) XScuGic_InterruptHandler, (void *) &InterruptController);

	/*
	 * Connect a device driver handler that will be called when an
	 * interrupt for the device occurs, the device driver handler performs
	 * the specific interrupt processing for the device
	 */
	Status = XScuGic_Connect(&InterruptController, IRQ_NUM, (Xil_ExceptionHandler)dma_isr, (void *)&InterruptController);

	XScuGic_Enable(&InterruptController, IRQ_NUM);

	/*
	 * Enable interrupts in the ARM
	 */
	Xil_ExceptionEnable();

	//Only used for edge sensitive Interrupts
	XScuGic_SetPriorityTriggerType(&InterruptController, IRQ_NUM, 0xa0, 3);

	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;

}

int main(){

	int xstatus;
	int i;

	//Xil_DCacheDisable();
	printf("\nEnter main function. \n\r");
	mem_set(SRC_ADDR, LEN, 0x8);
	Xil_DCacheFlushRange(SRC_ADDR, LEN);
	mem_set(DST_ADDR, LEN, 0);
	Xil_DCacheFlushRange(DST_ADDR, LEN);


	xstatus = Interrupt_Init();
	if(xstatus != XST_SUCCESS){
		return XST_FAILURE;
	}

	face_init();
	face_start();

	while(dma_done != 1);

	printf("End of the data transmission! \n\r");

	u32 src_addr = SRC_ADDR;
	u32 dst_addr = DST_ADDR;
	for(i = 0; i < LEN/4; i++){
		//printf("src[%x] = %x, dst[%x] = %x \n", src_addr, Xil_In32(src_addr), dst_addr, Xil_In32(dst_addr));
		if(Xil_In32(src_addr) != Xil_In32(dst_addr)){
			printf("src[%x] = %x, dst[%x] = %x \n", src_addr, Xil_In32(src_addr), dst_addr, Xil_In32(dst_addr));
			printf("Data transmission error.\n");
			return -1;
		}
		src_addr += 4;
		dst_addr += 4;
	}

	printf("Data transmission is successful. \n");
	printf("data[0] = %x \n", Xil_In32(FACE_BASE_ADDR));


	return 0;

}