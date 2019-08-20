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

module torus2x2 (
    Clk, 
    Resetn,
	 
    Data0_Load,
    Data0_Store,	 
    Data1_Load,
	Data1_Store,
	 
	PE_Array_Busy
);

parameter DWIDTH = 32;
parameter SYS_DWIDTH = 32;

input                     Clk;
input                     Resetn;

input [SYS_DWIDTH-1:0]    Data0_Load;
input [SYS_DWIDTH-1:0]    Data1_Load;
output [SYS_DWIDTH-1:0]   Data0_Store;
output [SYS_DWIDTH-1:0]   Data1_Store;

input                     PE_Array_Busy;

wire [DWIDTH-1:0]         PE00_Out0;
wire [DWIDTH-1:0]         PE00_Out1;
wire [DWIDTH-1:0]         PE00_Out2;
wire [DWIDTH-1:0]         PE00_Out3;

wire [DWIDTH-1:0]         PE01_Out0;
wire [DWIDTH-1:0]         PE01_Out1;
wire [DWIDTH-1:0]         PE01_Out2;
wire [DWIDTH-1:0]         PE01_Out3;

wire [DWIDTH-1:0]         PE10_Out0;
wire [DWIDTH-1:0]         PE10_Out1;
wire [DWIDTH-1:0]         PE10_Out2;
wire [DWIDTH-1:0]         PE10_Out3;

wire [DWIDTH-1:0]         PE11_Out0;
wire [DWIDTH-1:0]         PE11_Out1;
wire [DWIDTH-1:0]         PE11_Out2;
wire [DWIDTH-1:0]         PE11_Out3;

//PEs        
PE00 PE00(
    .Clk(Clk),
    .Resetn(Resetn),

    .PE_In0(PE01_Out2),
    .PE_In1(PE10_Out3),
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
    .PE_In1(PE11_Out3),
    .PE_In2(PE00_Out0),
    .PE_In3(PE11_Out1),

    .PE_Out0(PE01_Out0),
    .PE_Out1(PE01_Out1),
    .PE_Out2(PE01_Out2),
    .PE_Out3(PE01_Out3),

    .PE_Load(Data1_Load),
    .PE_Store(Data1_Store),
    .PE_Array_Busy(PE_Array_Busy)
	 );
	  
PE10 PE10(
     .Clk(Clk),
     .Resetn(Resetn),

     .PE_In0(PE11_Out2),
     .PE_In1(PE00_Out3),
     .PE_In2(PE11_Out0),
     .PE_In3(PE00_Out1),

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
     .PE_In2(PE10_Out0),
     .PE_In3(PE01_Out1),

     .PE_Out0(PE11_Out0),
     .PE_Out1(PE11_Out1),
     .PE_Out2(PE11_Out2),
     .PE_Out3(PE11_Out3),
	  
     .PE_Array_Busy(PE_Array_Busy)
	  );
	  
endmodule
