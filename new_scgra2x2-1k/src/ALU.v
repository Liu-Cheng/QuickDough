`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    2017.08.17 
// Design Name: 
// Module Name:    ALU
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
//  0111
//  1000
//  1001      ABS:    ALU_Out = abs(ALU_In0)
//  1010      GT:     ALU_Out = (ALU_In0 > ALU_In1)? 1 : 0
//  1011      LET:    ALU_Out = (ALU_In0 <= ALU_In1)? 1 : 0
//  1100
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
reg [3:0]                    Opcode_Reg1;
reg [3:0]                    Opcode_Reg2;
wire [3:0]                   Possible_Out_Sel0;
wire [3:0]                   Possible_Out_Sel1;
wire [3:0]                   Out_Sel;

//Second pipeline stage registers, wires
reg [DWIDTH-1:0]             ABS_Result;
reg [DWIDTH-1:0]             GT_Result;
reg [DWIDTH-1:0]             LET_Result;
reg [DWIDTH-1:0]             PHI_Result;
reg [DWIDTH-1:0]             ALU_In2_Reg1;
wire[DWIDTH-1:0]             MULADDSUB_Result;
wire[DWIDTH-1:0]             ADDSUB_Result;
wire[DWIDTH-1:0]             ADDSUB_Result_Stage0;

wire                         Is_MULADD;
wire                         Is_MULSUB;
wire                         Is_ADDADD;
wire                         Is_ADDSUB;
wire                         Is_SUBSUB;
wire                         Is_PHI;
wire                         Is_ABS;
wire                         Is_GT;
wire                         Is_LET;

wire                         ADDSUB_Sel_Stage0;
reg                          ADDSUB_Sel_Stage1;

//First pipeline stage
assign Is_MULADD = Opcode_Reg0==4'b0001;
assign Is_MULSUB = Opcode_Reg0==4'b0010;
assign Is_ADDADD = Opcode_Reg0==4'b0011;
assign Is_ADDSUB = Opcode_Reg0==4'b0100;
assign Is_SUBSUB = Opcode_Reg0==4'b0101;
assign Is_PHI    = Opcode_Reg0==4'b0110;
//assign Is_xxx0   = Opcode_Reg0==4'b0111;
//assign Is_xxx1   = Opcode_Reg0==4'b1000;
assign Is_ABS    = Opcode_Reg0==4'b1001;
assign Is_GT     = Opcode_Reg0==4'b1010;
assign Is_LET    = Opcode_Reg0==4'b1011;
//assign Is_xxx2   = Opcode_Reg0==4'b1100;
//assign Is_xxx3   = Opcode_Reg0==4'b1101;
//assign Is_xxx4   = Opcode_Reg0==4'b1110;
//assign Is_xxx5   = Opcode_Reg0==4'b1111;

Mul_Add Mul_Add(
  .clk(Clk),  
  .Resetn(Resetn),
  .subtract(Is_MULSUB), 
  .a(ALU_In0_Reg0), 
  .b(ALU_In1_Reg0), 
  .c(ALU_In2_Reg0),
  .p(MULADDSUB_Result)
);

Add_Sub Add_Sub_Stage0(
    .clk (clk),
    .Resetn (Resetn),
    .subtract (ADDSUB_Sel_Stage0),
    .a (ALU_In0_Reg0),
    .b (ALU_In1_Reg0),
    .p (ADDSUB_Result_Stage0)
);

Add_Sub Add_Sub_Stage1(
    .clk (clk),
    .Resetn (Resetn),
    .subtract (ADDSUB_Sel_Stage1),
    .a (ADDSUB_Result_Stage0),
    .b (ALU_In2_Reg1),
    .p (ADDSUB_Result)
);

assign ADDSUB_Sel_Stage0 = Is_SUBSUB;

always@(posedge Clk or negedge Resetn) begin
    if(!Resetn) begin
        ALU_In0_Reg0 <= 0;
		ALU_In1_Reg0 <= 0;
		ALU_In2_Reg0 <= 0;
		ALU_In2_Reg1 <= 0;
		Opcode_Reg0 <= 4'b0000;
        ADDSUB_Sel_Stage1 <= 0;
    end
    else begin
        ALU_In0_Reg0 <= ALU_In0;
		ALU_In1_Reg0 <= ALU_In1;
		ALU_In2_Reg0 <= ALU_In2;
		ALU_In2_Reg1 <= ALU_In2_Reg0;
		Opcode_Reg0 <= Opcode;
        ADDSUB_Sel_Stage1 <= Is_SUBSUB || Is_ADDSUB;
    end
end

always@(posedge Clk or negedge Resetn) begin
  if(!Resetn) begin
    ABS_Result <= 0;
    GT_Result <= 0;
    LET_Result <= 0;
    PHI_Result <= 0;
  end
  else begin
    ABS_Result <= (ALU_In0_Reg0[DWIDTH-1])? -ALU_In0_Reg0 : ALU_In0_Reg0;
    GT_Result <= (ALU_In0_Reg0 > ALU_In1_Reg0) ? 1 : 0;
    LET_Result <= (ALU_In0_Reg0 <= ALU_In1_Reg0) ? 1 : 0;
    PHI_Result <= (ALU_In0_Reg0==0)? ALU_In2_Reg0 : ALU_In1_Reg0;    
  end
end	

// The scheduler will ensure there is no conflict at output port.
// The output selection can thus be simply determined by the input opcode.
Possible_Out_Sel0 = (Is_MULADD || Is_MULSUB || Is_ADDADD || Is_SUBSUB || Is_ADDSUB) ? Opcode_Reg2 : 4'b0000;
Possible_Out_Sel1 = (Is_ABS || Is_GT || Is_LET || Is_PHI) ? Opcode_Reg1 : 4'b0000;
Out_Sel = Possible_Out_Sel0 || Possible_Out_Sel1;

always@(posedge clk or negedge Resetn) begin
    if(Resetn == 1'b0) begin
        ALU_Out <= 0;
    end
    else begin
        case(Out_Sel)
            4'b0001, 4'b0010:
                ALU_Out <= MULADD_Result;
            4'b0011, 4'b0100, 4'b0101:
                ALU_Out <= ADDSUB_Result;
            4'b0110:
                ALU_Out <= PHI_Result;
            4'b1010:
                ALU_Out <= GT_Result;
            4'b1011:
                ALU_Out <= LET_Result;
            4'b1001:
                ALU_Out <= ABS_Result;
            default:
                ALU_Out <= 0;
        endcase
    end
end

endmodule
