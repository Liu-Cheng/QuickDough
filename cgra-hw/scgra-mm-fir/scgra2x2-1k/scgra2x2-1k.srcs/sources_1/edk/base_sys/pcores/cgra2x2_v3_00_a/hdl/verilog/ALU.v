`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:56:21 03/26/2012 
// Design Name: 
// Module Name:    alu7op3pipeline 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
// Opcode       operation
//  0000      No Computation
//  0001      MULADD: ALU_Out = ALU_In0 x ALU_In1 + ALU_In2
//  0010      MULSUB: ALU_Out = ALU_In0 x ALU_In1 - ALU_In2
//  0011      ADDADD: ALU_Out = ALU_In0 + ALU_In1 + ALU_In2
//  0100      ADDSUB: ALU_Out = ALU_In0 + ALU_In1 - ALU_In2
//  0101      SUBSUB: ALU_Out = ALU_In0 - ALU_In1 - ALU_In2
//  0110      PHI:    ALU_Out = (ALU_In0) ? ALU_In1 : ALU_In2
//  0111      RSFAND: ALU_Out = (ALU_In0 >> ALU_In1) & ALU_In2
//  1000      LSFADD: ALU_Out = (ALU_In0 << ALU_In2) + ALU_In2
//  1001      ABS:    ALU_Out = abs(ALU_In0)
//  1010      GT:     ALU_Out = (ALU_In0 > ALU_In1)? 1 : 0
//  1011      LET:    ALU_Out = (ALU_In0 <= ALU_In1)? 1 : 0
//  1100      ANDAND: ALU_Out = ALU_In0 & ALU_In1 & ALU_In2
//  1101
//  1110
//  1111
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module ALU(
    Clk,
    Resetn,
    ALU_In0,
    ALU_In1,
    ALU_In2,
    Opcode,
    ALU_Out
);

parameter DWIDTH=32;

input                        Clk;
input                        Resetn;
input [DWIDTH-1:0]           ALU_In0;
input [DWIDTH-1:0]           ALU_In1;
input [DWIDTH-1:0]           ALU_In2;
input [3:0]                  Opcode;
output[DWIDTH-1:0]           ALU_Out;

//First pipeline stage registers, wires
reg [DWIDTH-1:0]             ALU_In0_Reg0;
reg [DWIDTH-1:0]             ALU_In1_Reg0;
reg [DWIDTH-1:0]             ALU_In2_Reg0;
reg [DWIDTH-1:0]             ALU_In2_Reg1;
reg [3:0]                    Opcode_Reg0;
reg [DWIDTH-1:0]             ADD_Result;
reg [DWIDTH-1:0]             ADDADD_Result;
reg [DWIDTH-1:0]             ALU_Out;

wire [DWIDTH-1:0]            MULADD_Result;
wire                         Is_MULADD;

assign Is_MULADD = Opcode_Reg0==4'b0001;

/*
MulAdd MulAdd(
  .clk(Clk),  
  .Resetn(Resetn),
  .subtract(1'b0), 
  .a(ALU_In0), 
  .b(ALU_In1), 
  .c(ALU_In2),
  .p(MULADDSUB_Result)
);
*/

MulAdd MulAdd (
  .clk(Clk), // input clk
  .ce(1'b1), // input ce
  .sclr(1'b0), // input sclr
  .a(ALU_In0), // input [31 : 0] a
  .b(ALU_In1), // input [31 : 0] b
  .c(ALU_In2), // input [31 : 0] c
  .subtract(1'b0), // input subtract
  .p(MULADD_Result), // output [31 : 0] p
  .pcout() // output [47 : 0] pcout
);

always@(posedge Clk or negedge Resetn) begin
    if(Resetn==1'b0) begin
        ALU_In0_Reg0 <= 0;
		  ALU_In1_Reg0 <= 0;
		  ALU_In2_Reg0 <= 0;
		  ALU_In2_Reg1 <= 0;
		  ADD_Result <= 0;
		  ADDADD_Result <= 0;
		  Opcode_Reg0 <= 3'b000;
    end
    else begin
        ALU_In0_Reg0 <= ALU_In0;
		  ALU_In1_Reg0 <= ALU_In1;
	  	  ALU_In2_Reg0 <= ALU_In2;
		  ALU_In2_Reg1 <= ALU_In2_Reg0;
		  ADD_Result <= ALU_In0_Reg0 + ALU_In1_Reg0;
		  ADDADD_Result <= ADD_Result + ALU_In2_Reg1;
		  Opcode_Reg0 <= Opcode;
    end
end

//assign ALU_Out = Is_MULADD ? MULADD_Result : ADDADD_Result;
always@(posedge Clk or negedge Resetn) begin
    if(Resetn==1'b0) begin
	     ALU_Out <= 0;
	 end
	 else begin
	     ALU_Out <= Is_MULADD ? MULADD_Result : ADDADD_Result;
	 end
end
					  
endmodule
