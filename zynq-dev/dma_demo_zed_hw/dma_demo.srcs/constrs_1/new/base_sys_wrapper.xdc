create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 2048 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list base_sys_i/processing_system7_0/inst/FCLK_CLK0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 8 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {base_sys_i/usr_dma_0_M0_AXI_ARLEN[0]} {base_sys_i/usr_dma_0_M0_AXI_ARLEN[1]} {base_sys_i/usr_dma_0_M0_AXI_ARLEN[2]} {base_sys_i/usr_dma_0_M0_AXI_ARLEN[3]} {base_sys_i/usr_dma_0_M0_AXI_ARLEN[4]} {base_sys_i/usr_dma_0_M0_AXI_ARLEN[5]} {base_sys_i/usr_dma_0_M0_AXI_ARLEN[6]} {base_sys_i/usr_dma_0_M0_AXI_ARLEN[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 32 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {base_sys_i/usr_dma_0_M0_AXI_ARADDR[0]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[1]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[2]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[3]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[4]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[5]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[6]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[7]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[8]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[9]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[10]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[11]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[12]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[13]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[14]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[15]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[16]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[17]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[18]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[19]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[20]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[21]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[22]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[23]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[24]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[25]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[26]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[27]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[28]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[29]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[30]} {base_sys_i/usr_dma_0_M0_AXI_ARADDR[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 2 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {base_sys_i/usr_dma_0_M0_AXI_BRESP[0]} {base_sys_i/usr_dma_0_M0_AXI_BRESP[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 32 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {base_sys_i/usr_dma_0_M0_AXI_WDATA[0]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[1]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[2]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[3]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[4]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[5]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[6]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[7]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[8]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[9]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[10]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[11]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[12]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[13]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[14]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[15]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[16]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[17]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[18]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[19]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[20]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[21]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[22]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[23]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[24]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[25]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[26]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[27]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[28]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[29]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[30]} {base_sys_i/usr_dma_0_M0_AXI_WDATA[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 32 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {base_sys_i/usr_dma_0_M0_AXI_RDATA[0]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[1]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[2]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[3]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[4]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[5]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[6]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[7]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[8]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[9]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[10]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[11]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[12]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[13]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[14]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[15]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[16]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[17]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[18]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[19]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[20]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[21]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[22]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[23]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[24]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[25]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[26]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[27]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[28]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[29]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[30]} {base_sys_i/usr_dma_0_M0_AXI_RDATA[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 32 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {base_sys_i/usr_dma_0_M0_AXI_AWADDR[0]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[1]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[2]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[3]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[4]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[5]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[6]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[7]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[8]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[9]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[10]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[11]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[12]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[13]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[14]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[15]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[16]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[17]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[18]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[19]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[20]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[21]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[22]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[23]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[24]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[25]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[26]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[27]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[28]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[29]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[30]} {base_sys_i/usr_dma_0_M0_AXI_AWADDR[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 8 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {base_sys_i/usr_dma_0_M0_AXI_AWLEN[0]} {base_sys_i/usr_dma_0_M0_AXI_AWLEN[1]} {base_sys_i/usr_dma_0_M0_AXI_AWLEN[2]} {base_sys_i/usr_dma_0_M0_AXI_AWLEN[3]} {base_sys_i/usr_dma_0_M0_AXI_AWLEN[4]} {base_sys_i/usr_dma_0_M0_AXI_AWLEN[5]} {base_sys_i/usr_dma_0_M0_AXI_AWLEN[6]} {base_sys_i/usr_dma_0_M0_AXI_AWLEN[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 2 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {base_sys_i/usr_dma_0_M0_AXI_RRESP[0]} {base_sys_i/usr_dma_0_M0_AXI_RRESP[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list base_sys_i/usr_dma_0_interrupt]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list base_sys_i/usr_dma_0_M0_AXI_ARREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list base_sys_i/usr_dma_0_M0_AXI_ARVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list base_sys_i/usr_dma_0_M0_AXI_AWREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list base_sys_i/usr_dma_0_M0_AXI_AWVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list base_sys_i/usr_dma_0_M0_AXI_BID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list base_sys_i/usr_dma_0_M0_AXI_BREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list base_sys_i/usr_dma_0_M0_AXI_BVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list base_sys_i/usr_dma_0_M0_AXI_RID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list base_sys_i/usr_dma_0_M0_AXI_RLAST]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 1 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list base_sys_i/usr_dma_0_M0_AXI_RREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 1 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list base_sys_i/usr_dma_0_M0_AXI_RVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 1 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list base_sys_i/usr_dma_0_M0_AXI_WLAST]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 1 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list base_sys_i/usr_dma_0_M0_AXI_WREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe22]
set_property port_width 1 [get_debug_ports u_ila_0/probe22]
connect_debug_port u_ila_0/probe22 [get_nets [list base_sys_i/usr_dma_0_M0_AXI_WVALID]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]
