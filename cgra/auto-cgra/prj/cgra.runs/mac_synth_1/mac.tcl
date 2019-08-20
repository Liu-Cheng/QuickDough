# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7vx690tffg1761-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/liucheng/gitrepo/QuickDough/cgra/auto-cgra/prj/cgra.cache/wt [current_project]
set_property parent.project_path /home/liucheng/gitrepo/QuickDough/cgra/auto-cgra/prj/cgra.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:vc709:part0:1.8 [current_project]
read_ip -quiet /home/liucheng/gitrepo/QuickDough/cgra/auto-cgra/prj/cgra.srcs/sources_1/ip/mac/mac.xci
set_property is_locked true [get_files /home/liucheng/gitrepo/QuickDough/cgra/auto-cgra/prj/cgra.srcs/sources_1/ip/mac/mac.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top mac -part xc7vx690tffg1761-2 -mode out_of_context

rename_ref -prefix_all mac_

write_checkpoint -force -noxdef mac.dcp

catch { report_utilization -file mac_utilization_synth.rpt -pb mac_utilization_synth.pb }

if { [catch {
  file copy -force /home/liucheng/gitrepo/QuickDough/cgra/auto-cgra/prj/cgra.runs/mac_synth_1/mac.dcp /home/liucheng/gitrepo/QuickDough/cgra/auto-cgra/prj/cgra.srcs/sources_1/ip/mac/mac.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub /home/liucheng/gitrepo/QuickDough/cgra/auto-cgra/prj/cgra.srcs/sources_1/ip/mac/mac_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub /home/liucheng/gitrepo/QuickDough/cgra/auto-cgra/prj/cgra.srcs/sources_1/ip/mac/mac_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim /home/liucheng/gitrepo/QuickDough/cgra/auto-cgra/prj/cgra.srcs/sources_1/ip/mac/mac_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim /home/liucheng/gitrepo/QuickDough/cgra/auto-cgra/prj/cgra.srcs/sources_1/ip/mac/mac_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if {[file isdir /home/liucheng/gitrepo/QuickDough/cgra/auto-cgra/prj/cgra.ip_user_files/ip/mac]} {
  catch { 
    file copy -force /home/liucheng/gitrepo/QuickDough/cgra/auto-cgra/prj/cgra.srcs/sources_1/ip/mac/mac_stub.v /home/liucheng/gitrepo/QuickDough/cgra/auto-cgra/prj/cgra.ip_user_files/ip/mac
  }
}

if {[file isdir /home/liucheng/gitrepo/QuickDough/cgra/auto-cgra/prj/cgra.ip_user_files/ip/mac]} {
  catch { 
    file copy -force /home/liucheng/gitrepo/QuickDough/cgra/auto-cgra/prj/cgra.srcs/sources_1/ip/mac/mac_stub.vhdl /home/liucheng/gitrepo/QuickDough/cgra/auto-cgra/prj/cgra.ip_user_files/ip/mac
  }
}