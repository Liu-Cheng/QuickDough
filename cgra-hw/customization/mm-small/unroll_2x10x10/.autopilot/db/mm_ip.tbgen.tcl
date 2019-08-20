set moduleName mm_ip
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName mm_ip
set C_modelType { void 0 }
set C_modelArgList { 
	{ in_r int 32 regular {array 32768 { 1 } 1 1 }  }
	{ out_r int 32 regular {array 16384 { 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "rtlName" : "in_r","bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in","cData": "int32","cArray": [{"low" : 0,"up" : 255,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "rtlName" : "out_r","bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out","cData": "int32","cArray": [{"low" : 0,"up" : 127,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_r_address0 sc_out sc_lv 15 signal 0 } 
	{ in_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ in_r_q0 sc_in sc_lv 32 signal 0 } 
	{ out_r_address0 sc_out sc_lv 14 signal 1 } 
	{ out_r_ce0 sc_out sc_logic 1 signal 1 } 
	{ out_r_we0 sc_out sc_logic 1 signal 1 } 
	{ out_r_d0 sc_out sc_lv 32 signal 1 } 
}

set Spec2ImplPortList { 
	in_r { ap_memory {  { in_r_address0 mem_address 1 15 }  { in_r_ce0 mem_ce 1 1 }  { in_r_q0 mem_dout 0 32 } } }
	out_r { ap_memory {  { out_r_address0 mem_address 1 14 }  { out_r_ce0 mem_ce 1 1 }  { out_r_we0 mem_we 1 1 }  { out_r_d0 mem_din 1 32 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
