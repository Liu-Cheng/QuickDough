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
parameter CTRL_WORDS_NUM = 1024;
parameter DBUF_ADDR_WIDTH=24;

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
wire                        Computation_Start_Falling_Edge;

reg [DBUF_ADDR_WIDTH-1: 0]  CGRA_Cnt;
reg [DBUF_ADDR_WIDTH-1: 0]  CGRA_Cnt_Reg0;
reg [DBUF_ADDR_WIDTH-1: 0]  CGRA_Cnt_Reg1;
reg [DBUF_ADDR_WIDTH-1: 0]  CGRA_Cnt_Reg2;
reg [DBUF_ADDR_WIDTH-1: 0]  CGRA_Cnt_Reg3;

// Work item --> The computation on PE array. It may just use part of the data stored on FPGA.
// Kernel --> The computation using the data stored on FPGA.
//001 -->  Kernel computation is done.
//010 -->  Work item computation is done.
//100 -->  Both kernel computation and work item are busy computing.
//000, 011, 101, 110, 111 --> reserved status
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
    //When it is under ARM+FPGA context
    //CGRA_Cnt <= CGRA_Cnt+4;
    //When it is under pure FPGA context
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
    CGRA_Cnt_Reg2 <= 0;
    CGRA_Cnt_Reg3 <= 0;
  end
  else begin
    CGRA_Cnt_Reg0 <= CGRA_Cnt;
    CGRA_Cnt_Reg1 <= CGRA_Cnt_Reg0;
    CGRA_Cnt_Reg2 <= CGRA_Cnt_Reg1;
    CGRA_Cnt_Reg3 <= CGRA_Cnt_Reg2;
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
assign Port0_En  = Port2_Data_From_Bram[31];
assign Port0_Wen = Port2_Data_From_Bram[30:27];
assign PE_Array_Status_Wire = Port2_Data_From_Bram[26:24];
//When it is under ARM+FPGA context
//assign Port0_Addr = {8'b0, Port2_Data_From_Bram[23:0]} << 2;
//When it is under pure FPGA context
assign Port0_Addr = {8'b0, Port2_Data_From_Bram[23:0]};
assign Port0_Data_To_Bram = Port0_Data_From_CGRA;

//Bram1 is controlled by data in Bram3
assign Port1_Clk = Clk;
assign Port1_Rst = !Resetn;
assign Port1_En  = Port3_Data_From_Bram[31];
assign Port1_Wen = Port3_Data_From_Bram[30:27];
//assign PE_Array_Status_Wire = Port3_Data_From_Bram[26:24];
//When it is under ARM+FPGA context
//assign Port1_Addr = {8'b0, Port3_Data_From_Bram[23:0]} << 2;
//When it is under pure FPGA context
assign Port1_Addr = {8'b0, Port3_Data_From_Bram[23:0]};
assign Port1_Data_To_Bram = Port1_Data_From_CGRA;

//Bram2: Control words memory for Bram0 port, it is read only from the user logic's perspective.
assign Port2_Clk = Clk;
assign Port2_Rst = !Resetn;
assign Port2_En  = 1'b1;
assign Port2_Wen = 4'b0000;
assign Port2_Addr = CGRA_Cnt_Reg3;
assign Port2_Data_To_Bram = 0;

//Bram3: Control words memory for Bram1 port, it is read only from the user logic's perspective.
assign Port3_Clk = Clk;
assign Port3_Rst = !Resetn;
assign Port3_En  = 1'b1;
assign Port3_Wen = 4'b0000;
assign Port3_Addr = CGRA_Cnt_Reg3;
assign Port3_Data_To_Bram = 0;

endmodule
