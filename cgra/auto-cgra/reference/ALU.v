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
reg [3:0]                    Opcode_Reg0;

//Second pipeline stage registers, wires
reg [DWIDTH-1:0]             LSF_Result;
reg [DWIDTH-1:0]             RSF_Result;
reg [DWIDTH-1:0]             ADDSUB_Result;
reg [DWIDTH-1:0]             ABS_Result;
reg [DWIDTH-1:0]             AND_Result;
reg [DWIDTH-1:0]             GT_Result;
reg [DWIDTH-1:0]             LET_Result;
reg [DWIDTH-1:0]             PHI_Result;
reg [DWIDTH-1:0]             ALU_In2_Reg1;
reg [DWIDTH-1:0]             Custom_Result;
wire[DWIDTH-1:0]             MULADDSUB_Result;
wire[DWIDTH-1:0]             ADDSUB_2st_Result;

reg [2:0]                    Custom_Out_Sel_Reg;
reg                          ADDSUB_2st_Sel_Reg;
reg [3:0]                    Single_Cycle_OP_Sel_Reg;
reg                          Is_LSFADD_Reg;
reg                          Is_ANDAND_Reg;

wire                         Is_MULADD;
wire                         Is_MULSUB;
wire                         Is_ADDADD;
wire                         Is_ADDSUB;
wire                         Is_SUBSUB;
wire                         Is_PHI;
wire                         Is_RSFAND;
wire                         Is_LSFADD;
wire                         Is_ABS;
wire                         Is_GT;
wire                         Is_LET;
wire                         Is_ANDAND;
wire                         ADDSUB_1st_Sel;
wire                         ADDSUB_2st_Sel; //Select add/sub for *add/*sub
wire [3:0]                   Single_Cycle_OP_Sel; //Single cycle operation sel.
wire [3:0]                   Shift_Sel;
wire [2:0]                   Custom_Out_Sel;
wire [DWIDTH-1:0]            ADDSUB_2st_OP0;
wire [DWIDTH-1:0]            AND_2st_OP0;
wire [DWIDTH-1:0]            Single_Cycle_OP;
reg                          Is_MULADDSUB_Reg1;
reg                          Is_MULADDSUB_Reg2;

//First pipeline stage
assign Is_MULADD = Opcode_Reg0==4'b0001;
assign Is_MULSUB = Opcode_Reg0==4'b0010;
assign Is_ADDADD = Opcode_Reg0==4'b0011;
assign Is_ADDSUB = Opcode_Reg0==4'b0100;
assign Is_SUBSUB = Opcode_Reg0==4'b0101;
assign Is_PHI    = Opcode_Reg0==4'b0110;
assign Is_RSFAND = Opcode_Reg0==4'b0111;
assign Is_LSFADD = Opcode_Reg0==4'b1000;
assign Is_ABS    = Opcode_Reg0==4'b1001;
assign Is_GT     = Opcode_Reg0==4'b1010;
assign Is_LET    = Opcode_Reg0==4'b1011;
assign Is_ANDAND = Opcode_Reg0==4'b1100;

MulAdd MulAdd(
  .clk(Clk),  
  .Resetn(Resetn),
  .subtract(Is_MULSUB), 
  .a(ALU_In0[15:0]), 
  .b(ALU_In1[15:0]), 
  .c(ALU_In2),
  .p(MULADDSUB_Result)
);

always@(posedge Clk or negedge Resetn) begin
    if(!Resetn) begin
        ALU_In0_Reg0 <= 0;
		ALU_In1_Reg0 <= 0;
		ALU_In2_Reg0 <= 0;
		ALU_In2_Reg1 <= 0;
		Opcode_Reg0 <= 3'b000;
    end
    else begin
        ALU_In0_Reg0 <= ALU_In0;
		ALU_In1_Reg0 <= ALU_In1;
		ALU_In2_Reg0 <= ALU_In2;
		ALU_In2_Reg1 <= ALU_In2_Reg0;
		Opcode_Reg0 <= Opcode;
    end
end

//First stage computation and decode
assign ADDSUB_1st_Sel = Is_ADDADD || Is_ADDSUB;
assign Shift_Sel[0] = ALU_In1_Reg0==0;
assign Shift_Sel[1] = ALU_In1_Reg0==8;
assign Shift_Sel[2] = ALU_In1_Reg0==16;
assign Shift_Sel[3] = ALU_In1_Reg0==24;

always@(posedge Clk or negedge Resetn) begin
  if(!Resetn) begin
    ADDSUB_Result <= 0;
    AND_Result <= 0;
    ABS_Result <= 0;
    GT_Result <= 0;
    LET_Result <= 0;
    PHI_Result <= 0;
  end
  else begin
    ADDSUB_Result <= ADDSUB_1st_Sel ? (ALU_In0_Reg0 + ALU_In1_Reg0) : (ALU_In0_Reg0 - ALU_In1_Reg0);
    AND_Result <= ALU_In0_Reg0 & ALU_In1_Reg0;
    ABS_Result <= (ALU_In0_Reg0[DWIDTH-1])? -ALU_In0_Reg0 : ALU_In0_Reg0;
    GT_Result <= (ALU_In0_Reg0 > ALU_In1_Reg0) ? 1 : 0;
    LET_Result <= (ALU_In0_Reg0 <= ALU_In1_Reg0) ? 1 : 0;
    PHI_Result <= (ALU_In0_Reg0==0)? ALU_In2_Reg0 : ALU_In1_Reg0;    
  end
