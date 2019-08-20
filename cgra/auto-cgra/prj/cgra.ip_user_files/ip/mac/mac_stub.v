// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
// Date        : Wed Aug 16 00:58:22 2017
// Host        : liucheng-laptop running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/liucheng/gitrepo/QuickDough/cgra/auto-cgra/prj/cgra.srcs/sources_1/ip/mac/mac_stub.v
// Design      : mac
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xbip_dsp48_macro_v3_0_12,Vivado 2016.2" *)
module mac(CLK, SEL, A, B, C, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,SEL[0:0],A[17:0],B[17:0],C[47:0],P[47:0]" */;
  input CLK;
  input [0:0]SEL;
  input [17:0]A;
  input [17:0]B;
  input [47:0]C;
  output [47:0]P;
endmodule
