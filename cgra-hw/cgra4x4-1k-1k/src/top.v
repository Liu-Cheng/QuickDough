`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:58:12 05/25/2015 
// Design Name: 
// Module Name:    top 
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

// It is simply used to cheat the tools that there is just limited IO to obtain timing information 
module top(
    Clk, Resetn, Accel_Start, Accel_Done, False_Out0, False_Out1
);

parameter DWIDTH = 32;
parameter ADWIDTH = 16;
parameter SYS_DWIDTH = 32;

input                  Clk;
input                  Resetn;
input                  Accel_Start;
output                 Accel_Done;
output [7:0]           False_Out0;
output [7:0]           False_Out1;

wire [1:0]             DBuf0_Status;
wire [1:0]             DBuf1_Status;
wire                   CGRA_Ena;

wire [ADWIDTH-1 : 0]   ABuf0_Addr;
wire                   DBuf0_Pop;
wire [DWIDTH-1 : 0]    Data0_Load;
wire                   DBuf0_Push;
wire [DWIDTH-1 : 0]    Data0_Store;
wire                   DBuf0_Wea;

wire [ADWIDTH-1 : 0]   ABuf1_Addr;
wire                   DBuf1_Pop;
wire [DWIDTH-1 : 0]    Data1_Load;
wire                   DBuf1_Push;
wire [DWIDTH-1 : 0]    Data1_Store;
wire                   DBuf1_Wea;

reg [DWIDTH-1 : 0]     Data0_Load_Reg;
reg [DWIDTH-1 : 0]     Data1_Load_Reg;

Accel_IF Accel_IF(
    .Clk(Clk),
	 .LowClk(Clk),
	 .Resetn(Resetn),
	 .CGRA_Ena(CGRA_Ena),
	 .Accel_Start(Accel_Start),
	 .Accel_Done(Accel_Done),
	 
	 .DBuf0_Status(DBuf0_Status),
	 .ABuf0_Addr(ABuf0_Addr),
	 .DBuf0_Wea(DBuf0_Wea),
	 .DBuf0_Push(DBuf0_Push),
	 .DBuf0_Pop(DBuf0_Pop),
	 
	 .DBuf1_Status(DBuf1_Status),
	 .ABuf1_Addr(ABuf1_Addr),
	 .DBuf1_Wea(DBuf1_Wea),
	 .DBuf1_Push(DBuf1_Push),
	 .DBuf1_Pop(DBuf1_Pop)
);

IOBuf InBuf(
    .Clk(Clk),
	 .ABuf_Addr(ABuf0_Addr),
	 .DBuf_Wea(DBuf0_Wea),
	 .Data_In(Data0_Store),
	 .Data_Out(Data0_Load),
	 .DBuf_Status(DBuf0_Status)
);

IOBuf OutBuf(
    .Clk(Clk),
	 .ABuf_Addr(ABuf1_Addr),
	 .DBuf_Wea(DBuf1_Wea),
	 .Data_In(Data1_Store),
	 .Data_Out(Data1_Load),
	 .DBuf_Status(DBuf1_Status)
);

always@(posedge Clk or negedge Resetn) begin
    if(Resetn == 1'b0) begin
	     Data0_Load_Reg <= 0;
		  Data1_Load_Reg <= 0;
	 end
	 else begin
	     Data0_Load_Reg <= Data0_Load;
		  Data1_Load_Reg <= Data1_Load;
	 end
end

assign False_Out0 = Data0_Load_Reg[7:0] & Data0_Load_Reg[15:8] & Data0_Load_Reg[23:16] & Data0_Load_Reg[31:24];
assign False_Out1 = Data1_Load_Reg[7:0] & Data1_Load_Reg[15:8] & Data1_Load_Reg[23:16] & Data1_Load_Reg[31:24];

Torus4x4 Torus4x4 (

    .Clk(Clk),
    .Resetn(Resetn),

    .Data0_Load(Data0_Load),
    .Data0_Store(Data0_Store),
    .Data1_Load(Data1_Load),
    .Data1_Store(Data1_Store),
	 
	 .IOBuf0_Push(DBuf0_Push),
	 .IOBuf0_Pop(DBuf0_Pop),
	 .IOBuf1_Push(DBuf1_Push),
	 .IOBuf1_Pop(DBuf1_Pop),
	 
    .CGRA_Ena(CGRA_Ena)
);


endmodule
