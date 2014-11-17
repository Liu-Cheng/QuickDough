`timescale 1 ns/1 ps 

module Torus4x4 (

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

PEIO PE00(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE03_Out2),
    .PE_In1(PE30_Out3),
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
PEIO PE01(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE00_Out2),
    .PE_In1(PE31_Out3),
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
PE PE02(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE01_Out2),
    .PE_In1(PE32_Out3),
    .PE_In2(PE03_Out0),
    .PE_In3(PE12_Out1),
    .PE_Out0(PE02_Out0),
    .PE_Out1(PE02_Out1),
    .PE_Out2(PE02_Out2),
    .PE_Out3(PE02_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE PE03(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE02_Out2),
    .PE_In1(PE33_Out3),
    .PE_In2(PE00_Out0),
    .PE_In3(PE13_Out1),
    .PE_Out0(PE03_Out0),
    .PE_Out1(PE03_Out1),
    .PE_Out2(PE03_Out2),
    .PE_Out3(PE03_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE PE10(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE13_Out2),
    .PE_In1(PE00_Out3),
    .PE_In2(PE11_Out0),
    .PE_In3(PE20_Out1),
    .PE_Out0(PE10_Out0),
    .PE_Out1(PE10_Out1),
    .PE_Out2(PE10_Out2),
    .PE_Out3(PE10_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE PE11(
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
PE PE12(
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
PE PE13(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE12_Out2),
    .PE_In1(PE03_Out3),
    .PE_In2(PE10_Out0),
    .PE_In3(PE23_Out1),
    .PE_Out0(PE13_Out0),
    .PE_Out1(PE13_Out1),
    .PE_Out2(PE13_Out2),
    .PE_Out3(PE13_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE PE20(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE23_Out2),
    .PE_In1(PE10_Out3),
    .PE_In2(PE21_Out0),
    .PE_In3(PE30_Out1),
    .PE_Out0(PE20_Out0),
    .PE_Out1(PE20_Out1),
    .PE_Out2(PE20_Out2),
    .PE_Out3(PE20_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE PE21(
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
PE PE22(
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
PE PE23(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE22_Out2),
    .PE_In1(PE13_Out3),
    .PE_In2(PE20_Out0),
    .PE_In3(PE33_Out1),
    .PE_Out0(PE23_Out0),
    .PE_Out1(PE23_Out1),
    .PE_Out2(PE23_Out2),
    .PE_Out3(PE23_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE PE30(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE33_Out2),
    .PE_In1(PE20_Out3),
    .PE_In2(PE31_Out0),
    .PE_In3(PE00_Out1),
    .PE_Out0(PE30_Out0),
    .PE_Out1(PE30_Out1),
    .PE_Out2(PE30_Out2),
    .PE_Out3(PE30_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE PE31(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE30_Out2),
    .PE_In1(PE21_Out3),
    .PE_In2(PE32_Out0),
    .PE_In3(PE01_Out1),
    .PE_Out0(PE31_Out0),
    .PE_Out1(PE31_Out1),
    .PE_Out2(PE31_Out2),
    .PE_Out3(PE31_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE PE32(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE31_Out2),
    .PE_In1(PE22_Out3),
    .PE_In2(PE33_Out0),
    .PE_In3(PE02_Out1),
    .PE_Out0(PE32_Out0),
    .PE_Out1(PE32_Out1),
    .PE_Out2(PE32_Out2),
    .PE_Out3(PE32_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
PE PE33(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE32_Out2),
    .PE_In1(PE23_Out3),
    .PE_In2(PE30_Out0),
    .PE_In3(PE03_Out1),
    .PE_Out0(PE33_Out0),
    .PE_Out1(PE33_Out1),
    .PE_Out2(PE33_Out2),
    .PE_Out3(PE33_Out3),

    .PE_Array_Busy(PE_Array_Busy)

);
endmodule
