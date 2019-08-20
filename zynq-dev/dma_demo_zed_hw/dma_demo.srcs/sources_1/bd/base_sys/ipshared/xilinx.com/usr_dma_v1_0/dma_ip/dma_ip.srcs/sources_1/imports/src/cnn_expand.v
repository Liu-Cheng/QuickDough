// -----------------------------------------------------------------------------
// Copyright (c) 2016
// Sense Time Group Ltd.
// All rights reserved
// ST Ltd. Proprietary and Confidential
// -----------------------------------------------------------------------------
// FILE NAME :  cnn_expand.v
// PROJECT :    KSS
// DEPARTMENT : HPC Group 
// AUTHOR :     Darcy Li 
// -----------------------------------------------------------------------------
// REVISION HISTORY
// VERSION    DATE        AUTHOR      DESCRIPTION
//   1.0   2016.08.22     Darcy Li   Initial
// 
// -----------------------------------------------------------------------------
// PURPOSE : This is a module to expand a pulse signal.  
//
//
// -----------------------------------------------------------------------------
// REUSE ISSUES
// Reset Strategy :     Active Low, synchronous reset
// Clock Domains :      clk   
// Critical Timing :
// Test Features :
// Asynchronous I/F :
// Scan Methodology :
// Instantiations :
// Synthesizable (y/n) :
// Other :
// -----------------------------------------------------------------------------
`timescale 1ns/1ns
module cnn_expand(clk, rst_n, in, out);

parameter  WIDTH=4;

input			clk, rst_n;
input 	in;
output	out;

reg [WIDTH-1:0]		 expand_cnt;
reg					 expand_out;


always @(posedge clk)
    if (!rst_n)
        expand_cnt <=#1 {WIDTH{1'b1}};
    else if (in)
        expand_cnt <=#1 {WIDTH{1'b0}};
    else if (expand_cnt != {WIDTH{1'b1}})
        expand_cnt <=#1 expand_cnt + 1;

always @(posedge clk)
    if (~rst_n)
        expand_out <=#1 1'b0;
    else if (expand_cnt < {WIDTH{1'b1}})
        expand_out <=#1 1'b1;
    else
        expand_out <=#1 1'b0;

assign out = expand_out;

endmodule	
