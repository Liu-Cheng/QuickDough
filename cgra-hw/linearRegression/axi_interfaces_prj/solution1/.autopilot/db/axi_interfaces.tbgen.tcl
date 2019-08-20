set moduleName axi_interfaces
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set pipeII 128
set pipeLatency 237
set C_modelName {axi_interfaces}
set C_modelType { void 0 }
set C_modelArgList { 
	{ doutc_0 int 32 regular {array 128 { 0 0 } 0 1 }  }
	{ doutc_1 int 32 regular {array 128 { 0 0 } 0 1 }  }
	{ dina_0 int 32 regular {array 128 { 1 1 } 1 1 }  }
	{ dina_1 int 32 regular {array 128 { 1 1 } 1 1 }  }
	{ dinb_0 int 32 regular {array 128 { 1 1 } 1 1 }  }
	{ dinb_1 int 32 regular {array 128 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "doutc_0", "interface" : "memory", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "doutc","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 254,"step" : 2}]}]}]} , 
 	{ "Name" : "doutc_1", "interface" : "memory", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "doutc","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 255,"step" : 2}]}]}]} , 
 	{ "Name" : "dina_0", "interface" : "memory", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dina","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 254,"step" : 2}]}]}]} , 
 	{ "Name" : "dina_1", "interface" : "memory", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dina","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 255,"step" : 2}]}]}]} , 
 	{ "Name" : "dinb_0", "interface" : "memory", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dinb","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 254,"step" : 2}]}]}]} , 
 	{ "Name" : "dinb_1", "interface" : "memory", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dinb","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 255,"step" : 2}]}]}]} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ doutc_0_address0 sc_out sc_lv 7 signal 0 } 
	{ doutc_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ doutc_0_we0 sc_out sc_logic 1 signal 0 } 
	{ doutc_0_d0 sc_out sc_lv 32 signal 0 } 
	{ doutc_0_address1 sc_out sc_lv 7 signal 0 } 
	{ doutc_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ doutc_0_we1 sc_out sc_logic 1 signal 0 } 
	{ doutc_0_d1 sc_out sc_lv 32 signal 0 } 
	{ doutc_1_address0 sc_out sc_lv 7 signal 1 } 
	{ doutc_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ doutc_1_we0 sc_out sc_logic 1 signal 1 } 
	{ doutc_1_d0 sc_out sc_lv 32 signal 1 } 
	{ doutc_1_address1 sc_out sc_lv 7 signal 1 } 
	{ doutc_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ doutc_1_we1 sc_out sc_logic 1 signal 1 } 
	{ doutc_1_d1 sc_out sc_lv 32 signal 1 } 
	{ dina_0_address0 sc_out sc_lv 7 signal 2 } 
	{ dina_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ dina_0_q0 sc_in sc_lv 32 signal 2 } 
	{ dina_0_address1 sc_out sc_lv 7 signal 2 } 
	{ dina_0_ce1 sc_out sc_logic 1 signal 2 } 
	{ dina_0_q1 sc_in sc_lv 32 signal 2 } 
	{ dina_1_address0 sc_out sc_lv 7 signal 3 } 
	{ dina_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ dina_1_q0 sc_in sc_lv 32 signal 3 } 
	{ dina_1_address1 sc_out sc_lv 7 signal 3 } 
	{ dina_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ dina_1_q1 sc_in sc_lv 32 signal 3 } 
	{ dinb_0_address0 sc_out sc_lv 7 signal 4 } 
	{ dinb_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ dinb_0_q0 sc_in sc_lv 32 signal 4 } 
	{ dinb_0_address1 sc_out sc_lv 7 signal 4 } 
	{ dinb_0_ce1 sc_out sc_logic 1 signal 4 } 
	{ dinb_0_q1 sc_in sc_lv 32 signal 4 } 
	{ dinb_1_address0 sc_out sc_lv 7 signal 5 } 
	{ dinb_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ dinb_1_q0 sc_in sc_lv 32 signal 5 } 
	{ dinb_1_address1 sc_out sc_lv 7 signal 5 } 
	{ dinb_1_ce1 sc_out sc_logic 1 signal 5 } 
	{ dinb_1_q1 sc_in sc_lv 32 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "doutc_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "doutc_0", "role": "address0" }} , 
 	{ "name": "doutc_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "doutc_0", "role": "ce0" }} , 
 	{ "name": "doutc_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "doutc_0", "role": "we0" }} , 
 	{ "name": "doutc_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "doutc_0", "role": "d0" }} , 
 	{ "name": "doutc_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "doutc_0", "role": "address1" }} , 
 	{ "name": "doutc_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "doutc_0", "role": "ce1" }} , 
 	{ "name": "doutc_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "doutc_0", "role": "we1" }} , 
 	{ "name": "doutc_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "doutc_0", "role": "d1" }} , 
 	{ "name": "doutc_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "doutc_1", "role": "address0" }} , 
 	{ "name": "doutc_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "doutc_1", "role": "ce0" }} , 
 	{ "name": "doutc_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "doutc_1", "role": "we0" }} , 
 	{ "name": "doutc_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "doutc_1", "role": "d0" }} , 
 	{ "name": "doutc_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "doutc_1", "role": "address1" }} , 
 	{ "name": "doutc_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "doutc_1", "role": "ce1" }} , 
 	{ "name": "doutc_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "doutc_1", "role": "we1" }} , 
 	{ "name": "doutc_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "doutc_1", "role": "d1" }} , 
 	{ "name": "dina_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "dina_0", "role": "address0" }} , 
 	{ "name": "dina_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dina_0", "role": "ce0" }} , 
 	{ "name": "dina_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dina_0", "role": "q0" }} , 
 	{ "name": "dina_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "dina_0", "role": "address1" }} , 
 	{ "name": "dina_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dina_0", "role": "ce1" }} , 
 	{ "name": "dina_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dina_0", "role": "q1" }} , 
 	{ "name": "dina_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "dina_1", "role": "address0" }} , 
 	{ "name": "dina_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dina_1", "role": "ce0" }} , 
 	{ "name": "dina_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dina_1", "role": "q0" }} , 
 	{ "name": "dina_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "dina_1", "role": "address1" }} , 
 	{ "name": "dina_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dina_1", "role": "ce1" }} , 
 	{ "name": "dina_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dina_1", "role": "q1" }} , 
 	{ "name": "dinb_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "dinb_0", "role": "address0" }} , 
 	{ "name": "dinb_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dinb_0", "role": "ce0" }} , 
 	{ "name": "dinb_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dinb_0", "role": "q0" }} , 
 	{ "name": "dinb_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "dinb_0", "role": "address1" }} , 
 	{ "name": "dinb_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dinb_0", "role": "ce1" }} , 
 	{ "name": "dinb_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dinb_0", "role": "q1" }} , 
 	{ "name": "dinb_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "dinb_1", "role": "address0" }} , 
 	{ "name": "dinb_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dinb_1", "role": "ce0" }} , 
 	{ "name": "dinb_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dinb_1", "role": "q0" }} , 
 	{ "name": "dinb_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "dinb_1", "role": "address1" }} , 
 	{ "name": "dinb_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dinb_1", "role": "ce1" }} , 
 	{ "name": "dinb_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dinb_1", "role": "q1" }}  ]}
set Spec2ImplPortList { 
	doutc_0 { ap_memory {  { doutc_0_address0 mem_address 1 7 }  { doutc_0_ce0 mem_ce 1 1 }  { doutc_0_we0 mem_we 1 1 }  { doutc_0_d0 mem_din 1 32 }  { doutc_0_address1 mem_address 1 7 }  { doutc_0_ce1 mem_ce 1 1 }  { doutc_0_we1 mem_we 1 1 }  { doutc_0_d1 mem_din 1 32 } } }
	doutc_1 { ap_memory {  { doutc_1_address0 mem_address 1 7 }  { doutc_1_ce0 mem_ce 1 1 }  { doutc_1_we0 mem_we 1 1 }  { doutc_1_d0 mem_din 1 32 }  { doutc_1_address1 mem_address 1 7 }  { doutc_1_ce1 mem_ce 1 1 }  { doutc_1_we1 mem_we 1 1 }  { doutc_1_d1 mem_din 1 32 } } }
	dina_0 { ap_memory {  { dina_0_address0 mem_address 1 7 }  { dina_0_ce0 mem_ce 1 1 }  { dina_0_q0 mem_dout 0 32 }  { dina_0_address1 mem_address 1 7 }  { dina_0_ce1 mem_ce 1 1 }  { dina_0_q1 mem_dout 0 32 } } }
	dina_1 { ap_memory {  { dina_1_address0 mem_address 1 7 }  { dina_1_ce0 mem_ce 1 1 }  { dina_1_q0 mem_dout 0 32 }  { dina_1_address1 mem_address 1 7 }  { dina_1_ce1 mem_ce 1 1 }  { dina_1_q1 mem_dout 0 32 } } }
	dinb_0 { ap_memory {  { dinb_0_address0 mem_address 1 7 }  { dinb_0_ce0 mem_ce 1 1 }  { dinb_0_q0 mem_dout 0 32 }  { dinb_0_address1 mem_address 1 7 }  { dinb_0_ce1 mem_ce 1 1 }  { dinb_0_q1 mem_dout 0 32 } } }
	dinb_1 { ap_memory {  { dinb_1_address0 mem_address 1 7 }  { dinb_1_ce0 mem_ce 1 1 }  { dinb_1_q0 mem_dout 0 32 }  { dinb_1_address1 mem_address 1 7 }  { dinb_1_ce1 mem_ce 1 1 }  { dinb_1_q1 mem_dout 0 32 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
