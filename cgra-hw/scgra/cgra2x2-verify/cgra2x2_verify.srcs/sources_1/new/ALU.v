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
reg [DWIDTH-1:0]             MUL_Result;
reg [DWIDTH-1:0]             LSF_Result;
reg [DWIDTH-1:0]             RSF_Result;
reg [DWIDTH-1:0]             Simple_op_Result; // User defined operation
reg [DWIDTH-1:0]             Single_Cycle_Result;
reg [DWIDTH-1:0]             ALU_In2_Reg1;
wire [DWIDTH-1:0]            Complex_op_IM; // Intermediate result of the complex operations

wire [2:0]                   Simple_op_Sel;
wire [3:0]                   Shift_Sel;
wire [3:0]                   Complex_op_Sel;
wire [3:0]                   Single_Cycle_Sel;
wire [3:0]                   ALU_Out_Sel;
reg  [3:0]                   Complex_op_Sel_Reg;
reg  [3:0]                   ALU_Out_Sel_Reg;

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

//Third pipeline stage registers
reg [DWIDTH-1:0]             ALU_Out;


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

//Half-word Multiplication
always@(posedge Clk or negedge Resetn) begin
  if(!Resetn) begin
    MUL_Result <= 0;
  end
  else begin
    MUL_Result <= ALU_In0_Reg0[15:0] * ALU_In1_Reg0[15:0];
  end
end

assign Shift_Sel[0] = ALU_In1_Reg0==0;
assign Shift_Sel[1] = ALU_In1_Reg0==8;
assign Shift_Sel[2] = ALU_In1_Reg0==16;
assign Shift_Sel[3] = ALU_In1_Reg0==24;

always@(posedge Clk or negedge Resetn) begin
  if(!Resetn) begin
    RSF_Result <=0;
  end
  else begin
    casex (Shift_Sel)
	   4'b0001:
		  RSF_Result <= ALU_In0_Reg0;
	   4'b0010:
		  RSF_Result <= {8'b0, ALU_In0_Reg0[31:8]};
		4'b0100:
		  RSF_Result <= {16'b0, ALU_In0_Reg0[31:16]};
		4'b1000:
		  RSF_Result <= {24'b0, ALU_In0_Reg0[31:24]};	
		default:
		  RSF_Result <= 0;	  
	 endcase
  end
end

always@(posedge Clk or negedge Resetn) begin
  if(!Resetn) begin
    LSF_Result <=0;
  end
  else begin
    casex (Shift_Sel)
	   4'b0001:
		  LSF_Result <= ALU_In0_Reg0;
	   4'b0010:
		  LSF_Result <= {ALU_In0_Reg0[23:0], 8'b0};
		4'b0100:
		  LSF_Result <= {ALU_In0_Reg0[15:0], 16'b0};
		4'b1000:
		  LSF_Result <= {ALU_In0_Reg0[7:0], 24'b0};		
		default:
		  LSF_Result <= 0;  
	 endcase
  end
end

assign Simple_op_Sel[0] = Is_ADDADD || Is_ADDSUB; //+ in the first stage
assign Simple_op_Sel[1] = Is_SUBSUB; //- in the first stage
assign Simple_op_Sel[2] = Is_ANDAND; //& in the first stage

always@(posedge Clk or negedge Resetn) begin
  if(!Resetn) begin
    Simple_op_Result <= 0;
  end
  else begin
    casex (Simple_op_Sel)
	   3'b001:
		  Simple_op_Result <= ALU_In0_Reg0 + ALU_In1_Reg0;
		3'b010:
		  Simple_op_Result <= ALU_In0_Reg0 - ALU_In1_Reg0;
		3'b100:
		  Simple_op_Result <= ALU_In0_Reg0 & ALU_In1_Reg0;
		default: 
		  Simple_op_Result <= 0;
    endcase
  end
end

assign Complex_op_Sel[0] = Is_MULADD || Is_MULSUB; //x
assign Complex_op_Sel[1] = Is_RSFAND; //>>
assign Complex_op_Sel[2] = Is_LSFADD; //<<
assign Complex_op_Sel[3] = Is_ADDADD || Is_ADDSUB || Is_SUBSUB || Is_ANDAND; //simple + - &

always@(posedge Clk or negedge Resetn) begin
  if(!Resetn) begin
    Complex_op_Sel_Reg <= 0;
	 ALU_Out_Sel_Reg <= 0;
  end
  else begin
    Complex_op_Sel_Reg <= Complex_op_Sel;
	 ALU_Out_Sel_Reg <= ALU_Out_Sel;
  end
end

assign Single_Cycle_Sel[0] = Is_ABS; //abs
assign Single_Cycle_Sel[1] = Is_GT; //GT
assign Single_Cycle_Sel[2] = Is_LET; //LET
assign Single_Cycle_Sel[3] = Is_PHI; //PHI

always@(posedge Clk or negedge Resetn) begin
  if(!Resetn) begin
    Single_Cycle_Result <= 0;
  end
  else begin
    casex (Single_Cycle_Sel)
	   4'b0001:
		  Single_Cycle_Result <= (ALU_In0_Reg0[DWIDTH-1])? -ALU_In0_Reg0 : ALU_In0_Reg0;
		4'b0010:
		  Single_Cycle_Result <= (ALU_In0_Reg0 > ALU_In1_Reg0) ? 1 : 0;
		4'b0100:
		  Single_Cycle_Result <= (ALU_In0_Reg0 <= ALU_In1_Reg0) ? 1 : 0;
		4'b1000:
		  Single_Cycle_Result <= (ALU_In0_Reg0==0)? ALU_In2_Reg0 : ALU_In1_Reg0;
		default:
		  Single_Cycle_Result <= 0;
		endcase
  end
end

// Second pipeline stage
assign Complex_op_IM = (Complex_op_Sel_Reg[0]) ? MUL_Result :
                       (Complex_op_Sel_Reg[1]) ? RSF_Result :
							  (Complex_op_Sel_Reg[2]) ? LSF_Result : Simple_op_Result;

assign ALU_Out_Sel[0] = Is_MULADD || Is_ADDADD || Is_LSFADD;
assign ALU_Out_Sel[1] = Is_MULSUB || Is_ADDSUB || Is_SUBSUB;
assign ALU_Out_Sel[2] = Is_RSFAND || Is_ANDAND;
assign ALU_Out_Sel[3] = Is_PHI || Is_ABS || Is_GT || Is_LET;

always@(posedge Clk or negedge Resetn) begin
  if(!Resetn) begin
    ALU_Out <= 0;
  end
  else begin
    casex (ALU_Out_Sel_Reg)
	   4'b0001:
		  ALU_Out <= Complex_op_IM + ALU_In2_Reg1;
		4'b0010:
		  ALU_Out <= Complex_op_IM - ALU_In2_Reg1;
		4'b0100:
		  ALU_Out <= Complex_op_IM & ALU_In2_Reg1;
		4'b1000:
		  ALU_Out <= Single_Cycle_Result;
		default:
		  ALU_Out <= 0;
    endcase
  end
end
							  
endmodule
