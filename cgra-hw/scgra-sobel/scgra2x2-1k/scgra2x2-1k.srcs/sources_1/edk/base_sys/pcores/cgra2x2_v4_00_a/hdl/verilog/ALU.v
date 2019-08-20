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
//  0001      MULADD: ALU_Out = ALU_In0 x ALU_In1 + ALU_In2 --
//  0010      MULSUB: ALU_Out = ALU_In0 x ALU_In1 - ALU_In2
//  0011      ADDADD: ALU_Out = ALU_In0 + ALU_In1 + ALU_In2 ---
//  0100      ADDSUB: ALU_Out = ALU_In0 + ALU_In1 - ALU_In2
//  0101      SUBSUB: ALU_Out = ALU_In0 - ALU_In1 - ALU_In2 ---
//  0110      PHI:    ALU_Out = (ALU_In0) ? ALU_In1 : ALU_In2 ---
//  0111      RSFAND: ALU_Out = (ALU_In0 >> ALU_In1) & ALU_In2 ---
//  1000      LSFADD: ALU_Out = (ALU_In0 << ALU_In2) + ALU_In2 ---
//  1001      ABS:    ALU_Out = abs(ALU_In0) ---
//  1010      GT:     ALU_Out = (ALU_In0 > ALU_In1)? 1 : 0 ---
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
reg [15:0]                   ADD_Result;
reg [15:0]                   ADDADD_Result;
reg [DWIDTH-1:0]             ALU_Out;
reg [15:0]                   SUB_Result;
reg [15:0]                   SUBSUB_Result;
reg [7:0]                    PHI_Result;
reg [7:0]                    RSFAND_Result;
reg [DWIDTH-1:0]             LSFADD_Result;
reg [DWIDTH-1:0]             GT_Result;
wire [15:0]                  MULADD_Result;

wire                         Is_MULADD;
wire                         Is_ADDADD;
wire                         Is_SUBSUB;
wire                         Is_PHI;
wire                         Is_RSFAND;
wire                         Is_LSFADD;
wire                         Is_GT;
wire [3:0]                   Shift_Sel;

assign Is_MULADD = Opcode_Reg0==4'b0001;
assign Is_ADDADD = Opcode_Reg0==4'b0011;
assign Is_SUBSUB = Opcode_Reg0==4'b0101;
assign Is_PHI = Opcode_Reg0==4'b0110;
assign Is_RSFAND = Opcode_Reg0==4'b0111;
assign Is_LSFADD = Opcode_Reg0==4'b1000;
assign Is_GT = Opcode_Reg0==4'b1010;

assign Shift_Sel[0] = ALU_In1_Reg0==0;
assign Shift_Sel[1] = ALU_In1_Reg0==8;
assign Shift_Sel[2] = ALU_In1_Reg0==16;
assign Shift_Sel[3] = ALU_In1_Reg0==24;

MulAdd MulAdd (
  .clk(Clk), // input clk
  .ce(1'b1), // input ce
  .sclr(1'b0), // input sclr
  .a(ALU_In0[7:0]), // input [31 : 0] a
  .b(ALU_In1[7:0]), // input [31 : 0] b
  .c(ALU_In2[15:0]), // input [31 : 0] c
  .subtract(1'b0), // input subtract
  .p(MULADD_Result[15:0]), // output [31 : 0] p
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
		  SUB_Result <= 0;
		  SUBSUB_Result <= 0;
		  PHI_Result <= 0;
		  RSFAND_Result <= 0;
		  LSFADD_Result <= 0;
		  GT_Result <= 0;
		  Opcode_Reg0 <= 3'b000;
    end
    else begin
        ALU_In0_Reg0 <= ALU_In0;
		  ALU_In1_Reg0 <= ALU_In1;
	  	  ALU_In2_Reg0 <= ALU_In2;
		  ALU_In2_Reg1 <= ALU_In2_Reg0;
		  ADD_Result <= ALU_In0_Reg0[15:0] + ALU_In1_Reg0[15:0];
		  ADDADD_Result <= ADD_Result[15:0] + ALU_In2_Reg1[15:0];
		  SUB_Result <= ALU_In0_Reg0[15:0] - ALU_In1_Reg0[15:0];
		  SUBSUB_Result <= SUB_Result[15:0] - ALU_In2_Reg1[15:0];
		  PHI_Result <= (ALU_In0_Reg0[15:0]==0)? ALU_In2_Reg0[7:0] : ALU_In1_Reg0[7:0];
		  RSFAND_Result <= (Shift_Sel==4'b0001)? ALU_In0_Reg0[7:0] : 
		                   (Shift_Sel==4'b0010)? ALU_In0_Reg0[15:8] :
								 (Shift_Sel==4'b0100)? ALU_In0_Reg0[23:16] : ALU_In0_Reg0[31:24];
		  LSFADD_Result <= (Shift_Sel==4'b0001)? {ALU_In2_Reg0[31:8], ALU_In0_Reg0[7:0]} :
		                   (Shift_Sel==4'b0010)? {ALU_In2_Reg0[31:16], ALU_In0_Reg0[15:8],ALU_In2_Reg0[7:0]} :
								 (Shift_Sel==4'b0100)? {ALU_In2_Reg0[31:24], ALU_In0_Reg0[23:16], ALU_In2_Reg0[15:0]} : {ALU_In0_Reg0[7:0], ALU_In2_Reg0[23:0]};
		  GT_Result <= (ALU_In0_Reg0[15:0] > ALU_In1_Reg0[15:0]) ? 1 : 0;
		  Opcode_Reg0 <= Opcode;
    end
end

always@(posedge Clk or negedge Resetn) begin
    if(Resetn==1'b0) begin
	     ALU_Out <= 0;
	 end
	 else begin
	     ALU_Out <= Is_MULADD ? {15'b0, MULADD_Result} : 
		             Is_ADDADD ? {15'b0, ADDADD_Result} :
						 Is_SUBSUB ? {15'b0, SUBSUB_Result} :
						 Is_PHI ? {24'b0, PHI_Result} :
						 Is_RSFAND ? {24'b0, RSFAND_Result} :
						 Is_LSFADD ? LSFADD_Result : GT_Result;
	 end
end
					  					  
endmodule
