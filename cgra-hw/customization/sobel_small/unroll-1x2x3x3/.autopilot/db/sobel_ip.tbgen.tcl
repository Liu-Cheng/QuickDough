set moduleName sobel_ip
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName sobel_ip
set C_modelType { void 0 }
set C_modelArgList { 
	{ sub_in int 32 regular {array 274 { 1 } 1 1 }  }
	{ sub_out int 32 regular {array 256 { 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "rtlName" : "sub_in","bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sub_in","cData": "int","cArray": [{"low" : 0,"up" : 273,"step" : 1}]}]}]} , 
 	{ "rtlName" : "sub_out","bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sub_out","cData": "int","cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sub_in_address0 sc_out sc_lv 9 signal 0 } 
	{ sub_in_ce0 sc_out sc_logic 1 signal 0 } 
	{ sub_in_q0 sc_in sc_lv 32 signal 0 } 
	{ sub_out_address0 sc_out sc_lv 8 signal 1 } 
	{ sub_out_ce0 sc_out sc_logic 1 signal 1 } 
	{ sub_out_we0 sc_out sc_logic 1 signal 1 } 
	{ sub_out_d0 sc_out sc_lv 32 signal 1 } 
}

set Spec2ImplPortList { 
	sub_in { ap_memory {  { sub_in_address0 mem_address 1 9 }  { sub_in_ce0 mem_ce 1 1 }  { sub_in_q0 mem_dout 0 32 } } }
	sub_out { ap_memory {  { sub_out_address0 mem_address 1 8 }  { sub_out_ce0 mem_ce 1 1 }  { sub_out_we0 mem_we 1 1 }  { sub_out_d0 mem_din 1 32 } } }
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
