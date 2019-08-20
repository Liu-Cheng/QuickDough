# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {HDL-1065} -limit 10000
create_project -in_memory -part xc7z020clg484-1
set_property target_language Verilog [current_project]
set_property board em.avnet.com:zynq:zed:d [current_project]
set_param project.compositeFile.enableAutoGeneration 0

read_ip D:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/ip/TDP_Data_Mem/TDP_Data_Mem.xci
set_property used_in_implementation false [get_files d:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/ip/TDP_Data_Mem/TDP_Data_Mem.dcp]
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property is_locked true [get_files D:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/ip/TDP_Data_Mem/TDP_Data_Mem.xci]

read_ip D:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/ip/SP_Inst_Mem/SP_Inst_Mem.xci
set_property used_in_implementation false [get_files d:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/ip/SP_Inst_Mem/SP_Inst_Mem.dcp]
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property is_locked true [get_files D:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/ip/SP_Inst_Mem/SP_Inst_Mem.xci]

read_verilog {
  D:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/MulAdd.v
  D:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/Inst_Mem.v
  D:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/Data_Mem.v
  D:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/ALU.v
  D:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/PEIO.v
  D:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/PE.v
  D:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/Torus2x2.v
  D:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/BramIF.v
  D:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/cgra2x2.v
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
read_xdc dont_buffer.xdc
set_property used_in_implementation false [get_files dont_buffer.xdc]
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.data/wt [current_project]
set_property parent.project_dir D:/minibench/scgra/scgra-lib/cgra2x2 [current_project]
synth_design -top cgra2x2 -part xc7z020clg484-1
write_checkpoint cgra2x2.dcp
report_utilization -file cgra2x2_utilization_synth.rpt -pb cgra2x2_utilization_synth.pb