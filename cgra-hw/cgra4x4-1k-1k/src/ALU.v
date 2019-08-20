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
    reg [DWIDTH-1:0]             ADD_Result;
    reg [DWIDTH-1:0]             SUB_Result;
	 wire [DWIDTH-1:0]            MUL_Result;
	 
	 reg [DWIDTH-1:0]             MULADD_Result;
	 reg [DWIDTH-1:0]             ADDADD_Result;
	 reg [DWIDTH-1:0]             ADDSUB_Result;
	 reg [DWIDTH-1:0]             RV32_Result;
	 reg [DWIDTH-1:0]             PHI_Result;
    reg [DWIDTH-1:0]             GT_Result;
    reg [DWIDTH-1:0]             LET_Result;
    
    reg [DWIDTH-1:0]             Data_In0_Reg;
    reg [DWIDTH-1:0]             Data_In1_Reg;
    reg [DWIDTH-1:0]             Data_In2_Reg;
    reg [DWIDTH-1:0]             Data_In2_Reg1;
    reg [DWIDTH-1:0]             Data_In2_Reg2;
    reg [DWIDTH-1:0]             Data_In2_Reg3;
    reg [3:0]                    OP_Sel_Reg;
    reg [DWIDTH-1:0]             Data_Out;
    
    
    always@(posedge Clk or negedge Resetn) begin
        if(Resetn==1'b0) begin
            Data_In0_Reg <= 0;
            Data_In1_Reg <= 0;
            Data_In2_Reg <= 0;
            Data_In2_Reg1 <= 0;
            Data_In2_Reg2 <= 0;
            Data_In2_Reg3 <= 0;
            OP_Sel_Reg <= 0;
        end
        else begin
            Data_In0_Reg <= Data_In0;
            Data_In1_Reg <= Data_In1;
            Data_In2_Reg <= Data_In2;
            Data_In2_Reg1 <= Data_In2_Reg;
            Data_In2_Reg2 <= Data_In2_Reg1;
            Data_In2_Reg3 <= Data_In2_Reg2;
            OP_Sel_Reg <= OP_Sel;
        end
    end


    always@(posedge Clk or negedge Resetn) begin
        if(Resetn==1'b0) begin 
            ADD_Result <= 0;
            SUB_Result <= 0;
            PHI_Result <= 0;
            GT_Result <= 0;
            LET_Result <= 0;
				RV32_Result <= 0;
        end
        else begin
            ADD_Result <= Data_In0_Reg + Data_In1_Reg;
            SUB_Result <= Data_In0_Reg - Data_In1_Reg;
            PHI_Result <= (Data_In0_Reg[0])? Data_In1_Reg : Data_In2_Reg;
            GT_Result <= (Data_In0_Reg > Data_In1_Reg) ? 1 : 0;
            LET_Result <= (Data_In0_Reg <= Data_In1_Reg)? 1 : 0;
				RV32_Result <= {Data_In0_Reg[7:0],Data_In0_Reg[15:8], Data_In0_Reg[23:16], Data_In0_Reg[31:24]};
        end
    end

    
    always@(posedge Clk or negedge Resetn) begin
        if(Resetn==1'b0) begin
            Data_Out <= 0;
        end
        else begin
           case (OP_Sel_Reg)
               4'b0000: Data_Out <= MULADD_Result;
               4'b0010: Data_Out <= ADDADD_Result;
               4'b0011: Data_Out <= ADDSUB_Result;
               4'b1001: Data_Out <= RV32_Result;
					4'b1101: Data_Out <= PHI_Result;
					4'b1110: Data_Out <= GT_Result;
					4'b1111: Data_Out <= LET_Result;
					default: Data_Out <= 0;
           endcase 
        end
    end
    
    always@(posedge Clk or negedge Resetn) begin
        if(Resetn==1'b0) begin
            MULADD_Result <= 0;
				ADDADD_Result <= 0;
				ADDSUB_Result <= 0;
        end
        else begin
            MULADD_Result <= MUL_Result + Data_In2_Reg3;
				ADDADD_Result <= ADD_Result + Data_In2_Reg3;
				ADDSUB_Result <= ADD_Result - Data_In2_Reg3;
        end
    end
	 
    
     Mul Mul (
      .clk(Clk), 
      .a(Data_In0_Reg), 
      .b(Data_In1_Reg), 
      .p(MUL_Result)
    );
    
endmodule
