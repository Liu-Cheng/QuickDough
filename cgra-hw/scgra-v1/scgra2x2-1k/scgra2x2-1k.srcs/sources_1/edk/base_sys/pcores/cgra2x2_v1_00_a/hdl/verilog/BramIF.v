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

module BramIF(

    //System signals
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
	 
	 //Port for CGRA
	 Port0_Data_To_CGRA,
	 Port0_Data_From_CGRA,
	 Port1_Data_To_CGRA,
	 Port1_Data_From_CGRA,
	 
	 PE_Array_Busy,
	 Computation_Start,
	 Computation_Done	 
    );

parameter SYS_DWIDTH = 32;
parameter BYTE_LEN = 4;
parameter DBUF_AWIDTH = 11; // Maxium depth of the data buffer is 2k.
parameter ABUF_DWIDTH = 16; // Data width of the address buffer is 16.
parameter ABUF_AWIDTH = 12; // Maximum depth of the address buffer is 4k.

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

input [SYS_DWIDTH-1 : 0]    Port0_Data_From_CGRA;
output[SYS_DWIDTH-1 : 0]    Port0_Data_To_CGRA;
input [SYS_DWIDTH-1 : 0]    Port1_Data_From_CGRA;
output[SYS_DWIDTH-1 : 0]    Port1_Data_To_CGRA;
input                       Computation_Start;
output                      Computation_Done;
output                      PE_Array_Busy;

reg                         Computation_Start_Reg0;
reg                         Computation_Start_Reg1;
reg                         Computation_Start_Reg2;
reg                         Computation_Start_Reg3;
reg                         Computation_Done_Reg0;
reg                         Computation_Done_Reg1;
reg                         Computation_Done_Reg2;
reg                         Computation_Done_Reg3;
reg [ABUF_AWIDTH-1: 0]      CGRA_Cnt;
reg [ABUF_AWIDTH-1: 0]      CGRA_Cnt_Reg0;
reg [ABUF_AWIDTH-1: 0]      CGRA_Cnt_Reg1;

wire                        Computation_Start_Falling_Edge;
wire [ABUF_DWIDTH-1 : 0]    Addr_Buffer0_Out;
wire [ABUF_DWIDTH-1 : 0]    Addr_Buffer1_Out;

/*----------------------------------------------------------------------------------------- 
Work item --> The computation on PE array. It may just use part of the data stored on FPGA.
Kernel --> The computation using the data stored on FPGA.
001 -->  Kernel computation is done.
010 -->  Work item computation is done.
100 -->  Both kernel computation and work item are busy computing.
000, 011, 101, 110, 111 --> reserved status
-----------------------------------------------------------------------------------------*/
wire[2:0]                   PE_Array_Status_Wire;
reg [2:0]                   PE_Array_Status;
reg                         PE_Array_Busy;

