//==================================================================================================
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
// PURPOSE : This is a module to detect the positive edge.  
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
module cnn_edge_p(clk, rst_n, in, out);

input clk, rst_n, in;
output out;

reg net;

always @(posedge clk)
begin
		if (!rst_n)
			net <= 1'b1;
		else
			net <= in;
end

assign out = (~net && in);

endmodule

