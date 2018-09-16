`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08/13/2017 
// Design Name: 
// Module Name:    ALU
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
// Opcode       operation
//  0000      No Computation (IDLE)
//  0001      MULADD:  ALU_Out = ALU_In0 x ALU_In1 + ALU_In2
//  0010      MULSUB:  ALU_Out = ALU_In0 x ALU_In1 - ALU_In2
//  0011      ADDADD:  ALU_Out = ALU_In0 + ALU_In1 + ALU_In2
//  0100      ADDSUB:  ALU_Out = ALU_In0 + ALU_In1 - ALU_In2
//  0101      SUBSUB:  ALU_Out = ALU_In0 - ALU_In1 - ALU_In2
//  0110      PHI:     ALU_Out = (ALU_In0) ? ALU_In1 : ALU_In2
//  0111      GT:      ALU_Out = (ALU_In0 > ALU_In1)? 1 : 0
//  1000      LET:     ALU_Out = (ALU_In0 <= ALU_In1)? 1 : 0
//  1001      RESERVED
//  1010      RESERVED
//  1011      RESERVED
//  1100      RESERVED
//  1101      RESERVED
//  1110      RESERVED
//  1111      RESERVED
// Dependencies: 
//
// Revision: 
// Revision 0.1 - File Created
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

wire input                        Clk;
wire input                        Resetn;
wire input [DWIDTH-1:0]           ALU_In0;
wire input [DWIDTH-1:0]           ALU_In1;
wire input [DWIDTH-1:0]           ALU_In2;
wire input [3:0]                  Opcode;
reg output[DWIDTH-1:0]            ALU_Out;


always@(posedge clk or negedge Resetn) begin
    if(Resetn == 1'b0) begin
        ALU_Out <= 0;
    end
    else begin
    case(Opcode_Reg) begin
    switch 4'b0001: begin
    ALU_Out <= MAC_OUT;
    end
    switch 4'b0010: begin
    ALU_OUT <= MAC_OUT;
    end
    end
        if(Opcode_Reg == 4'b0001 || Opcode_Reg == 4'b0010) begin
            ALU_Out <= MAC_Out;
        end
        else if(Opcode == 4'b0110) begin // PHI
            ALU_Out <= (ALU_In0 == 1) ? ALU_In1 : ALU_In2;
        end
        else if(Opcode == 4'b0111) begin // GT
            ALU_Out <=  (ALU_In0 > ALU_In1) ? 1 : 0;
        end
        else if(Opcode == 4'b1000) begin // LET
            ALU_Out <= (ALU_In0 <= ALU_In1) ? 1 : 0;
        end
        else begin
            ALU_Out <= 0;
        end
    end
end

MAC MAC(
.clk (clk),
.sel (MAC_Sel),
.ain (ALU_In0),
.bin (ALU_In1),
.cin (ALU_In2),
.result (MAC_Out)
);

ADDSUB ADDSUB(
.clk (clk),
.sel (ADDSUB_Sel),
.ain (ALU_In0),
.bin (ALU_In1),
.cin (ALU_In2),
.result (ADDSUB_Out)
);

endmodule
