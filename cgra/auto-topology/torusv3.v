`timescale 1 ns/1 ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:17:41 05/19/2012 
// Design Name: 
// Module Name:   torusv2
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module torusv3 (
    clk, 
    rst_n, 
    data_out0, 
    data_out1, 
    data_out2, 
    data_out3
);

parameter data_width=16;

input clk;
input rst_n;
output [data_width-1:0] data_out0;
output [data_width-1:0] data_out1;
output [data_width-1:0] data_out2;
output [data_width-1:0] data_out3;

wire [data_width-1:0] PE_out00_0;
wire [data_width-1:0] PE_out00_1;
wire [data_width-1:0] PE_out00_2;
wire [data_width-1:0] PE_out00_3;

wire [data_width-1:0] PE_out01_0;
wire [data_width-1:0] PE_out01_1;
wire [data_width-1:0] PE_out01_2;
wire [data_width-1:0] PE_out01_3;

wire [data_width-1:0] PE_out02_0;
wire [data_width-1:0] PE_out02_1;
wire [data_width-1:0] PE_out02_2;
wire [data_width-1:0] PE_out02_3;

wire [data_width-1:0] PE_out03_0;
wire [data_width-1:0] PE_out03_1;
wire [data_width-1:0] PE_out03_2;
wire [data_width-1:0] PE_out03_3;


wire [data_width-1:0] PE_out10_0;
wire [data_width-1:0] PE_out10_1;
wire [data_width-1:0] PE_out10_2;
wire [data_width-1:0] PE_out10_3;

wire [data_width-1:0] PE_out11_0;
wire [data_width-1:0] PE_out11_1;
wire [data_width-1:0] PE_out11_2;
wire [data_width-1:0] PE_out11_3;

wire [data_width-1:0] PE_out12_0;
wire [data_width-1:0] PE_out12_1;
wire [data_width-1:0] PE_out12_2;
wire [data_width-1:0] PE_out12_3;

wire [data_width-1:0] PE_out13_0;
wire [data_width-1:0] PE_out13_1;
wire [data_width-1:0] PE_out13_2;
wire [data_width-1:0] PE_out13_3;

wire [data_width-1:0] PE_out20_0;
wire [data_width-1:0] PE_out20_1;
wire [data_width-1:0] PE_out20_2;
wire [data_width-1:0] PE_out20_3;

wire [data_width-1:0] PE_out21_0;
wire [data_width-1:0] PE_out21_1;
wire [data_width-1:0] PE_out21_2;
wire [data_width-1:0] PE_out21_3;

wire [data_width-1:0] PE_out22_0;
wire [data_width-1:0] PE_out22_1;
wire [data_width-1:0] PE_out22_2;
wire [data_width-1:0] PE_out22_3;

wire [data_width-1:0] PE_out23_0;
wire [data_width-1:0] PE_out23_1;
wire [data_width-1:0] PE_out23_2;
wire [data_width-1:0] PE_out23_3;

wire [data_width-1:0] PE_out30_0;
wire [data_width-1:0] PE_out30_1;
wire [data_width-1:0] PE_out30_2;
wire [data_width-1:0] PE_out30_3;

wire [data_width-1:0] PE_out31_0;
wire [data_width-1:0] PE_out31_1;
wire [data_width-1:0] PE_out31_2;
wire [data_width-1:0] PE_out31_3;

wire [data_width-1:0] PE_out32_0;
wire [data_width-1:0] PE_out32_1;
wire [data_width-1:0] PE_out32_2;
wire [data_width-1:0] PE_out32_3;

wire [data_width-1:0] PE_out33_0;
wire [data_width-1:0] PE_out33_1;
wire [data_width-1:0] PE_out33_2;
wire [data_width-1:0] PE_out33_3;

PE PE00(
    .PE_out0(PE_out00_0[data_width-1:0]),
    .PE_out1(PE_out00_1[data_width-1:0]),
    .PE_out2(PE_out00_2[data_width-1:0]),
    .PE_out3(PE_out00_3[data_width-1:0]),
    .clk(clk),
    .rst_n(rst_n),
    .PE_in0(PE_out03_2[data_width-1:0]),
    .PE_in1(PE_out30_3[data_width-1:0]),
    .PE_in2(PE_out01_0[data_width-1:0]),
    .PE_in3(PE_out10_1[data_width-1:0]));

PE PE01(
    .PE_out0(PE_out01_0[data_width-1:0]),
    .PE_out1(PE_out01_1[data_width-1:0]),
    .PE_out2(PE_out01_2[data_width-1:0]),
    .PE_out3(PE_out01_3[data_width-1:0]),
    .clk(clk),
    .rst_n(rst_n),
    .PE_in0(PE_out00_2[data_width-1:0]),
    .PE_in1(PE_out31_3[data_width-1:0]),
    .PE_in2(PE_out02_0[data_width-1:0]),
    .PE_in3(PE_out11_1[data_width-1:0]));

PE PE02(
    .PE_out0(PE_out02_0[data_width-1:0]),
    .PE_out1(PE_out02_1[data_width-1:0]),
    .PE_out2(PE_out02_2[data_width-1:0]),
    .PE_out3(PE_out02_3[data_width-1:0]),
    .clk(clk),
    .rst_n(rst_n),
    .PE_in0(PE_out01_2[data_width-1:0]),
    .PE_in1(PE_out32_3[data_width-1:0]),
    .PE_in2(PE_out03_0[data_width-1:0]),
    .PE_in3(PE_out12_1[data_width-1:0]));

PE PE03(
    .PE_out0(PE_out03_0[data_width-1:0]),
    .PE_out1(PE_out03_1[data_width-1:0]),
    .PE_out2(PE_out03_2[data_width-1:0]),
    .PE_out3(PE_out03_3[data_width-1:0]),
    .clk(clk),
    .rst_n(rst_n),
    .PE_in0(PE_out02_2[data_width-1:0]),
    .PE_in1(PE_out33_3[data_width-1:0]),
    .PE_in2(PE_out00_0[data_width-1:0]),
    .PE_in3(PE_out13_1[data_width-1:0]));

PE PE10(
    .PE_out0(PE_out10_0[data_width-1:0]),
    .PE_out1(PE_out10_1[data_width-1:0]),
    .PE_out2(PE_out10_2[data_width-1:0]),
    .PE_out3(PE_out10_3[data_width-1:0]),
    .clk(clk),
    .rst_n(rst_n),
    .PE_in0(PE_out13_2[data_width-1:0]),
    .PE_in1(PE_out00_3[data_width-1:0]),
    .PE_in2(PE_out11_0[data_width-1:0]),
    .PE_in3(PE_out20_1[data_width-1:0]));

PE PE11(
    .PE_out0(PE_out11_0[data_width-1:0]),
    .PE_out1(PE_out11_1[data_width-1:0]),
    .PE_out2(PE_out11_2[data_width-1:0]),
    .PE_out3(PE_out11_3[data_width-1:0]),
    .clk(clk),
    .rst_n(rst_n),
    .PE_in0(PE_out10_2[data_width-1:0]),
    .PE_in1(PE_out01_3[data_width-1:0]),
    .PE_in2(PE_out12_0[data_width-1:0]),
    .PE_in3(PE_out21_1[data_width-1:0]));

PE PE12(
    .PE_out0(PE_out12_0[data_width-1:0]),
    .PE_out1(PE_out12_1[data_width-1:0]),
    .PE_out2(PE_out12_2[data_width-1:0]),
    .PE_out3(PE_out12_3[data_width-1:0]),
    .clk(clk),
    .rst_n(rst_n),
    .PE_in0(PE_out11_2[data_width-1:0]),
    .PE_in1(PE_out02_3[data_width-1:0]),
    .PE_in2(PE_out13_0[data_width-1:0]),
    .PE_in3(PE_out22_1[data_width-1:0]));

PE PE13(
    .PE_out0(PE_out13_0[data_width-1:0]),
    .PE_out1(PE_out13_1[data_width-1:0]),
    .PE_out2(PE_out13_2[data_width-1:0]),
    .PE_out3(PE_out13_3[data_width-1:0]),
    .clk(clk),
    .rst_n(rst_n),
    .PE_in0(PE_out12_2[data_width-1:0]),
    .PE_in1(PE_out03_3[data_width-1:0]),
    .PE_in2(PE_out10_0[data_width-1:0]),
    .PE_in3(PE_out23_1[data_width-1:0]));

PE PE20(
    .PE_out0(PE_out20_0[data_width-1:0]),
    .PE_out1(PE_out20_1[data_width-1:0]),
    .PE_out2(PE_out20_2[data_width-1:0]),
    .PE_out3(PE_out20_3[data_width-1:0]),
    .clk(clk),
    .rst_n(rst_n),
    .PE_in0(PE_out23_2[data_width-1:0]),
    .PE_in1(PE_out10_3[data_width-1:0]),
    .PE_in2(PE_out21_0[data_width-1:0]),
    .PE_in3(PE_out30_1[data_width-1:0]));

PE PE21(
    .PE_out0(PE_out21_0[data_width-1:0]),
    .PE_out1(PE_out21_1[data_width-1:0]),
    .PE_out2(PE_out21_2[data_width-1:0]),
    .PE_out3(PE_out21_3[data_width-1:0]),
    .clk(clk),
    .rst_n(rst_n),
    .PE_in0(PE_out20_2[data_width-1:0]),
    .PE_in1(PE_out11_3[data_width-1:0]),
    .PE_in2(PE_out22_0[data_width-1:0]),
    .PE_in3(PE_out31_1[data_width-1:0]));

PE PE22(
    .PE_out0(PE_out22_0[data_width-1:0]),
    .PE_out1(PE_out22_1[data_width-1:0]),
    .PE_out2(PE_out22_2[data_width-1:0]),
    .PE_out3(PE_out22_3[data_width-1:0]),
    .clk(clk),
    .rst_n(rst_n),
    .PE_in0(PE_out21_2[data_width-1:0]),
    .PE_in1(PE_out12_3[data_width-1:0]),
    .PE_in2(PE_out23_0[data_width-1:0]),
    .PE_in3(PE_out32_1[data_width-1:0]));

PE PE23(
    .PE_out0(PE_out23_0[data_width-1:0]),
    .PE_out1(PE_out23_1[data_width-1:0]),
    .PE_out2(PE_out23_2[data_width-1:0]),
    .PE_out3(PE_out23_3[data_width-1:0]),
    .clk(clk),
    .rst_n(rst_n),
    .PE_in0(PE_out22_2[data_width-1:0]),
    .PE_in1(PE_out13_3[data_width-1:0]),
    .PE_in2(PE_out20_0[data_width-1:0]),
    .PE_in3(PE_out33_1[data_width-1:0]));

PE PE30(
    .PE_out0(PE_out30_0[data_width-1:0]),
    .PE_out1(PE_out30_1[data_width-1:0]),
    .PE_out2(PE_out30_2[data_width-1:0]),
    .PE_out3(PE_out30_3[data_width-1:0]),
    .clk(clk),
    .rst_n(rst_n),
    .PE_in0(PE_out33_2[data_width-1:0]),
    .PE_in1(PE_out20_3[data_width-1:0]),
    .PE_in2(PE_out31_0[data_width-1:0]),
    .PE_in3(PE_out00_1[data_width-1:0]));

PE PE31(
    .PE_out0(PE_out31_0[data_width-1:0]),
    .PE_out1(PE_out31_1[data_width-1:0]),
    .PE_out2(PE_out31_2[data_width-1:0]),
    .PE_out3(PE_out31_3[data_width-1:0]),
    .clk(clk),
    .rst_n(rst_n),
    .PE_in0(PE_out30_2[data_width-1:0]),
    .PE_in1(PE_out21_3[data_width-1:0]),
    .PE_in2(PE_out32_0[data_width-1:0]),
    .PE_in3(PE_out01_1[data_width-1:0]));

PE PE32(
    .PE_out0(PE_out32_0[data_width-1:0]),
    .PE_out1(PE_out32_1[data_width-1:0]),
    .PE_out2(PE_out32_2[data_width-1:0]),
    .PE_out3(PE_out32_3[data_width-1:0]),
    .clk(clk),
    .rst_n(rst_n),
    .PE_in0(PE_out31_2[data_width-1:0]),
    .PE_in1(PE_out22_3[data_width-1:0]),
    .PE_in2(PE_out33_0[data_width-1:0]),
    .PE_in3(PE_out02_1[data_width-1:0]));

PE PE33(
    .PE_out0(PE_out33_0[data_width-1:0]),
    .PE_out1(PE_out33_1[data_width-1:0]),
    .PE_out2(PE_out33_2[data_width-1:0]),
    .PE_out3(PE_out33_3[data_width-1:0]),
    .clk(clk),
    .rst_n(rst_n),
    .PE_in0(PE_out32_2[data_width-1:0]),
    .PE_in1(PE_out23_3[data_width-1:0]),
    .PE_in2(PE_out30_0[data_width-1:0]),
    .PE_in3(PE_out03_1[data_width-1:0]));

assign data_out0=PE_out00_0;
assign data_out1=PE_out11_0;
assign data_out2=PE_out22_0;
assign data_out3=PE_out33_0;

endmodule
