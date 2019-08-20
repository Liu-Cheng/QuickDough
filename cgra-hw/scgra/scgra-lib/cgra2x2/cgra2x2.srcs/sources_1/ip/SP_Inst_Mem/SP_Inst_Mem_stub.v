// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.3 (win64) Build 329390 Wed Oct 16 18:37:02 MDT 2013
// Date        : Sun Jul 13 23:58:53 2014
// Host        : Liuchengstudent running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               d:/minibench/scgra/scgra-lib/cgra2x2_v1_00_a/edit_ip.srcs/sources_1/ip/SP_Inst_Mem/SP_Inst_Mem_stub.v
// Design      : SP_Inst_Mem
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module SP_Inst_Mem(clka, ena, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,addra[9:0],douta[71:0]" */;
  input clka;
  input ena;
  input [9:0]addra;
  output [71:0]douta;
endmodule
