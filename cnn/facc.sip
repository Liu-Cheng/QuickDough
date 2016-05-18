set_global_assignment -entity "facc" -library "lib_facc" -name IP_TOOL_NAME "altera_fp_acc_custom"
set_global_assignment -entity "facc" -library "lib_facc" -name IP_TOOL_VERSION "15.1"
set_global_assignment -entity "facc" -library "lib_facc" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_facc" -name SPD_FILE [file join $::quartus(sip_path) "facc.spd"]

set_global_assignment -library "lib_facc" -name MISC_FILE [file join $::quartus(sip_path) "facc_sim/dspba_library_package.vhd"]
set_global_assignment -library "lib_facc" -name MISC_FILE [file join $::quartus(sip_path) "facc_sim/dspba_library.vhd"]
set_global_assignment -library "lib_facc" -name MISC_FILE [file join $::quartus(sip_path) "facc_sim/facc.vhd"]
