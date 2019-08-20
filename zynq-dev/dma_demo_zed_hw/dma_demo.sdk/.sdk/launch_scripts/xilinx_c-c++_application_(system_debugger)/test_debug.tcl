connect -url tcp:127.0.0.1:3121
source D:/projects/prj2016/dma_demo/dma_demo.sdk/base_sys_wrapper_hw_platform_0/ps7_init.tcl
targets -set -filter {name =~"APU" && jtag_cable_name =~ "Digilent Zed 210248650428"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248650428" && level==0} -index 1
fpga -file D:/projects/prj2016/dma_demo/dma_demo.sdk/base_sys_wrapper_hw_platform_0/base_sys_wrapper.bit
targets -set -filter {name =~"APU" && jtag_cable_name =~ "Digilent Zed 210248650428"} -index 0
loadhw D:/projects/prj2016/dma_demo/dma_demo.sdk/base_sys_wrapper_hw_platform_0/system.hdf
targets -set -filter {name =~"APU" && jtag_cable_name =~ "Digilent Zed 210248650428"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248650428"} -index 0
dow D:/projects/prj2016/dma_demo/dma_demo.sdk/test/Debug/test.elf
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248650428"} -index 0
con
