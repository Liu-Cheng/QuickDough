`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2014 02:23:38 PM
// Design Name: 
// Module Name: alu
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

module ALU(
    Clk,
    Resetn,
    OP_Sel,
    Data_In0,
    Data_In1,
    Data_In2,
    Data_Out
    );
    parameter DWIDTH = 32;
    
    input                         Clk;
    input                         Resetn;
    input [3:0]                   OP_Sel;
    input [DWIDTH-1:0]            Data_In0;
    input [DWIDTH-1:0]            Data_In1;
    input [DWIDTH-1:0]            Data_In2;
    output [DWIDTH-1:0]           Data_Out;
    
    // Add/Sub
    reg [DWIDTH-1:0]             Add_Result;
    reg [DWIDTH-1:0]             Sub_Result;
    wire [DWIDTH-1:0]            Mul_Result;
    reg [DWIDTH-1:0]             MulAdd_Result;
    reg [DWIDTH-1:0]             And_Result;
    reg [DWIDTH-1:0]             Shift4_Result;
    reg [DWIDTH-1:0]             PHI_Result;
    reg [DWIDTH-1:0]             GT_Result;
    reg [DWIDTH-1:0]             LET_Result;
    
    reg [DWIDTH-1:0]             Data_In0_Reg;
    reg [DWIDTH-1:0]             Data_In1_Reg;
    reg [DWIDTH-1:0]             Data_In2_Reg;
    reg [DWIDTH-1:0]             Data_In2_Reg1;
    reg [DWIDTH-1:0]             Data_In2_Reg2;
    reg [DWIDTH-1:0]             Data_In2_Reg3;
	 reg [DWIDTH-1:0]             Data_In2_Reg4;
	 reg [DWIDTH-1:0]             Data_In2_Reg5;
    reg [3:0]                    OP_Sel_Reg;
    reg [DWIDTH-1:0]             Data_Out;
    
    
    always@(posedge Clk or negedge Resetn) begin
        if(Resetn==1'b0) begin
           Shift4_Result <= 0;
        end
        else begin
            case (Data_In1_Reg)
                0: Shift4_Result <= {Data_In0_Reg[DWIDTH-4:0], 3'b0};
                1: Shift4_Result <= {Data_In0_Reg[DWIDTH-3:0], 2'b0};
                2: Shift4_Result <= {Data_In0_Reg[DWIDTH-2:0], 1'b0};
                default: Shift4_Result <= Data_In0_Reg[DWIDTH-1:0];
            endcase
        end
    end
    
    always@(posedge Clk or negedge Resetn) begin
        if(Resetn==1'b0) begin
            Data_In0_Reg <= 0;
            Data_In1_Reg <= 0;
            Data_In2_Reg <= 0;
            Data_In2_Reg1 <= 0;
            Data_In2_Reg2 <= 0;
            Data_In2_Reg3 <= 0;
				Data_In2_Reg4 <= 0;
				Data_In2_Reg5 <= 0;
            OP_Sel_Reg <= 0;
        end
        else begin
            Data_In0_Reg <= Data_In0;
            Data_In1_Reg <= Data_In1;
            Data_In2_Reg <= Data_In2;
            Data_In2_Reg1 <= Data_In2_Reg;
            Data_In2_Reg2 <= Data_In2_Reg1;
            Data_In2_Reg3 <= Data_In2_Reg2;
				Data_In2_Reg4 <= Data_In2_Reg3;
				Data_In2_Reg5 <= Data_In2_Reg4;
            OP_Sel_Reg <= OP_Sel;
        end
    end
    
    always@(posedge Clk or negedge Resetn) begin
        if(Resetn==1'b0) begin
            Data_Out <= 0;
        end
        else begin
           case (OP_Sel_Reg)
               4'b0000: Data_Out <= Add_Result;
               4'b0001: Data_Out <= Sub_Result;
               4'b0010: Data_Out <= Mul_Result;
               4'b0011: Data_Out <= MulAdd_Result;
               4'b0100: Data_Out <= And_Result;
               4'b0110: Data_Out <= Shift4_Result;
               4'b0111: Data_Out <= PHI_Result;
               4'b1000: Data_Out <= GT_Result;
               default: Data_Out <= LET_Result; 
           endcase 
        end
    end
    
    always@(posedge Clk or negedge Resetn) begin
        if(Resetn==1'b0) begin 
            Add_Result <= 0;
            Sub_Result <= 0;
            And_Result <= 0;
            PHI_Result <= 0;
            GT_Result <= 0;
            LET_Result <= 0;
        end
        else begin
            Add_Result <= Data_In0_Reg + Data_In1_Reg;
            Sub_Result <= Data_In0_Reg - Data_In1_Reg;
            And_Result <= Data_In0_Reg & Data_In1_Reg;
            PHI_Result <= (Data_In0_Reg==0)? Data_In2_Reg : Data_In1_Reg;
            GT_Result <= (Data_In0_Reg > Data_In1_Reg) ? 1 : 0;
            LET_Result <= (Data_In0_Reg <= Data_In1_Reg)? 1 : 0;
        end
    end
    
    always@(posedge Clk or negedge Resetn) begin
        if(Resetn==1'b0) begin
            MulAdd_Result <= 0;
        end
        else begin
            MulAdd_Result <= Mul_Result + Data_In2_Reg5;
        end
    end
    
     Mul Mul (
      .clk(Clk), 
      .a(Data_In0_Reg), 
      .b(Data_In1_Reg), 
      .p(Mul_Result)
    );
    
endmodule
