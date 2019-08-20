`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2014 11:41:58 AM
// Design Name: 
// Module Name: scgra-top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module scgra_top(
    Clk,
    LowClk,
    Resetn,
    Computation_Start,
    Computation_Done
    );
    
input Clk;
input LowClk;
input Resetn;
input Computation_Start;
output Computation_Done;    

wire Port0_Clk;
wire Port0_Rst;
wire Port0_En;
wire [3:0] Port0_Wen;
wire [31:0] Port0_Addr;
wire [31:0] Port0_Data_To_Bram;
wire Port1_Clk;
wire Port1_Rst;
wire Port1_En;
wire [3:0] Port1_Wen;
wire [31:0] Port1_Addr;
wire [31:0] Port1_Data_To_Bram;
wire Port2_Clk;
wire Port2_Rst;
wire Port2_En;
wire [3:0] Port2_Wen;
wire [31:0] Port2_Addr;
wire [31:0] Port2_Data_To_Bram;
wire Port3_Clk;
wire Port3_Rst;
wire Port3_En;
wire [3:0] Port3_Wen;
wire [31:0] Port3_Addr;
wire [31:0] Port3_Data_To_Bram;

wire [31:0] Port0_Data_From_Bram;
wire [31:0] Port1_Data_From_Bram;
wire [31:0] Port2_Data_From_Bram;
wire [31:0] Port3_Data_From_Bram;

cgra2x2 cgra2x2(
		.Clk(Clk), 
		.LowClk(LowClk),
		.Resetn(Resetn), 
		.Port0_Clk(Port0_Clk), 
		.Port0_Rst(Port0_Rst), 
		.Port0_En(Port0_En), 
		.Port0_Wen(Port0_Wen), 
		.Port0_Addr(Port0_Addr), 
		.Port0_Data_To_Bram(Port0_Data_To_Bram), 
		.Port0_Data_From_Bram(Port0_Data_From_Bram), 
		
		.Port1_Clk(Port1_Clk), 
		.Port1_Rst(Port1_Rst), 
		.Port1_En(Port1_En), 
		.Port1_Wen(Port1_Wen), 
		.Port1_Addr(Port1_Addr), 
		.Port1_Data_To_Bram(Port1_Data_To_Bram), 
		.Port1_Data_From_Bram(Port1_Data_From_Bram), 
		
		.Port2_Clk(Port2_Clk), 
		.Port2_Rst(Port2_Rst), 
		.Port2_En(Port2_En), 
		.Port2_Wen(Port2_Wen), 
		.Port2_Addr(Port2_Addr), 
		.Port2_Data_To_Bram(Port2_Data_To_Bram), 
		.Port2_Data_From_Bram(Port2_Data_From_Bram), 
		
		.Port3_Clk(Port3_Clk), 
		.Port3_Rst(Port3_Rst), 
		.Port3_En(Port3_En), 
		.Port3_Wen(Port3_Wen), 
		.Port3_Addr(Port3_Addr), 
		.Port3_Data_To_Bram(Port3_Data_To_Bram), 
		.Port3_Data_From_Bram(Port3_Data_From_Bram), 
		
		.Computation_Start(Computation_Start),
		.Computation_Done(Computation_Done)
	);
	
    IO_Buffer Buffer0(
      .clka(Port0_Clk),
      .ena(Port0_En),
      .wea(Port0_Wen),
      .addra(Port0_Addr),
      .dina(Port0_Data_To_Bram),
      .douta(Port0_Data_From_Bram)
    );	
	
    IO_Buffer Buffer1(
      .clka(Port1_Clk),
      .ena(Port1_En),
      .wea(Port1_Wen),
      .addra(Port1_Addr),
      .dina(Port1_Data_To_Bram),
      .douta(Port1_Data_From_Bram)
    );	
    
    IO_Buffer Buffer2(
      .clka(Port2_Clk),
      .ena(Port2_En),
      .wea(Port2_Wen),
      .addra(Port2_Addr),
      .dina(Port2_Data_To_Bram),
      .douta(Port2_Data_From_Bram)
    );	
    
    IO_Buffer Buffer3(
      .clka(Port3_Clk),
      .ena(Port3_En),
      .wea(Port3_Wen),
      .addra(Port3_Addr),
      .dina(Port3_Data_To_Bram),
      .douta(Port3_Data_From_Bram)
    );	
            	
	endmodule
