`timescale 1ns / 1ps

module torus16(
	      clk,
          rst_n,
          data_out0,
          data_out1,
          data_out2,
          data_out3
	      );

input clk;
input rst_n;

output[15:0] data_out0;
output[15:0] data_out1;
output[15:0] data_out2;
output[15:0] data_out3;

wire [15:0] PE00_out0;
wire [15:0] PE00_out1;
wire [15:0] PE00_out2;
wire [15:0] PE00_out3;

wire [15:0] PE01_out0;
wire [15:0] PE01_out1;
wire [15:0] PE01_out2;
wire [15:0] PE01_out3;

wire [15:0] PE02_out0;
wire [15:0] PE02_out1;
wire [15:0] PE02_out2;
wire [15:0] PE02_out3;

wire [15:0] PE03_out0;
wire [15:0] PE03_out1;
wire [15:0] PE03_out2;
wire [15:0] PE03_out3;


wire [15:0] PE10_out0;
wire [15:0] PE10_out1;
wire [15:0] PE10_out2;
wire [15:0] PE10_out3;

wire [15:0] PE11_out0;
wire [15:0] PE11_out1;
wire [15:0] PE11_out2;
wire [15:0] PE11_out3;

wire [15:0] PE12_out0;
wire [15:0] PE12_out1;
wire [15:0] PE12_out2;
wire [15:0] PE12_out3;

wire [15:0] PE13_out0;
wire [15:0] PE13_out1;
wire [15:0] PE13_out2;
wire [15:0] PE13_out3;


wire [15:0] PE20_out0;
wire [15:0] PE20_out1;
wire [15:0] PE20_out2;
wire [15:0] PE20_out3;

wire [15:0] PE21_out0;
wire [15:0] PE21_out1;
wire [15:0] PE21_out2;
wire [15:0] PE21_out3;

wire [15:0] PE22_out0;
wire [15:0] PE22_out1;
wire [15:0] PE22_out2;
wire [15:0] PE22_out3;

wire [15:0] PE23_out0;
wire [15:0] PE23_out1;
wire [15:0] PE23_out2;
wire [15:0] PE23_out3;


wire [15:0] PE30_out0;
wire [15:0] PE30_out1;
wire [15:0] PE30_out2;
wire [15:0] PE30_out3;

wire [15:0] PE31_out0;
wire [15:0] PE31_out1;
wire [15:0] PE31_out2;
wire [15:0] PE31_out3;

wire [15:0] PE32_out0;
wire [15:0] PE32_out1;
wire [15:0] PE32_out2;
wire [15:0] PE32_out3;

wire [15:0] PE33_out0;
wire [15:0] PE33_out1;
wire [15:0] PE33_out2;
wire [15:0] PE33_out3;



PE PE00(
     .clk(clk),
     .rst_n(rst_n),

     .PE_in0(PE03_out2),
     .PE_in1(PE30_out3),
     .PE_in2(PE01_out0),
     .PE_in3(PE10_out1),

     .PE_out0(PE00_out0),
     .PE_out1(PE00_out1),
     .PE_out2(PE00_out2),
     .PE_out3(PE00_out3)
       );

PE PE01(
     .clk(clk),
     .rst_n(rst_n),

     .PE_in0(PE00_out2),
     .PE_in1(PE31_out3),
     .PE_in2(PE02_out0),
     .PE_in3(PE11_out1),

     .PE_out0(PE01_out0),
     .PE_out1(PE01_out1),
     .PE_out2(PE01_out2),
     .PE_out3(PE01_out3)
       );

PE PE02(
     .clk(clk),
     .rst_n(rst_n),

     .PE_in0(PE01_out2),
     .PE_in1(PE32_out3),
     .PE_in2(PE03_out0),
     .PE_in3(PE12_out1),

     .PE_out0(PE02_out0),
     .PE_out1(PE02_out1),
     .PE_out2(PE02_out2),
     .PE_out3(PE02_out3)
       );

PE PE03(
     .clk(clk),
     .rst_n(rst_n),

     .PE_in0(PE02_out2),
     .PE_in1(PE33_out3),
     .PE_in2(PE00_out0),
     .PE_in3(PE13_out1),

     .PE_out0(PE03_out0),
     .PE_out1(PE03_out1),
     .PE_out2(PE03_out2),
     .PE_out3(PE03_out3)
       );


PE PE10(
     .clk(clk),
     .rst_n(rst_n),

     .PE_in0(PE13_out2),
     .PE_in1(PE00_out3),
     .PE_in2(PE11_out0),
     .PE_in3(PE20_out1),

     .PE_out0(PE10_out0),
     .PE_out1(PE10_out1),
     .PE_out2(PE10_out2),
     .PE_out3(PE10_out3)
       );

PE PE11(
     .clk(clk),
     .rst_n(rst_n),

     .PE_in0(PE10_out2),
     .PE_in1(PE01_out3),
     .PE_in2(PE12_out0),
     .PE_in3(PE21_out1),

     .PE_out0(PE11_out0),
     .PE_out1(PE11_out1),
     .PE_out2(PE11_out2),
     .PE_out3(PE11_out3)
       );

PE PE12(
     .clk(clk),
     .rst_n(rst_n),

     .PE_in0(PE11_out2),
     .PE_in1(PE02_out3),
     .PE_in2(PE13_out0),
     .PE_in3(PE22_out1),

     .PE_out0(PE12_out0),
     .PE_out1(PE12_out1),
     .PE_out2(PE12_out2),
     .PE_out3(PE12_out3)
       );

PE PE13(
     .clk(clk),
     .rst_n(rst_n),

     .PE_in0(PE12_out2),
     .PE_in1(PE03_out3),
     .PE_in2(PE10_out0),
     .PE_in3(PE23_out1),

     .PE_out0(PE13_out0),
     .PE_out1(PE13_out1),
     .PE_out2(PE13_out2),
     .PE_out3(PE13_out3)
       );


PE PE20(
     .clk(clk),
     .rst_n(rst_n),

     .PE_in0(PE23_out2),
     .PE_in1(PE10_out3),
     .PE_in2(PE21_out0),
     .PE_in3(PE30_out1),

     .PE_out0(PE20_out0),
     .PE_out1(PE20_out1),
     .PE_out2(PE20_out2),
     .PE_out3(PE20_out3)
       );

PE PE21(
     .clk(clk),
     .rst_n(rst_n),

     .PE_in0(PE20_out2),
     .PE_in1(PE11_out3),
     .PE_in2(PE22_out0),
     .PE_in3(PE31_out1),

     .PE_out0(PE21_out0),
     .PE_out1(PE21_out1),
     .PE_out2(PE21_out2),
     .PE_out3(PE21_out3)
       );

PE PE22(
     .clk(clk),
     .rst_n(rst_n),

     .PE_in0(PE21_out2),
     .PE_in1(PE12_out3),
     .PE_in2(PE23_out0),
     .PE_in3(PE32_out1),

     .PE_out0(PE22_out0),
     .PE_out1(PE22_out1),
     .PE_out2(PE22_out2),
     .PE_out3(PE22_out3)
       );

PE PE23(
     .clk(clk),
     .rst_n(rst_n),

     .PE_in0(PE22_out2),
     .PE_in1(PE13_out3),
     .PE_in2(PE20_out0),
     .PE_in3(PE33_out1),

     .PE_out0(PE23_out0),
     .PE_out1(PE23_out1),
     .PE_out2(PE23_out2),
     .PE_out3(PE23_out3)
       );


PE PE30(
     .clk(clk),
     .rst_n(rst_n),

     .PE_in0(PE33_out2),
     .PE_in1(PE20_out3),
     .PE_in2(PE31_out0),
     .PE_in3(PE00_out1),

     .PE_out0(PE30_out0),
     .PE_out1(PE30_out1),
     .PE_out2(PE30_out2),
     .PE_out3(PE30_out3)
       );

PE PE31(
     .clk(clk),
     .rst_n(rst_n),

     .PE_in0(PE30_out2),
     .PE_in1(PE21_out3),
     .PE_in2(PE32_out0),
     .PE_in3(PE01_out1),

     .PE_out0(PE31_out0),
     .PE_out1(PE31_out1),
     .PE_out2(PE31_out2),
     .PE_out3(PE31_out3)
       );

PE PE32(
     .clk(clk),
     .rst_n(rst_n),

     .PE_in0(PE31_out2),
     .PE_in1(PE22_out3),
     .PE_in2(PE33_out0),
     .PE_in3(PE02_out1),

     .PE_out0(PE32_out0),
     .PE_out1(PE32_out1),
     .PE_out2(PE32_out2),
     .PE_out3(PE32_out3)
       );

PE PE33(
     .clk(clk),
     .rst_n(rst_n),

     .PE_in0(PE32_out2),
     .PE_in1(PE23_out3),
     .PE_in2(PE30_out0),
     .PE_in3(PE03_out1),

     .PE_out0(PE33_out0),
     .PE_out1(PE33_out1),
     .PE_out2(PE33_out2),
     .PE_out3(PE33_out3)
       );



assign data_out0=PE00_out0;
assign data_out1=PE01_out0;
assign data_out2=PE02_out0;
assign data_out3=PE03_out0;

endmodule