end

always@(posedge Clk or negedge Resetn) begin
  if(!Resetn) begin
    RSF_Result <=0;
  end
  else begin
    RSF_Result <= (ALU_In0_Reg0 & {DWIDTH{Shift_Sel[0]}}) |
                  ({8'b0, ALU_In0_Reg0[31:8]} & {DWIDTH{Shift_Sel[1]}}) |
                  ({16'b0, ALU_In0_Reg0[31:16]} & {DWIDTH{Shift_Sel[2]}}) |
                  ({24'b0, ALU_In0_Reg0[31:24]} & {DWIDTH{Shift_Sel[3]}});
  end
end

always@(posedge Clk or negedge Resetn) begin
  if(!Resetn) begin
    LSF_Result <=0;
  end
  else begin
    LSF_Result <= (ALU_In0_Reg0 & {DWIDTH{Shift_Sel[0]}}) |
                  ({ALU_In0_Reg0[23:0], 8'b0} & {DWIDTH{Shift_Sel[1]}}) |
                  ({ALU_In0_Reg0[15:0], 16'b0} & {DWIDTH{Shift_Sel[2]}}) |
                  ({ALU_In0_Reg0[7:0], 24'b0} & {DWIDTH{Shift_Sel[3]}});
  end
end

assign ADDSUB_2st_Sel = Is_LSFADD || Is_ADDADD;
assign Custom_Out_Sel[0] = Is_LSFADD || Is_ADDADD || Is_ADDSUB || Is_SUBSUB;
assign Custom_Out_Sel[1] = Is_RSFAND || Is_ANDAND;
assign Custom_Out_Sel[2] = Is_PHI || Is_ABS || Is_GT || Is_LET;
assign Single_Cycle_OP_Sel = {Is_PHI, Is_LET, Is_GT, Is_ABS};

always@(posedge Clk or negedge Resetn) begin
  if(!Resetn) begin
    ADDSUB_2st_Sel_Reg <= 0;
    Is_LSFADD_Reg <= 0;
    Is_ANDAND_Reg <= 0;
    Custom_Out_Sel_Reg <= 0;
    Single_Cycle_OP_Sel_Reg <= 0;
    Is_MULADDSUB_Reg1 <= 0;
    Is_MULADDSUB_Reg2 <= 0;
  end
  else begin
      ADDSUB_2st_Sel_Reg <= ADDSUB_2st_Sel;
      Is_LSFADD_Reg <= Is_LSFADD;
      Is_ANDAND_Reg <= Is_ANDAND;
      Custom_Out_Sel_Reg <= Custom_Out_Sel;
      Single_Cycle_OP_Sel_Reg <= Single_Cycle_OP_Sel;
      Is_MULADDSUB_Reg1 <= Is_MULADD || Is_MULSUB;
      Is_MULADDSUB_Reg2 <= Is_MULADDSUB_Reg1;
  end
end

assign ADDSUB_2st_OP0 = Is_LSFADD_Reg ? LSF_Result : ADDSUB_Result;
assign AND_2st_OP0 = Is_ANDAND_Reg ? AND_Result : RSF_Result;

assign Single_Cycle_OP = ({DWIDTH{Single_Cycle_OP_Sel_Reg[0]}} & ABS_Result) |
                         ({DWIDTH{Single_Cycle_OP_Sel_Reg[1]}} & GT_Result) |
                         ({DWIDTH{Single_Cycle_OP_Sel_Reg[2]}} & LET_Result) |
                         ({DWIDTH{Single_Cycle_OP_Sel_Reg[3]}} & PHI_Result);
                         
assign ADDSUB_2st_Result = ADDSUB_2st_Sel_Reg? (ADDSUB_2st_OP0 + ALU_In2_Reg1) : (ADDSUB_2st_OP0 - ALU_In2_Reg1);

always@(posedge Clk or negedge Resetn) begin
  if(!Resetn) begin
    Custom_Result <= 0;
  end
  else begin
    Custom_Result <= ({DWIDTH{Custom_Out_Sel_Reg[0]}} & ADDSUB_2st_Result) |
                     ({DWIDTH{Custom_Out_Sel_Reg[1]}} & AND_2st_OP0 & ALU_In2_Reg1) |
                     ({DWIDTH{Custom_Out_Sel_Reg[2]}} & Single_Cycle_OP);
  end
end

assign ALU_Out = (Is_MULADDSUB_Reg2) ? MULADDSUB_Result : Custom_Result;	
						  
endmodule
