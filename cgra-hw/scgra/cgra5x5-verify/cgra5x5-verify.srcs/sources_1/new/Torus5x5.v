`timescale 1 ns/1 ps 

module Torus5x5 (

    Clk,
    Resetn,

    Data0_Load,
    Data0_Store,
    Data1_Load,
    Data1_Store,
    PE_Array_Busy
);

parameter DWIDTH=32;
parameter SYS_DWIDTH=32;

input                    Clk;
input                    Resetn;

input [SYS_DWIDTH-1:0]   Data0_Load;
input [SYS_DWIDTH-1:0]   Data1_Load;
output [SYS_DWIDTH-1:0]  Data0_Store;
output [SYS_DWIDTH-1:0]  Data1_Store;

input                    PE_Array_Busy;

wire [DWIDTH-1:0]        PE00_Out0;
wire [DWIDTH-1:0]        PE00_Out1;
wire [DWIDTH-1:0]        PE00_Out2;
wire [DWIDTH-1:0]        PE00_Out3;

wire [DWIDTH-1:0]        PE01_Out0;
wire [DWIDTH-1:0]        PE01_Out1;
wire [DWIDTH-1:0]        PE01_Out2;
wire [DWIDTH-1:0]        PE01_Out3;

wire [DWIDTH-1:0]        PE02_Out0;
wire [DWIDTH-1:0]        PE02_Out1;
wire [DWIDTH-1:0]        PE02_Out2;
wire [DWIDTH-1:0]        PE02_Out3;

wire [DWIDTH-1:0]        PE03_Out0;
wire [DWIDTH-1:0]        PE03_Out1;
wire [DWIDTH-1:0]        PE03_Out2;
wire [DWIDTH-1:0]        PE03_Out3;

wire [DWIDTH-1:0]        PE04_Out0;
wire [DWIDTH-1:0]        PE04_Out1;
wire [DWIDTH-1:0]        PE04_Out2;
wire [DWIDTH-1:0]        PE04_Out3;

wire [DWIDTH-1:0]        PE10_Out0;
wire [DWIDTH-1:0]        PE10_Out1;
wire [DWIDTH-1:0]        PE10_Out2;
wire [DWIDTH-1:0]        PE10_Out3;

wire [DWIDTH-1:0]        PE11_Out0;
wire [DWIDTH-1:0]        PE11_Out1;
wire [DWIDTH-1:0]        PE11_Out2;
wire [DWIDTH-1:0]        PE11_Out3;

wire [DWIDTH-1:0]        PE12_Out0;
wire [DWIDTH-1:0]        PE12_Out1;
wire [DWIDTH-1:0]        PE12_Out2;
wire [DWIDTH-1:0]        PE12_Out3;

wire [DWIDTH-1:0]        PE13_Out0;
wire [DWIDTH-1:0]        PE13_Out1;
wire [DWIDTH-1:0]        PE13_Out2;
wire [DWIDTH-1:0]        PE13_Out3;

wire [DWIDTH-1:0]        PE14_Out0;
wire [DWIDTH-1:0]        PE14_Out1;
wire [DWIDTH-1:0]        PE14_Out2;
wire [DWIDTH-1:0]        PE14_Out3;

wire [DWIDTH-1:0]        PE20_Out0;
wire [DWIDTH-1:0]        PE20_Out1;
wire [DWIDTH-1:0]        PE20_Out2;
wire [DWIDTH-1:0]        PE20_Out3;

wire [DWIDTH-1:0]        PE21_Out0;
wire [DWIDTH-1:0]        PE21_Out1;
wire [DWIDTH-1:0]        PE21_Out2;
wire [DWIDTH-1:0]        PE21_Out3;

wire [DWIDTH-1:0]        PE22_Out0;
wire [DWIDTH-1:0]        PE22_Out1;
wire [DWIDTH-1:0]        PE22_Out2;
wire [DWIDTH-1:0]        PE22_Out3;

wire [DWIDTH-1:0]        PE23_Out0;
wire [DWIDTH-1:0]        PE23_Out1;
wire [DWIDTH-1:0]        PE23_Out2;
wire [DWIDTH-1:0]        PE23_Out3;

wire [DWIDTH-1:0]        PE24_Out0;
wire [DWIDTH-1:0]        PE24_Out1;
wire [DWIDTH-1:0]        PE24_Out2;
wire [DWIDTH-1:0]        PE24_Out3;

wire [DWIDTH-1:0]        PE30_Out0;
wire [DWIDTH-1:0]        PE30_Out1;
wire [DWIDTH-1:0]        PE30_Out2;
wire [DWIDTH-1:0]        PE30_Out3;

wire [DWIDTH-1:0]        PE31_Out0;
wire [DWIDTH-1:0]        PE31_Out1;
wire [DWIDTH-1:0]        PE31_Out2;
wire [DWIDTH-1:0]        PE31_Out3;

wire [DWIDTH-1:0]        PE32_Out0;
wire [DWIDTH-1:0]        PE32_Out1;
wire [DWIDTH-1:0]        PE32_Out2;
wire [DWIDTH-1:0]        PE32_Out3;

wire [DWIDTH-1:0]        PE33_Out0;
wire [DWIDTH-1:0]        PE33_Out1;
wire [DWIDTH-1:0]        PE33_Out2;
wire [DWIDTH-1:0]        PE33_Out3;

wire [DWIDTH-1:0]        PE34_Out0;
wire [DWIDTH-1:0]        PE34_Out1;
wire [DWIDTH-1:0]        PE34_Out2;
wire [DWIDTH-1:0]        PE34_Out3;

wire [DWIDTH-1:0]        PE40_Out0;
wire [DWIDTH-1:0]        PE40_Out1;
wire [DWIDTH-1:0]        PE40_Out2;
wire [DWIDTH-1:0]        PE40_Out3;

wire [DWIDTH-1:0]        PE41_Out0;
wire [DWIDTH-1:0]        PE41_Out1;
wire [DWIDTH-1:0]        PE41_Out2;
wire [DWIDTH-1:0]        PE41_Out3;

wire [DWIDTH-1:0]        PE42_Out0;
wire [DWIDTH-1:0]        PE42_Out1;
wire [DWIDTH-1:0]        PE42_Out2;
wire [DWIDTH-1:0]        PE42_Out3;

wire [DWIDTH-1:0]        PE43_Out0;
wire [DWIDTH-1:0]        PE43_Out1;
wire [DWIDTH-1:0]        PE43_Out2;
wire [DWIDTH-1:0]        PE43_Out3;

wire [DWIDTH-1:0]        PE44_Out0;
wire [DWIDTH-1:0]        PE44_Out1;
wire [DWIDTH-1:0]        PE44_Out2;
wire [DWIDTH-1:0]        PE44_Out3;

PE00 PE00(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE04_Out2),
    .PE_In1(PE40_Out3),
    .PE_In2(PE01_Out0),
    .PE_In3(PE10_Out1),
    .PE_Out0(PE00_Out0),
    .PE_Out1(PE00_Out1),
    .PE_Out2(PE00_Out2),
    .PE_Out3(PE00_Out3),

    .PE_Load(Data0_Load),
    .PE_Store(Data0_Store),
    .PE_Array_Busy(PE_Array_Busy)

);
PE01 PE01(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE00_Out2),
    .PE_In1(PE41_Out3),
    .PE_In2(PE02_Out0),
    .PE_In3(PE11_Out1),
    .PE_Out0(PE01_Out0),
    .PE_Out1(PE01_Out1),
    .PE_Out2(PE01_Out2),
    .PE_Out3(PE01_Out3),

    .PE_Load(Data1_Load),
    .PE_Store(Data1_Store),
    .PE_Array_Busy(PE_Array_Busy)

);
PE02 PE02(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE01_Out2),
    .PE_In1(PE42_Out3),
    .PE_In2(PE03_Out0),
    .PE_In3(PE12_Out1),
    .PE_Out0(PE02_Out0),
    .PE_Out1(PE02_Out1),
    .PE_Out2(PE02_Out2),
    .PE_Out3(PE02_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE03 PE03(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE02_Out2),
    .PE_In1(PE43_Out3),
    .PE_In2(PE04_Out0),
    .PE_In3(PE13_Out1),
    .PE_Out0(PE03_Out0),
    .PE_Out1(PE03_Out1),
    .PE_Out2(PE03_Out2),
    .PE_Out3(PE03_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE04 PE04(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE03_Out2),
    .PE_In1(PE44_Out3),
    .PE_In2(PE00_Out0),
    .PE_In3(PE14_Out1),
    .PE_Out0(PE04_Out0),
    .PE_Out1(PE04_Out1),
    .PE_Out2(PE04_Out2),
    .PE_Out3(PE04_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE10 PE10(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE14_Out2),
    .PE_In1(PE00_Out3),
    .PE_In2(PE11_Out0),
    .PE_In3(PE20_Out1),
    .PE_Out0(PE10_Out0),
    .PE_Out1(PE10_Out1),
    .PE_Out2(PE10_Out2),
    .PE_Out3(PE10_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE11 PE11(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE10_Out2),
    .PE_In1(PE01_Out3),
    .PE_In2(PE12_Out0),
    .PE_In3(PE21_Out1),
    .PE_Out0(PE11_Out0),
    .PE_Out1(PE11_Out1),
    .PE_Out2(PE11_Out2),
    .PE_Out3(PE11_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE12 PE12(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE11_Out2),
    .PE_In1(PE02_Out3),
    .PE_In2(PE13_Out0),
    .PE_In3(PE22_Out1),
    .PE_Out0(PE12_Out0),
    .PE_Out1(PE12_Out1),
    .PE_Out2(PE12_Out2),
    .PE_Out3(PE12_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE13 PE13(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE12_Out2),
    .PE_In1(PE03_Out3),
    .PE_In2(PE14_Out0),
    .PE_In3(PE23_Out1),
    .PE_Out0(PE13_Out0),
    .PE_Out1(PE13_Out1),
    .PE_Out2(PE13_Out2),
    .PE_Out3(PE13_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE14 PE14(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE13_Out2),
    .PE_In1(PE04_Out3),
    .PE_In2(PE10_Out0),
    .PE_In3(PE24_Out1),
    .PE_Out0(PE14_Out0),
    .PE_Out1(PE14_Out1),
    .PE_Out2(PE14_Out2),
    .PE_Out3(PE14_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE20 PE20(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE24_Out2),
    .PE_In1(PE10_Out3),
    .PE_In2(PE21_Out0),
    .PE_In3(PE30_Out1),
    .PE_Out0(PE20_Out0),
    .PE_Out1(PE20_Out1),
    .PE_Out2(PE20_Out2),
    .PE_Out3(PE20_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE21 PE21(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE20_Out2),
    .PE_In1(PE11_Out3),
    .PE_In2(PE22_Out0),
    .PE_In3(PE31_Out1),
    .PE_Out0(PE21_Out0),
    .PE_Out1(PE21_Out1),
    .PE_Out2(PE21_Out2),
    .PE_Out3(PE21_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE22 PE22(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE21_Out2),
    .PE_In1(PE12_Out3),
    .PE_In2(PE23_Out0),
    .PE_In3(PE32_Out1),
    .PE_Out0(PE22_Out0),
    .PE_Out1(PE22_Out1),
    .PE_Out2(PE22_Out2),
    .PE_Out3(PE22_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE23 PE23(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE22_Out2),
    .PE_In1(PE13_Out3),
    .PE_In2(PE24_Out0),
    .PE_In3(PE33_Out1),
    .PE_Out0(PE23_Out0),
    .PE_Out1(PE23_Out1),
    .PE_Out2(PE23_Out2),
    .PE_Out3(PE23_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE24 PE24(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE23_Out2),
    .PE_In1(PE14_Out3),
    .PE_In2(PE20_Out0),
    .PE_In3(PE34_Out1),
    .PE_Out0(PE24_Out0),
    .PE_Out1(PE24_Out1),
    .PE_Out2(PE24_Out2),
    .PE_Out3(PE24_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE30 PE30(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE34_Out2),
    .PE_In1(PE20_Out3),
    .PE_In2(PE31_Out0),
    .PE_In3(PE40_Out1),
    .PE_Out0(PE30_Out0),
    .PE_Out1(PE30_Out1),
    .PE_Out2(PE30_Out2),
    .PE_Out3(PE30_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE31 PE31(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE30_Out2),
    .PE_In1(PE21_Out3),
    .PE_In2(PE32_Out0),
    .PE_In3(PE41_Out1),
    .PE_Out0(PE31_Out0),
    .PE_Out1(PE31_Out1),
    .PE_Out2(PE31_Out2),
    .PE_Out3(PE31_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE32 PE32(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE31_Out2),
    .PE_In1(PE22_Out3),
    .PE_In2(PE33_Out0),
    .PE_In3(PE42_Out1),
    .PE_Out0(PE32_Out0),
    .PE_Out1(PE32_Out1),
    .PE_Out2(PE32_Out2),
    .PE_Out3(PE32_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE33 PE33(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE32_Out2),
    .PE_In1(PE23_Out3),
    .PE_In2(PE34_Out0),
    .PE_In3(PE43_Out1),
    .PE_Out0(PE33_Out0),
    .PE_Out1(PE33_Out1),
    .PE_Out2(PE33_Out2),
    .PE_Out3(PE33_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE34 PE34(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE33_Out2),
    .PE_In1(PE24_Out3),
    .PE_In2(PE30_Out0),
    .PE_In3(PE44_Out1),
    .PE_Out0(PE34_Out0),
    .PE_Out1(PE34_Out1),
    .PE_Out2(PE34_Out2),
    .PE_Out3(PE34_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE40 PE40(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE44_Out2),
    .PE_In1(PE30_Out3),
    .PE_In2(PE41_Out0),
    .PE_In3(PE00_Out1),
    .PE_Out0(PE40_Out0),
    .PE_Out1(PE40_Out1),
    .PE_Out2(PE40_Out2),
    .PE_Out3(PE40_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE41 PE41(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE40_Out2),
    .PE_In1(PE31_Out3),
    .PE_In2(PE42_Out0),
    .PE_In3(PE01_Out1),
    .PE_Out0(PE41_Out0),
    .PE_Out1(PE41_Out1),
    .PE_Out2(PE41_Out2),
    .PE_Out3(PE41_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE42 PE42(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE41_Out2),
    .PE_In1(PE32_Out3),
    .PE_In2(PE43_Out0),
    .PE_In3(PE02_Out1),
    .PE_Out0(PE42_Out0),
    .PE_Out1(PE42_Out1),
    .PE_Out2(PE42_Out2),
    .PE_Out3(PE42_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE43 PE43(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE42_Out2),
    .PE_In1(PE33_Out3),
    .PE_In2(PE44_Out0),
    .PE_In3(PE03_Out1),
    .PE_Out0(PE43_Out0),
    .PE_Out1(PE43_Out1),
    .PE_Out2(PE43_Out2),
    .PE_Out3(PE43_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE44 PE44(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE43_Out2),
    .PE_In1(PE34_Out3),
    .PE_In2(PE40_Out0),
    .PE_In3(PE04_Out1),
    .PE_Out0(PE44_Out0),
    .PE_Out1(PE44_Out1),
    .PE_Out2(PE44_Out2),
    .PE_Out3(PE44_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
endmodule
