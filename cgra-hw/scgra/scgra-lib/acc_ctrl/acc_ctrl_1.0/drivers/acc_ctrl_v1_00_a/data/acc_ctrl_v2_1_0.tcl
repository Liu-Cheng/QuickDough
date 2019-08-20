

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "acc_ctrl" "NUM_INSTANCES" "DEVICE_ID"  "C_AXI_Acc_Ctrl_BASEADDR" "C_AXI_Acc_Ctrl_HIGHADDR"
}
