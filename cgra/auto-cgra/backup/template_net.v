//You may add comments with "//" on the head in this template
`timescale 1ns / 1ps
// Generate the name of the module
## module net(
	      input [15:0]  D_IN,
	      output [15:0] P_OUT,
	      input 	    CLK,
	      input 	    RST,
	      input [1:0]   MEMEN
	      );
// Generate all the possible wire definitions used in the top module
##

  assign P_OUT = NET_DATA_OUT;
   
  always@(posedge CLK) begin
     if(RST)
	   NET_DATA_OUT <= 0;
     else if(MEMEN==2'b01)
	   NET_DATA_OUT <= PE0_DATA_OUT0;
     else
	   NET_DATA_OUT <= 0;
  end
   
  assign NET_DATA_IN = (MEMEN==2'b10) ? D_IN : PE0_DATA_IN0;

// Generate the instance of PEs in the array
##

// Generate the connections between wires
##
  
endmodule
