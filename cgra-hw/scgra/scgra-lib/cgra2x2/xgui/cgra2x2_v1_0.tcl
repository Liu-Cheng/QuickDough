#Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
	set Page0 [ ipgui::add_page $IPINST  -name "Page 0" -layout vertical]
	set Component_Name [ ipgui::add_param  $IPINST  -parent  $Page0  -name Component_Name ]
	set DWIDTH [ipgui::add_param $IPINST -parent $Page0 -name DWIDTH]
	set BYTE_LEN [ipgui::add_param $IPINST -parent $Page0 -name BYTE_LEN]
	set SYS_DWIDTH [ipgui::add_param $IPINST -parent $Page0 -name SYS_DWIDTH]
}

proc update_PARAM_VALUE.DWIDTH { PARAM_VALUE.DWIDTH } {
	# Procedure called to update DWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DWIDTH { PARAM_VALUE.DWIDTH } {
	# Procedure called to validate DWIDTH
	return true
}

proc update_PARAM_VALUE.BYTE_LEN { PARAM_VALUE.BYTE_LEN } {
	# Procedure called to update BYTE_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BYTE_LEN { PARAM_VALUE.BYTE_LEN } {
	# Procedure called to validate BYTE_LEN
	return true
}

proc update_PARAM_VALUE.SYS_DWIDTH { PARAM_VALUE.SYS_DWIDTH } {
	# Procedure called to update SYS_DWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SYS_DWIDTH { PARAM_VALUE.SYS_DWIDTH } {
	# Procedure called to validate SYS_DWIDTH
	return true
}


proc update_MODELPARAM_VALUE.SYS_DWIDTH { MODELPARAM_VALUE.SYS_DWIDTH PARAM_VALUE.SYS_DWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SYS_DWIDTH}] ${MODELPARAM_VALUE.SYS_DWIDTH}
}

proc update_MODELPARAM_VALUE.BYTE_LEN { MODELPARAM_VALUE.BYTE_LEN PARAM_VALUE.BYTE_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BYTE_LEN}] ${MODELPARAM_VALUE.BYTE_LEN}
}

proc update_MODELPARAM_VALUE.DWIDTH { MODELPARAM_VALUE.DWIDTH PARAM_VALUE.DWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DWIDTH}] ${MODELPARAM_VALUE.DWIDTH}
}

