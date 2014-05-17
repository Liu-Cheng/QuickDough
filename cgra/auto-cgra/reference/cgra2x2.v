`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: cgra 
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

module cgra2x2(
    Clk,
    LowClk,
    Resetn,

    //Data port
    Port0_Clk,
    Port0_Rst,
    Port0_En,
    Port0_Wen,
    Port0_Addr,
    Port0_Data_To_Bram,
    Port0_Data_From_Bram,

    //Data port
    Port1_Clk,
    Port1_Rst,
    Port1_En,
    Port1_Wen,
    Port1_Addr,
    Port1_Data_To_Bram,
    Port1_Data_From_Bram,

    //Memory addr control port
    Port2_Clk,
    Port2_Rst,
    Port2_En,
    Port2_Wen,
    Port2_Addr,
    Port2_Data_To_Bram,
    Port2_Data_From_Bram,

    //Memory addr control port
    Port3_Clk,
    Port3_Rst,
    Port3_En,
    Port3_Wen,
    Port3_Addr,
    Port3_Data_To_Bram,
    Port3_Data_From_Bram,	 

    //Kernel computation starting flag
    Computation_Start,

    //Kernel computation done flag
    Computation_Done

);
parameter SYS_DWIDTH=32;
parameter BYTE_LEN = 4;
parameter DWIDTH = 32;

input                       Clk;
input                       LowClk;
input                       Resetn;

output                      Port0_Clk;
output                      Port0_Rst;
output                      Port0_En;
output [BYTE_LEN-1 : 0]     Port0_Wen;
output [SYS_DWIDTH-1 : 0]   Port0_Addr;
output [SYS_DWIDTH-1 : 0]   Port0_Data_To_Bram;
input  [SYS_DWIDTH-1 : 0]   Port0_Data_From_Bram;

output                      Port1_Clk;
output                      Port1_Rst;
output                      Port1_En;
output [BYTE_LEN-1 : 0]     Port1_Wen;
output [SYS_DWIDTH-1 : 0]   Port1_Addr;
output [SYS_DWIDTH-1 : 0]   Port1_Data_To_Bram;
input  [SYS_DWIDTH-1 : 0]   Port1_Data_From_Bram;

output                      Port2_Clk;
output                      Port2_Rst;
output                      Port2_En;
output [BYTE_LEN-1 : 0]     Port2_Wen;
output [SYS_DWIDTH-1 : 0]   Port2_Addr;
output [SYS_DWIDTH-1 : 0]   Port2_Data_To_Bram;
input  [SYS_DWIDTH-1 : 0]   Port2_Data_From_Bram;

output                      Port3_Clk;
output                      Port3_Rst;
output                      Port3_En;
output [BYTE_LEN-1 : 0]     Port3_Wen;
output [SYS_DWIDTH-1 : 0]   Port3_Addr;
output [SYS_DWIDTH-1 : 0]   Port3_Data_To_Bram;
input  [SYS_DWIDTH-1 : 0]   Port3_Data_From_Bram;

//Typical handshaking signals
//Computation_Start(issued by software), Computation_Done (issued by hardware),
//     ________________________________________
//____/                                        \_____________
//                         _________________________
//________________________/                         \________
//                         
input                       Computation_Start;
output                      Computation_Done;

wire                        PE_Array_Busy;
wire [SYS_DWIDTH-1 : 0]     Data0_Load;
wire [SYS_DWIDTH-1 : 0]     Data1_Load;
wire [SYS_DWIDTH-1 : 0]     Data0_Store;
wire [SYS_DWIDTH-1 : 0]     Data1_Store;


Torus2x2 #(DWIDTH, SYS_DWIDTH) Torus2x2(
    .Clk(Clk), 
    .Resetn(Resetn),

    .Data0_Load(Data0_Load), 
    .Data0_Store(Data0_Store),
    .Data1_Load(Data1_Load),
    .Data1_Store(Data1_Store),

    .PE_Array_Busy(PE_Array_Busy)
);

BramIF #(SYS_DWIDTH,BYTE_LEN) BramIF(
    //System signals
    .Clk(Clk),
    .LowClk(LowClk),
    .Resetn(Resetn),

    //Data port
    .Port0_Clk(Port0_Clk),
    .Port0_Rst(Port0_Rst),
    .Port0_En(Port0_En),
    .Port0_Wen(Port0_Wen),
    .Port0_Addr(Port0_Addr),
    .Port0_Data_To_Bram(Port0_Data_To_Bram),
    .Port0_Data_From_Bram(Port0_Data_From_Bram),

    //Data port
    .Port1_Clk(Port1_Clk),
    .Port1_Rst(Port1_Rst),
    .Port1_En(Port1_En),
    .Port1_Wen(Port1_Wen),
    .Port1_Addr(Port1_Addr),
    .Port1_Data_To_Bram(Port1_Data_To_Bram),
    .Port1_Data_From_Bram(Port1_Data_From_Bram),

    //Memory addr control port
    .Port2_Clk(Port2_Clk),
    .Port2_Rst(Port2_Rst),
    .Port2_En(Port2_En),
    .Port2_Wen(Port2_Wen),
    .Port2_Addr(Port2_Addr),
    .Port2_Data_To_Bram(Port2_Data_To_Bram),
    .Port2_Data_From_Bram(Port2_Data_From_Bram),

    //Memory addr control port
    .Port3_Clk(Port3_Clk),
    .Port3_Rst(Port3_Rst),
    .Port3_En(Port3_En),
    .Port3_Wen(Port3_Wen),
    .Port3_Addr(Port3_Addr),
    .Port3_Data_To_Bram(Port3_Data_To_Bram),
    .Port3_Data_From_Bram(Port3_Data_From_Bram),

    //CGRA port
    .Port0_Data_To_CGRA(Data0_Load),
    .Port0_Data_From_CGRA(Data0_Store),
    .Port1_Data_To_CGRA(Data1_Load),
    .Port1_Data_From_CGRA(Data1_Store),

    //Controlling signals
    .PE_Array_Busy(PE_Array_Busy),
    .Computation_Start(Computation_Start),
    .Computation_Done(Computation_Done)
);

endmodule
