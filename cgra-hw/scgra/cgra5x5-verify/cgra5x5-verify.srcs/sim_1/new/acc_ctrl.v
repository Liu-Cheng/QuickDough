`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/18/2013 01:22:17 PM
// Design Name: 
// Module Name: acc_ctrl
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module acc_ctrl(
    LowClk,
    Resetn,
    Computation_Start,
    Computation_Done
    );

input            LowClk;
input            Resetn;
output           Computation_Start;
input            Computation_Done;

reg              Computation_Done_Reg;
reg              Computation_Start_Reg;
reg [31:0]       Cnt;

always@(posedge LowClk or negedge Resetn) begin
  if(Resetn==1'b0) begin
    Computation_Done_Reg <= 1'b0;
  end
  else begin
    Computation_Done_Reg <= Computation_Done;
  end 
end

always@(posedge LowClk or negedge Resetn) begin
  if(Resetn==1'b0) begin
    Cnt <= 0;
  end
  else if(Cnt<32'h1FFFFFFF) begin
    Cnt <= Cnt + 1;
  end
  else begin
    Cnt <= Cnt;
  end
end

always@(posedge LowClk or negedge Resetn) begin
  if(Resetn==1'b0) begin
    Computation_Start_Reg <= 1'b0;
  end
  else if(Cnt==10) begin
    Computation_Start_Reg <= 1'b1;
  end
  else if(Computation_Done_Reg==1'b1) begin
    Computation_Start_Reg <= 1'b0;
  end
  else begin
    Computation_Start_Reg <= Computation_Start_Reg;
  end
end

assign Computation_Start = Computation_Start_Reg;

endmodule
