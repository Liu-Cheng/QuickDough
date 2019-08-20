##############################################################################
## Filename:          C:\Users\Liucheng\Documents\scgra_high_freq\scgra2x2_high_freq\scgra2x2_high_freq.srcs\sources_1\edk\base_sys/drivers/acc_ctrl_v1_00_a/data/acc_ctrl_v2_1_0.tcl
## Description:       Microprocess Driver Command (tcl)
## Date:              Fri Dec 20 15:19:27 2013 (by Create and Import Peripheral Wizard)
##############################################################################

#uses "xillib.tcl"

proc generate {drv_handle} {
  xdefine_include_file $drv_handle "xparameters.h" "acc_ctrl" "NUM_INSTANCES" "DEVICE_ID" "C_BASEADDR" "C_HIGHADDR" 
}
