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
module Inst_Mem40(
    Clk,
    Resetn,
    Inst_Mem_Out,
	PE_Array_Busy
);

parameter INST_DWIDTH=72;
parameter INST_AWIDTH=10;

input                       Clk;
input                       Resetn;
input                       PE_Array_Busy;

output [INST_DWIDTH-1:0]    Inst_Mem_Out;
reg    [INST_AWIDTH-1:0]    Inst_Mem_Addr;


always@(posedge Clk or negedge Resetn) begin
    if(!Resetn) begin
        Inst_Mem_Addr <= 0;
    end
    else if(PE_Array_Busy==1'b1) begin
	     Inst_Mem_Addr <= Inst_Mem_Addr + 1'b1;
	 end
	 else begin
	     Inst_Mem_Addr <= 0;
	end
end

SP_Inst_Mem40 SP_Inst_Mem40(
    .clka(Clk),
    .addra(Inst_Mem_Addr),
    .douta(Inst_Mem_Out)
);

//Issue computation done signal by analyzing the instruction flag bits.
/*always@(posedge Clk or negedge Resetn) begin
  if(Resetn==1'b0) begin
    Computation_Done_Reg <= 1'b0;
  end
  else begin
    if((Inst_Mem_Out_Wire[INST_DWIDTH-1]==1'b0) && (Inst_Mem_Addr>4)) begin
	   Computation_Done_Reg <= 1'b1;
	 end
	 else begin
	   Computation_Done_Reg <= Computation_Done_Reg;
	 end
  end
end

assign Computation_Done = Computation_Done_Reg;
assign Inst_Mem_Out = Inst_Mem_Out_Wire;
*/



endmodule
