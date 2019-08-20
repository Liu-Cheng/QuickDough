`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:48:23 06/19/2013
// Design Name:   top
// Module Name:   C:/Users/liucheng/Documents/project/myhwlib/cgra2x2/top_testbench.v
// Project Name:  cgra2x2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module top_testbench;

    integer fhandle;
	// Inputs
	reg Clk;
	reg LowClk;
	reg Resetn;	
	
	wire [31:0] Port0_Data_From_Bram;
	wire [31:0] Port1_Data_From_Bram;

	// Outputs
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
	
	wire Computation_Start;
	wire Computation_Done;

	acc_ctrl acc_ctrl(
        .LowClk(LowClk),
        .Resetn(Resetn),
        .Computation_Start(Computation_Start),
        .Computation_Done(Computation_Done)
        );
        
	// Instantiate the Unit Under Test (UUT)
	cgra2x2 uut (
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
		
		.Computation_Start(Computation_Start),
		.Computation_Done(Computation_Done)
	);

	initial begin
		// Initialize Inputs
		Clk = 0;
		LowClk=0;
		Resetn = 0;
        fhandle=$fopen("PE00-result.txt");
        
		//Keep reset for 5 cycles
		#10;
		Resetn=1;
				
		#160000
		$finish;

	end
	

	always@(posedge Clk) begin
	  if(uut.BramIF.Port1_Wen==4'b1111 && uut.BramIF.Port1_En==1'b1) begin
	      $display("CGRA writes %d to output buffer[%d]!\n", uut.BramIF.Port1_Data_To_Bram, uut.BramIF.Port1_Addr);
	    end
	 end
	
	 
	 /*
	 //If youw want to display signed data, make sure the signal is declared as signed.
	 always@(posedge Clk) begin
	   if(uut.torus2x2.PE00.Wea==1'b1) begin
	     $display("ALU computation result %D is written to data memory!\n", uut.torus2x2.PE00.Data_Mem_In0);
	   end
	 end
	 */
	
	always #1 Clk=~Clk;
	always #2 LowClk=~LowClk;
	
	data_buffer0 data_buffer0(
      .clka(Port0_Clk),
      .ena(Port0_En),
      .wea(Port0_Wen),
      .addra(Port0_Addr),
      .dina(Port0_Data_To_Bram),
      .douta(Port0_Data_From_Bram)
    );
    
    data_buffer1 data_buffer1(
      .clka(Port1_Clk),
      .ena(Port1_En),
      .wea(Port1_Wen),
      .addra(Port1_Addr),
      .dina(Port1_Data_To_Bram),
      .douta(Port1_Data_From_Bram)
    );
                  
endmodule

