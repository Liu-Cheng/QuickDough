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
// PURPOSE : This is a module to synchronize the signal between different clock domain.  
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
module cnn_sync_rff(clk, rst_n, in, out);

parameter  WIDTH=1;

// crosss clock domain synchronizer with reset
input			clk, rst_n;
input[WIDTH-1:0] 	in;
output[WIDTH-1:0]	out;

reg[WIDTH-1:0]		 ff0, ff1;

wire[WIDTH-1:0] out;
assign out[WIDTH-1:0] = ff1[WIDTH-1:0];

//always @(posedge clk or negedge rst_n)
always @(posedge clk)
begin
	if (!rst_n) begin
		ff0[WIDTH-1:0] <= {(WIDTH){1'b0}};
		ff1[WIDTH-1:0] <= {(WIDTH){1'b0}};
	end
	else begin
		ff0[WIDTH-1:0] <= in[WIDTH-1:0];
		ff1[WIDTH-1:0] <= ff0[WIDTH-1:0];
	end
end
endmodule	
