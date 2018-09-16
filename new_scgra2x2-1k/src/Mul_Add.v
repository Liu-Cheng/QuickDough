`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/29/2013 10:19:44 AM
// Design Name: 
// Module Name: muladd
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


module Mul_Add(
    clk,
    Resetn,
    a,
    b,
    c,
    subtract,
    p
);

parameter DWIDTH = 32;

input                        clk;
input                        Resetn;
input signed [DWIDTH-1:0]    a;
input signed [DWIDTH-1:0]    b;
input signed [DWIDTH-1:0]    c;
input                        subtract;
output[DWIDTH-1:0]           p;

reg signed [DWIDTH-1:0]      a_reg0;
reg signed [DWIDTH-1:0]      b_reg0;
reg signed [DWIDTH-1:0]      c_reg0;

reg signed [DWIDTH-1:0]      mul_result;
reg                          subtract_reg;
reg [DWIDTH-1:0]             p;

always@(posedge clk) begin
    if(Resetn==1'b0) begin
        c_reg0 <= 0;
        subtract_reg <= 0;
    end
    else begin
        c_reg0 <= c;
        subtract_reg <= subtract;
    end
end

always@(posedge clk) begin
    if(Resetn == 1'b0) begin
        mul_result <= 0;
    end
    else begin
        mul_result <= a * b;
    end
end

always@(posedge clk) begin
    if(Resetn==1'b0) begin
        p <= 0;
    end
    else begin
        p <= (subtract_reg)? mul_result - c_reg0 : mul_result + c_reg0;
    end
end

endmodule
