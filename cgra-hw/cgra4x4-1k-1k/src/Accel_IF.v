`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:18:05 06/18/2013 
// Design Name: 
// Module Name:    BramIF 
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

module Accel_IF(
    Clk,
	 LowClk,
	 Resetn,
	 
	 CGRA_Ena,
	 Accel_Start,
	 Accel_Done,
    
	 DBuf0_Status,
    ABuf0_Addr,
    DBuf0_Wea,
    DBuf0_Push,
    DBuf0_Pop,

    DBuf1_Status,
    ABuf1_Addr,
    DBuf1_Wea,
    DBuf1_Push,
    DBuf1_Pop
	 
    );	 

parameter DWIDTH = 32;
parameter ADWIDTH = 16;

input                       Clk;
input                       LowClk;
input                       Resetn;
output                      CGRA_Ena;
input                       Accel_Start;
output                      Accel_Done;

input [1:0]                 DBuf0_Status;
output [ADWIDTH-1 : 0]      ABuf0_Addr;
output                      DBuf0_Wea;
input                       DBuf0_Push;
input                       DBuf0_Pop;

input [1:0]                 DBuf1_Status;
output [ADWIDTH-1 : 0]      ABuf1_Addr;
output                      DBuf1_Wea;
input                       DBuf1_Push;
input                       DBuf1_Pop;

reg                         Accel_Start_Reg0;
reg                         Accel_Start_Reg1;
reg                         Accel_Start_Reg2;
reg                         Accel_Start_Reg3;
reg                         Accel_Done_Reg0;
reg                         Accel_Done_Reg1;
reg                         Accel_Done_Reg2;
reg                         Accel_Done_Reg3;
wire                        Accel_Start_Falling_Edge;
wire                        ABuf0_Inc_Cond;
wire                        ABuf_Clear_Cond;
wire                        ABuf1_Inc_Cond;

/*----------------------------------------------------------------------------------------- 
DFG --> The computation on PE array. It may just use part of the data stored on FPGA.
Group --> The computation using the data stored on FPGA.
01 -->  Compute is on going.
10 -->  DFG computation is done.
11 -->  Jump to next DFG execution
00 -->  Group computation is done.
-----------------------------------------------------------------------------------------*/
reg                         CGRA_Ena;
reg [1:0]                   DBuf0_Status_Reg;
reg [1:0]                   DBuf1_Status_Reg;
reg [ADWIDTH-1 : 0]         ABuf0_Addr;
reg [ADWIDTH-1 : 0]         ABuf1_Addr;
reg                         DBuf0_Wea;
reg                         DBuf1_Wea;

//Synchronizer: AXI Bus Clock --> CGRA clock
always@(posedge Clk or negedge Resetn) begin
    if(Resetn==1'b0) begin
        Accel_Start_Reg0 <= 1'b0;
	     Accel_Start_Reg1 <= 1'b0;
	     Accel_Start_Reg2 <= 1'b0;
	     Accel_Start_Reg3 <= 1'b0;
    end
    else begin
        Accel_Start_Reg0 <= Accel_Start;
	     Accel_Start_Reg1 <= Accel_Start_Reg0;
	     Accel_Start_Reg2 <= Accel_Start_Reg1;
	     Accel_Start_Reg3 <= Accel_Start_Reg2;
    end
end

//Synchronizer: CGRA clock --> AXI Bus clock
always@(posedge LowClk or negedge Resetn) begin
    if(Resetn==1'b0) begin
	     Accel_Done_Reg1 <= 1'b0;
	     Accel_Done_Reg2 <= 1'b0;
	     Accel_Done_Reg3 <= 1'b0;
    end
    else begin
	     Accel_Done_Reg1 <= Accel_Done_Reg0;
	     Accel_Done_Reg2 <= Accel_Done_Reg1;
	     Accel_Done_Reg3 <= Accel_Done_Reg2;
  end
end

assign Accel_Done = Accel_Done_Reg3;
assign Accel_Start_Falling_Edge = (Accel_Start_Reg2==1'b0 && Accel_Start_Reg3==1'b1);

always@(posedge Clk or negedge Resetn) begin
    if(Resetn == 1'b0) begin
	     DBuf0_Status_Reg <= 2'b0;
		  DBuf1_Status_Reg <= 2'b0;
	 end
	 else begin
	    DBuf0_Status_Reg <= DBuf0_Status;
		 DBuf1_Status_Reg <= DBuf1_Status;
	 end
end

always@(posedge Clk or negedge Resetn) begin
    if(Resetn==1'b0) begin
      CGRA_Ena <= 1'b0;
    end
    else if(DBuf0_Status_Reg==2'b01 || DBuf0_Status_Reg==2'b10) begin
        CGRA_Ena <= 1'b1;
    end
    else begin
        CGRA_Ena <= 1'b0;
    end
end


//Generate the computation done signal
always@(posedge Clk or negedge Resetn) begin
    if(Resetn==1'b0) begin
        Accel_Done_Reg0 <= 1'b0;
    end
    else if(Accel_Start_Falling_Edge==1'b1) begin
        Accel_Done_Reg0 <= 1'b0;
    end
	 else if(DBuf0_Status_Reg==2'b10) begin
        Accel_Done_Reg0 <= 1'b1;
    end
    else begin
        Accel_Done_Reg0 <= Accel_Done_Reg0;
    end
end

always@(posedge Clk or negedge Resetn) begin
    if(Resetn == 1'b0) begin
	     DBuf0_Wea <= 1'b0;
		  DBuf1_Wea <= 1'b0;
	 end
	 else begin
	     DBuf0_Wea <= (DBuf0_Push == 1'b1) && (DBuf0_Pop == 1'b0);
		  DBuf1_Wea <= (DBuf1_Push == 1'b1) && (DBuf1_Pop == 1'b0);
	 end
end


assign ABuf0_Inc_Cond = ((DBuf0_Push==1'b1 || DBuf0_Pop==1'b1) && (DBuf0_Status_Reg==2'b01)) || (DBuf0_Status_Reg==2'b10) || (DBuf0_Status_Reg==2'b11);
assign ABuf1_Inc_Cond = ((DBuf1_Push==1'b1 || DBuf1_Pop==1'b1) && (DBuf1_Status_Reg==2'b01)) || (DBuf1_Status_Reg==2'b10) || (DBuf1_Status_Reg==2'b11);
assign ABuf_Clear_Cond = (Accel_Start_Falling_Edge==1'b1);

always@(posedge Clk or negedge Resetn) begin
    if(Resetn == 1'b0) begin
	     ABuf0_Addr <= 0;
	 end
	 else if(ABuf_Clear_Cond) begin
	     ABuf0_Addr <= 0;
	 end
	 else if(ABuf0_Inc_Cond & Accel_Start_Reg3) begin
	     ABuf0_Addr <= ABuf0_Addr + 1;
	 end
	 else begin
	     ABuf0_Addr <= ABuf0_Addr;
	 end
end

always@(posedge Clk or negedge Resetn) begin
    if(Resetn == 1'b0) begin
	     ABuf1_Addr <= 0;
	 end
	 else if(ABuf_Clear_Cond) begin
	     ABuf1_Addr <= 0;
	 end
	 else if(ABuf1_Inc_Cond & Accel_Start_Reg3) begin
	     ABuf1_Addr <= ABuf1_Addr + 1;
	 end
	 else begin
	     ABuf1_Addr <= ABuf1_Addr;
	 end
end

endmodule