//Synchronizer: AXI Bus Clock --> CGRA clock
always@(posedge Clk or negedge Resetn) begin
    if(Resetn==1'b0) begin
        Computation_Start_Reg0 <= 1'b0;
	     Computation_Start_Reg1 <= 1'b0;
	     Computation_Start_Reg2 <= 1'b0;
	     Computation_Start_Reg3 <= 1'b0;
    end
    else begin
        Computation_Start_Reg0 <= Computation_Start;
	     Computation_Start_Reg1 <= Computation_Start_Reg0;
	     Computation_Start_Reg2 <= Computation_Start_Reg1;
	     Computation_Start_Reg3 <= Computation_Start_Reg2;
    end
end

//Synchronizer: CGRA clock --> AXI Bus clock
always@(posedge LowClk or negedge Resetn) begin
    if(Resetn==1'b0) begin
	     Computation_Done_Reg1 <= 1'b0;
	     Computation_Done_Reg2 <= 1'b0;
	     Computation_Done_Reg3 <= 1'b0;
    end
    else begin
	     Computation_Done_Reg1 <= Computation_Done_Reg0;
	     Computation_Done_Reg2 <= Computation_Done_Reg1;
	     Computation_Done_Reg3 <= Computation_Done_Reg2;
  end
end

assign Computation_Done = Computation_Done_Reg3;
assign Computation_Start_Falling_Edge = (Computation_Start_Reg2==1'b0 && Computation_Start_Reg3==1'b1);

always@(posedge Clk or negedge Resetn) begin
    if(Resetn==1'b0) begin
        PE_Array_Status <= 3'b000;
    end
    else begin
       PE_Array_Status <= PE_Array_Status_Wire;
    end
end

//Generate workitem status;
always@(posedge Clk or negedge Resetn) begin
    if(Resetn==1'b0) begin
      PE_Array_Busy <= 1'b0;
    end
    else if(PE_Array_Status==3'b100 && Computation_Start_Reg2==1'b1) begin
        PE_Array_Busy <= 1'b1;
    end
    else begin
        PE_Array_Busy <= 1'b0;
    end
end

//Generate the address of the address buffers
always@(posedge Clk or negedge Resetn) begin 
    if(Resetn==1'b0) begin
      CGRA_Cnt <= 0;
    end
    else if((PE_Array_Status==3'b100 || PE_Array_Status==3'b010) && Computation_Start_Reg2==1'b1) begin
        CGRA_Cnt <= CGRA_Cnt+1;
    end
    else if(PE_Array_Status==3'b001 && Computation_Start_Reg2==1'b1) begin
        CGRA_Cnt <= CGRA_Cnt;
    end
    else begin
        CGRA_Cnt <= 0;
    end
end

always@(posedge Clk or negedge Resetn) begin
    if(Resetn==1'b0) begin
        CGRA_Cnt_Reg0 <= 0;
        CGRA_Cnt_Reg1 <= 0;
    end
    else begin
        CGRA_Cnt_Reg0 <= CGRA_Cnt;
        CGRA_Cnt_Reg1 <= CGRA_Cnt_Reg0;
    end
end

//Generate the computation done signal
always@(posedge Clk or negedge Resetn) begin
    if(Resetn==1'b0) begin
        Computation_Done_Reg0 <= 1'b0;
    end
    else if(PE_Array_Status==3'b001) begin
        Computation_Done_Reg0 <= 1'b1;
    end
    else if(Computation_Start_Falling_Edge==1'b1) begin
        Computation_Done_Reg0 <= 1'b0;
    end
    else begin
        Computation_Done_Reg0 <= Computation_Done_Reg0;
    end
end

//CGRA port
assign Port0_Data_To_CGRA = Port0_Data_From_Bram;
assign Port1_Data_To_CGRA = Port1_Data_From_Bram;

//Bram0 is controlled by data in Bram2
//AXI BRAM controller and BRAM use Byte as the addressing granularity during system implementation.
//While the primitive BRAM use the data width as the addressing granularity at CGRA verification stage.
assign Port0_Clk = Clk;
assign Port0_Rst = !Resetn;
assign Port0_En  = Addr_Buffer0_Out[15];
assign Port0_Wen = {Addr_Buffer0_Out[14],Addr_Buffer0_Out[14],Addr_Buffer0_Out[14],Addr_Buffer0_Out[14]}; 
assign PE_Array_Status_Wire = Addr_Buffer0_Out[13:11];
assign Port0_Addr = {19'b0, Addr_Buffer0_Out[10:0], 2'b0};
//assign Port0_Addr = {21'b0, Addr_Buffer0_Out[10:0]};
assign Port0_Data_To_Bram = Port0_Data_From_CGRA;

//Bram1 is controlled by data in Bram3
assign Port1_Clk = Clk;
assign Port1_Rst = !Resetn;
assign Port1_En  = Addr_Buffer1_Out[15];
assign Port1_Wen = {Addr_Buffer1_Out[14],Addr_Buffer1_Out[14],Addr_Buffer1_Out[14],Addr_Buffer1_Out[14]};
//assign PE_Array_Status_Wire = Addr_Buffer1_Out[13:11];
assign Port1_Addr = {19'b0, Addr_Buffer1_Out[10:0], 2'b0};
//assign Port1_Addr = {19'b0, Addr_Buffer1_Out[10:0]};
assign Port1_Data_To_Bram = Port1_Data_From_CGRA;

Addr_Buffer0 Addr_Buffer0(
    .clka(Clk),
    .addra(CGRA_Cnt_Reg1),
    .douta(Addr_Buffer0_Out)
);

Addr_Buffer1 Addr_Buffer1(
    .clka(Clk),
    .addra(CGRA_Cnt_Reg1),
    .douta(Addr_Buffer1_Out)
);

endmodule
