`timescale 1 ns / 1 ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:15:58 03/02/2012 
// Design Name: 
// Module Name:    inst_rom 
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
module Inst_Mem(
    Clk,
    Resetn,
    Inst_Mem_Out,
	 CGRA_Ena
);

parameter INST_DWIDTH=72;
parameter INST_AWIDTH=10;

input                       Clk;
input                       Resetn;
input                       CGRA_Ena;

output [INST_DWIDTH-1:0]    Inst_Mem_Out;
reg    [INST_AWIDTH-1:0]    Inst_Mem_Addr;


always@(posedge Clk or negedge Resetn) begin
    if(!Resetn) begin
        Inst_Mem_Addr <= 0;
    end
    else if(CGRA_Ena==1'b1) begin
	     Inst_Mem_Addr <= Inst_Mem_Addr + 1'b1;
	 end
	 else begin
	     Inst_Mem_Addr <= 0;
	end
end

SP_Inst_Mem Inst_Rom(
    .clka(Clk),
    .addra(Inst_Mem_Addr),
    .douta(Inst_Mem_Out)
);


endmodule
