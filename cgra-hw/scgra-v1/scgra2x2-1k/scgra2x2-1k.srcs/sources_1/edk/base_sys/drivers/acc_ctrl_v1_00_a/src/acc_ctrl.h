/*****************************************************************************
* Filename:          C:\Users\Liucheng\Documents\scgra_high_freq\scgra2x2_high_freq\scgra2x2_high_freq.srcs\sources_1\edk\base_sys/drivers/acc_ctrl_v1_00_a/src/acc_ctrl.h
* Version:           1.00.a
* Description:       acc_ctrl Driver Header File
* Date:              Fri Dec 20 15:19:27 2013 (by Create and Import Peripheral Wizard)
*****************************************************************************/

#ifndef ACC_CTRL_H
#define ACC_CTRL_H

/***************************** Include Files *******************************/

#include "xbasic_types.h"
#include "xstatus.h"
#include "xil_io.h"

/************************** Constant Definitions ***************************/


/**
 * User Logic Slave Space Offsets
 * -- SLV_REG0 : user logic slave module register 0
 * -- SLV_REG1 : user logic slave module register 1
 */
#define ACC_CTRL_USER_SLV_SPACE_OFFSET (0x00000000)
#define ACC_CTRL_SLV_REG0_OFFSET (ACC_CTRL_USER_SLV_SPACE_OFFSET + 0x00000000)
#define ACC_CTRL_SLV_REG1_OFFSET (ACC_CTRL_USER_SLV_SPACE_OFFSET + 0x00000004)

/**************************** Type Definitions *****************************/


/***************** Macros (Inline Functions) Definitions *******************/

/**
 *
 * Write a value to a ACC_CTRL register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the ACC_CTRL device.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void ACC_CTRL_mWriteReg(Xuint32 BaseAddress, unsigned RegOffset, Xuint32 Data)
 *
 */
#define ACC_CTRL_mWriteReg(BaseAddress, RegOffset, Data) \
 	Xil_Out32((BaseAddress) + (RegOffset), (Xuint32)(Data))

/**
 *
 * Read a value from a ACC_CTRL register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the ACC_CTRL device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	Xuint32 ACC_CTRL_mReadReg(Xuint32 BaseAddress, unsigned RegOffset)
 *
 */
#define ACC_CTRL_mReadReg(BaseAddress, RegOffset) \
 	Xil_In32((BaseAddress) + (RegOffset))


/**
 *
 * Write/Read 32 bit value to/from ACC_CTRL user logic slave registers.
 *
 * @param   BaseAddress is the base address of the ACC_CTRL device.
 * @param   RegOffset is the offset from the slave register to write to or read from.
 * @param   Value is the data written to the register.
 *
 * @return  Data is the data from the user logic slave register.
 *
 * @note
 * C-style signature:
 * 	void ACC_CTRL_mWriteSlaveRegn(Xuint32 BaseAddress, unsigned RegOffset, Xuint32 Value)
 * 	Xuint32 ACC_CTRL_mReadSlaveRegn(Xuint32 BaseAddress, unsigned RegOffset)
 *
 */
#define ACC_CTRL_mWriteSlaveReg0(BaseAddress, RegOffset, Value) \
 	Xil_Out32((BaseAddress) + (ACC_CTRL_SLV_REG0_OFFSET) + (RegOffset), (Xuint32)(Value))
#define ACC_CTRL_mWriteSlaveReg1(BaseAddress, RegOffset, Value) \
 	Xil_Out32((BaseAddress) + (ACC_CTRL_SLV_REG1_OFFSET) + (RegOffset), (Xuint32)(Value))

#define ACC_CTRL_mReadSlaveReg0(BaseAddress, RegOffset) \
 	Xil_In32((BaseAddress) + (ACC_CTRL_SLV_REG0_OFFSET) + (RegOffset))
#define ACC_CTRL_mReadSlaveReg1(BaseAddress, RegOffset) \
 	Xil_In32((BaseAddress) + (ACC_CTRL_SLV_REG1_OFFSET) + (RegOffset))

/************************** Function Prototypes ****************************/


/**
 *
 * Run a self-test on the driver/device. Note this may be a destructive test if
 * resets of the device are performed.
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   baseaddr_p is the base address of the ACC_CTRL instance to be worked on.
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work.
 * @note    Self test may fail if data memory and device are not on the same bus.
 *
 */
XStatus ACC_CTRL_SelfTest(void * baseaddr_p);
/**
*  Defines the number of registers available for read and write*/
#define TEST_AXI_LITE_USER_NUM_REG 2


#endif /** ACC_CTRL_H */
