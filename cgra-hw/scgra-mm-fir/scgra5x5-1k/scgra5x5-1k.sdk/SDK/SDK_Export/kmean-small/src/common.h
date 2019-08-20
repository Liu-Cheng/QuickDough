/*
 * common.h
 *
 *  Created on: Jul 19, 2013
 *      Author: Liucheng
 */

#ifndef COMMON_H_
#define COMMON_H_

#include "sleep.h"
#include "xparameters.h"
#include "xil_types.h"
#include "xil_assert.h"
#include "xil_io.h"
#include "xil_exception.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include "xscugic.h"
#include "xdmaps.h"
#include "src_ctrl_words.h"
#include "result_ctrl_words.h"
#include "io.h"

#define DMA_DEVICE_ID 			XPAR_PS7_DMA_S_DEVICE_ID
#define INTC_DEVICE_ID			XPAR_PS7_SCUGIC_0_DEVICE_ID
#define COMPUTATION_DONE_INTR   XPAR_FABRIC_AXI_GPIO_0_IP2INTC_IRPT_INTR
#define DMA_DONE_INTR_0			XPAR_XDMAPS_0_DONE_INTR_0
#define DMA_DONE_INTR_1			XPAR_XDMAPS_0_DONE_INTR_1
#define DMA_DONE_INTR_2			XPAR_XDMAPS_0_DONE_INTR_2
#define DMA_DONE_INTR_3			XPAR_XDMAPS_0_DONE_INTR_3
#define DMA_DONE_INTR_4			XPAR_XDMAPS_0_DONE_INTR_4
#define DMA_DONE_INTR_5			XPAR_XDMAPS_0_DONE_INTR_5
#define DMA_DONE_INTR_6			XPAR_XDMAPS_0_DONE_INTR_6
#define DMA_DONE_INTR_7			XPAR_XDMAPS_0_DONE_INTR_7
#define DMA_FAULT_INTR			XPAR_XDMAPS_0_FAULT_INTR

#define TIMER_DEVICE_ID		    XPAR_SCUTIMER_DEVICE_ID
#define TIMER_IRPT_INTR		    XPAR_SCUTIMER_INTR
#define TIMER_LOAD_VALUE	    60000000

#define INST_NUM	            280
#define N                       4
#define D                       2
#define S                       20
#define IT                      40

static u32 SW_IO_Addr = XPAR_ACC_CTRL_0_BASEADDR;
static u32 HW_IO_Addr = XPAR_ACC_CTRL_0_BASEADDR + 4;
static u32 Bram0_Base_Addr = XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR;
static u32 Bram1_Base_Addr = XPAR_AXI_BRAM_CTRL_1_S_AXI_BASEADDR;
static u32 Bram2_Base_Addr = XPAR_AXI_BRAM_CTRL_2_S_AXI_BASEADDR;
static u32 Bram3_Base_Addr = XPAR_AXI_BRAM_CTRL_3_S_AXI_BASEADDR;

#endif /* COMMON_H_ */
