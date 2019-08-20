`include "acc_ctrl_v1_0_tb_include.vh"

// lite_response Type Defines
`define RESPONSE_OKAY 2'b00
`define RESP_BUS_WIDTH 2
`define BURST_TYPE_INCR  2'b01
`define BURST_TYPE_WRAP  2'b10
// AMBA AXI 4 Lite Range Constants
`define AXILITE_MAX_BURST_LENGTH 1
`define AXILITE_DATA_BUS_WIDTH 32
`define AXILITE_ADDRESS_BUS_WIDTH 32
`define AXILITE_MAX_DATA_SIZE (`AXILITE_DATA_BUS_WIDTH*`AXILITE_MAX_BURST_LENGTH)/8

module acc_ctrl_v1_0_tb;
	reg tb_ACLK;
	reg tb_ARESETn;

	// Create an instance of the example tb
	`BD_WRAPPER dut (.ACLK(tb_ACLK),
				.ARESETN(tb_ARESETn));

	// Local Variables
	reg [`AXILITE_DATA_BUS_WIDTH-1:0] rd_data_lite;
	reg [`AXILITE_DATA_BUS_WIDTH-1:0] test_data_lite [3:0];
	reg [2-1:0] lite_response;
	reg [`AXILITE_ADDRESS_BUS_WIDTH-1:0] AXI_Acc_Ctrl_mtestAddress;
	reg [3-1:0]   mtestProtection_lite;
	integer                     mtestvectorlite; // Master side testvector
	integer                     mtestdatasizelite;


	// Simple Reset Generator and test
	initial begin
		tb_ARESETn = 1'b0;
	  #500;
		// Release the reset on the posedge of the clk.
		@(posedge tb_ACLK);
	  tb_ARESETn = 1'b1;
		@(posedge tb_ACLK);
	end

	// Simple Clock Generator
	initial tb_ACLK = 1'b0;
	always #10 tb_ACLK = !tb_ACLK;

	//------------------------------------------------------------------------
	// TEST LEVEL API: CHECK_RESPONSE_OKAY
	//------------------------------------------------------------------------
	// Description:
	// CHECK_RESPONSE_OKAY(lite_response)
	// This task checks if the return lite_response is equal to OKAY
	//------------------------------------------------------------------------
	task automatic CHECK_RESPONSE_OKAY;
		input [`RESP_BUS_WIDTH-1:0] response;
		begin
		  if (response !== `RESPONSE_OKAY) begin
			  $display("TESTBENCH ERROR! lite_response is not OKAY",
				         "\n expected = 0x%h",`RESPONSE_OKAY,
				         "\n actual   = 0x%h",response);
		    $stop;
		  end
		end
	endtask

	//------------------------------------------------------------------------
	// TEST LEVEL API: COMPARE_LITE_DATA
	//------------------------------------------------------------------------
	// Description:
	// COMPARE_LITE_DATA(expected,actual)
	// This task checks if the actual data is equal to the expected data.
	// X is used as don't care but it is not permitted for the full vector
	// to be don't care.
	//------------------------------------------------------------------------
	task automatic COMPARE_LITE_DATA;
		input [(`AXILITE_DATA_BUS_WIDTH*(`AXILITE_MAX_BURST_LENGTH+1))-1:0] expected;
		input [(`AXILITE_DATA_BUS_WIDTH*(`AXILITE_MAX_BURST_LENGTH+1))-1:0] actual;
		begin
			if (expected === 'hx || actual === 'hx) begin
				$display("TESTBENCH ERROR! COMPARE_LITE_DATA cannot be performed with an expected or actual vector that is all 'x'!");
		    $stop;
		  end

			if (actual != expected) begin
				$display("TESTBENCH ERROR! Data expected is not equal to actual.",
				         "\nexpected = 0x%h",expected,
				         "\nactual   = 0x%h",actual);
		    $stop;
		  end
		end
	endtask

	task automatic AXI_Acc_Ctrl_TEST;
		begin
			$display("---------------------------------------------------------");
			$display("EXAMPLE TEST");
			$display("Simple sequential write and read burst transfers example");
			$display("---------------------------------------------------------");

			mtestvectorlite = 0;
			AXI_Acc_Ctrl_mtestAddress = `AXI_Acc_Ctrl_SLAVE_ADDRESS;
			mtestProtection_lite = 0;
			mtestdatasizelite = `AXILITE_MAX_DATA_SIZE;

			for (mtestvectorlite = 0; mtestvectorlite <= 3; mtestvectorlite = mtestvectorlite + 1)
			begin
			  dut.`BD_INST_NAME.master_0.cdn_axi4_lite_master_bfm_inst.WRITE_BURST_CONCURRENT(AXI_Acc_Ctrl_mtestAddress,
					                   mtestProtection_lite,
					                   test_data_lite[mtestvectorlite],
					                   mtestdatasizelite,
					                   lite_response);
			  $display("EXAMPLE TEST 1a : DATA = 0x%h, lite_response = 0x%h",test_data_lite[mtestvectorlite],lite_response);
			  CHECK_RESPONSE_OKAY(lite_response);
			  dut.`BD_INST_NAME.master_0.cdn_axi4_lite_master_bfm_inst.READ_BURST(AXI_Acc_Ctrl_mtestAddress,
				                     mtestProtection_lite,
				                     rd_data_lite,
				                     lite_response);
			  $display("EXAMPLE TEST %d : DATA = 0x%h, lite_response = 0x%h",mtestvectorlite,rd_data_lite,lite_response);
			  CHECK_RESPONSE_OKAY(lite_response);
			  COMPARE_LITE_DATA(test_data_lite[mtestvectorlite],rd_data_lite);
			  $display("EXAMPLE TEST %d : Sequential write and read burst transfers complete from the master side. %d",mtestvectorlite,mtestvectorlite);
			  AXI_Acc_Ctrl_mtestAddress = AXI_Acc_Ctrl_mtestAddress + 32'h00000004;
			end

			$display("---------------------------------------------------------");
			$display("EXAMPLE TEST SLAVE : PTGEN_TEST_FINISHED!");
			$display("---------------------------------------------------------");
		end
	endtask

	// Create the test vectors
	initial begin
		// When performing debug enable all levels of INFO messages.
		wait(tb_ARESETn === 0) @(posedge tb_ACLK);
		wait(tb_ARESETn === 1) @(posedge tb_ACLK);
		wait(tb_ARESETn === 1) @(posedge tb_ACLK);     
		wait(tb_ARESETn === 1) @(posedge tb_ACLK);     
		wait(tb_ARESETn === 1) @(posedge tb_ACLK);  

		dut.`BD_INST_NAME.master_0.cdn_axi4_lite_master_bfm_inst.set_channel_level_info(1);

		// Create test data vectors
		test_data_lite[0] = 32'h0101FFFF;
		test_data_lite[1] = 32'habcd0001;
		test_data_lite[2] = 32'hdead0011;
		test_data_lite[3] = 32'hbeef0011;
	end

	// Drive the BFM
	initial begin
		// Wait for end of reset
		wait(tb_ARESETn === 0) @(posedge tb_ACLK);
		wait(tb_ARESETn === 1) @(posedge tb_ACLK);
		wait(tb_ARESETn === 1) @(posedge tb_ACLK);     
		wait(tb_ARESETn === 1) @(posedge tb_ACLK);     
		wait(tb_ARESETn === 1) @(posedge tb_ACLK);     

		AXI_Acc_Ctrl_TEST();

	end

endmodule
