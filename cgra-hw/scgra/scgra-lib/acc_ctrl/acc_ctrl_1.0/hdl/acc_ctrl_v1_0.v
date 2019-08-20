	module acc_ctrl_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface AXI_Acc_Ctrl
		parameter integer C_AXI_Acc_Ctrl_DATA_WIDTH	= 32,
		parameter integer C_AXI_Acc_Ctrl_ADDR_WIDTH	= 4
	)
	(
		// Users to add ports here
		output wire Acc_Start,
        input wire Acc_Done,
		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface AXI_Acc_Ctrl
		input wire  axi_acc_ctrl_aclk,
		input wire  axi_acc_ctrl_aresetn,
		input wire [C_AXI_Acc_Ctrl_ADDR_WIDTH-1 : 0] axi_acc_ctrl_awaddr,
		input wire [2 : 0] axi_acc_ctrl_awprot,
		input wire  axi_acc_ctrl_awvalid,
		output wire  axi_acc_ctrl_awready,
		input wire [C_AXI_Acc_Ctrl_DATA_WIDTH-1 : 0] axi_acc_ctrl_wdata,
		input wire [(C_AXI_Acc_Ctrl_DATA_WIDTH/8)-1 : 0] axi_acc_ctrl_wstrb,
		input wire  axi_acc_ctrl_wvalid,
		output wire  axi_acc_ctrl_wready,
		output wire [1 : 0] axi_acc_ctrl_bresp,
		output wire  axi_acc_ctrl_bvalid,
		input wire  axi_acc_ctrl_bready,
		input wire [C_AXI_Acc_Ctrl_ADDR_WIDTH-1 : 0] axi_acc_ctrl_araddr,
		input wire [2 : 0] axi_acc_ctrl_arprot,
		input wire  axi_acc_ctrl_arvalid,
		output wire  axi_acc_ctrl_arready,
		output wire [C_AXI_Acc_Ctrl_DATA_WIDTH-1 : 0] axi_acc_ctrl_rdata,
		output wire [1 : 0] axi_acc_ctrl_rresp,
		output wire  axi_acc_ctrl_rvalid,
		input wire  axi_acc_ctrl_rready
	);
// Instantiation of Axi Bus Interface AXI_Acc_Ctrl
	acc_ctrl_v1_0_AXI_Acc_Ctrl # ( 
		.C_S_AXI_DATA_WIDTH(C_AXI_Acc_Ctrl_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_AXI_Acc_Ctrl_ADDR_WIDTH)
	) acc_ctrl_v1_0_AXI_Acc_Ctrl_inst (
		.Acc_Start(Acc_Start),
        .Acc_Done(Acc_Done),
		.S_AXI_ACLK(axi_acc_ctrl_aclk),
		.S_AXI_ARESETN(axi_acc_ctrl_aresetn),
		.S_AXI_AWADDR(axi_acc_ctrl_awaddr),
		.S_AXI_AWPROT(axi_acc_ctrl_awprot),
		.S_AXI_AWVALID(axi_acc_ctrl_awvalid),
		.S_AXI_AWREADY(axi_acc_ctrl_awready),
		.S_AXI_WDATA(axi_acc_ctrl_wdata),
		.S_AXI_WSTRB(axi_acc_ctrl_wstrb),
		.S_AXI_WVALID(axi_acc_ctrl_wvalid),
		.S_AXI_WREADY(axi_acc_ctrl_wready),
		.S_AXI_BRESP(axi_acc_ctrl_bresp),
		.S_AXI_BVALID(axi_acc_ctrl_bvalid),
		.S_AXI_BREADY(axi_acc_ctrl_bready),
		.S_AXI_ARADDR(axi_acc_ctrl_araddr),
		.S_AXI_ARPROT(axi_acc_ctrl_arprot),
		.S_AXI_ARVALID(axi_acc_ctrl_arvalid),
		.S_AXI_ARREADY(axi_acc_ctrl_arready),
		.S_AXI_RDATA(axi_acc_ctrl_rdata),
		.S_AXI_RRESP(axi_acc_ctrl_rresp),
		.S_AXI_RVALID(axi_acc_ctrl_rvalid),
		.S_AXI_RREADY(axi_acc_ctrl_rready)
	);

	// Add user logic here

	// User logic ends

	endmodule
