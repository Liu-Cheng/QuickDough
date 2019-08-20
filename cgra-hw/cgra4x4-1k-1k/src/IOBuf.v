`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:27:14 06/12/2015 
// Design Name: 
// Module Name:    IOBuf 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module IOBuf(
    Clk,
	 Data_In,
	 Data_Out,
	 DBuf_Wea,
	 ABuf_Addr,
	 DBuf_Status
);

parameter DWIDTH=32;
parameter AWIDTH=16;

input                    Clk;
input                    DBuf_Wea;
input [AWIDTH-1 : 0]     ABuf_Addr;
input [DWIDTH-1 : 0]     Data_In;
output[DWIDTH-1 : 0]     Data_Out;
output [1:0]             DBuf_Status;

wire [AWIDTH-1 : 0]      DBuf_Addr;

DBuf DBuf(
  .clka(Clk),
  .wea(DBuf_Wea),
  .addra(DBuf_Addr),
  .dina(Data_In),
  .douta(Data_Out)
);


ABuf ABuf(
  .clka(Clk),
  .addra(ABuf_Addr),
  .douta({DBuf_Status, DBuf_Addr})
);

endmodule
