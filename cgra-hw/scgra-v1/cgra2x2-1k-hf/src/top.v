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
Clk, Resetn, D_in, D_out, PE_Array_Busy
    );

parameter DWIDTH=32;
parameter SYS_DWIDTH=32;

input                    Clk;
input                    Resetn;
input [7:0]              D_in;
output[7:0]              D_out;
input                    PE_Array_Busy;

//input
reg [SYS_DWIDTH-1:0]   Data0_Load;
reg [SYS_DWIDTH-1:0]   Data1_Load;

//output
wire [SYS_DWIDTH-1:0]  Data0_Store;
wire [SYS_DWIDTH-1:0]  Data1_Store;
reg [7:0] D_out;
reg [15:0] tmp1;
reg [15:0] tmp2;


always@(posedge Clk or negedge Resetn) begin
    if(Resetn == 1'b0) begin
	     D_out <= 0;
		  tmp1 <= 0;
		  tmp2 <= 0;
	 end
	 else begin
	     tmp1 <= Data0_Store[15:0] & Data1_Store[15:0];
		  tmp2 <= Data0_Store[31:16] & Data1_Store[31:16];
		  D_out <= tmp1[15:8] & tmp1[7:0] & tmp2[15:8] & tmp2[7:0];
	 end
end

always@(posedge Clk or negedge Resetn) begin
    if(Resetn == 1'b0) begin
	     Data0_Load <= 0;
		  Data1_Load <= 0;
	 end
	 else begin
	     Data0_Load <= {D_in, D_in, D_in, D_in};
		  Data1_Load <= {D_in, D_in, D_in, D_in};
	 end
end

Torus2x2 Torus2x2 (

    .Clk(Clk),
    .Resetn(Resetn),

    .Data0_Load(Data0_Load),
    .Data0_Store(Data0_Store),
    .Data1_Load(Data1_Load),
    .Data1_Store(Data1_Store),
    .PE_Array_Busy(PE_Array_Busy)
);


endmodule
