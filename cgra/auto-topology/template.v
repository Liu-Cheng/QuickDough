//You may add comments with "//" on the head in this template
`timescale 1ns / 1ps

// Generate the name of the module
## module torus(
	      clk,
          rst_n,
// Generate port list
##        data_out
	      );

input clk;
input rst_n;

// Generate output declaration
## output [15:0] data_out;

// Generate wire declaration
## wire [15:0] PE00_out0;

// Generate the instance of PEs in the array
##

// Generate output port connections
## assign data_out=PE00_out0;

endmodule

