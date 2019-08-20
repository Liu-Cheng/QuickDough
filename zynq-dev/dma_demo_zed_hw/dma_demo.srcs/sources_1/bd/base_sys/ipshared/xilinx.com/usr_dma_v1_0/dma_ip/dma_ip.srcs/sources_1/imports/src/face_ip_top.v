// -----------------------------------------------------------------------------
// Copyright (c) 2016
// Sense Time Group Ltd.
// All rights reserved
// ST Ltd. Proprietary and Confidential
// -----------------------------------------------------------------------------
// FILE NAME :  face_ip_top.v
// PROJECT :    KSS
// DEPARTMENT : HPC Group 
// AUTHOR :     Darcy Li 
// -----------------------------------------------------------------------------
// REVISION HISTORY
// VERSION    DATE        AUTHOR      DESCRIPTION
//   1.0   2016.08.22     Darcy Li   Initial
// 
// -----------------------------------------------------------------------------
// PURPOSE : This is the top module of face ip with AXI interface.  
//
//
// -----------------------------------------------------------------------------
// REUSE ISSUES
// Reset Strategy :     Active Low, asynchronous reset
// Clock Domains :      S_AXI_CLK, M00_AXI_ACLK,M01_AXI_ACLK,M02_AXI_ACLK,M03_AXI_ACLK,M04_AXI_ACLK,M05_AXI_ACLK
// Critical Timing :
// Test Features :
// Asynchronous I/F :
// Scan Methodology :
// Instantiations :
// Synthesizable (y/n) :
// Other :
// -----------------------------------------------------------------------------

`timescale 1ns/1ns
module face_ip_top #(
    parameter C_S_AXI_ADDR_WIDTH = 5,
    parameter C_S_AXI_DATA_WIDTH = 32,

		parameter integer C_M_AXI_BURST_LEN	    = 256,
		// Thread ID Width
		parameter integer C_M_AXI_ID_WIDTH	    = 1,
		// Width of Address Bus
		parameter integer C_M_AXI_ADDR_WIDTH	= 32,
		// Width of Data Bus
		parameter integer C_M_AXI_DATA_WIDTH	= 32,
		// Width of User Write Address Bus
		parameter integer C_M_AXI_AWUSER_WIDTH	= 0,
		// Width of User Read Address Bus
		parameter integer C_M_AXI_ARUSER_WIDTH	= 0,
		// Width of User Write Data Bus
		parameter integer C_M_AXI_WUSER_WIDTH	= 0,
		// Width of User Read Data Bus
		parameter integer C_M_AXI_RUSER_WIDTH	= 0,
		// Width of User Response Bus
		parameter integer C_M_AXI_BUSER_WIDTH	= 0		


	)
	(
	//user logic start
	output	wire						face_ready,
	input	wire						face_sel,	//0: external 1: internel
	input	wire						face_ena,
	input	wire	[31:0]				face_addr,
	//user logic end 
	input	wire							S_AXI_ACLK,
	input   wire							S_AXI_ARESETN,
	input   wire							S_AXI_AWVALID,
	output  wire							S_AXI_AWREADY,
	input	wire [C_S_AXI_ADDR_WIDTH-1:0] 	S_AXI_AWADDR,
	input   wire							S_AXI_WVALID,
	output  wire							S_AXI_WREADY,
	input	wire [C_S_AXI_DATA_WIDTH-1:0] 	S_AXI_WDATA,
	input	wire [C_S_AXI_DATA_WIDTH/8-1:0]	S_AXI_WSTRB,
	input	wire   							S_AXI_ARVALID,
	output 	wire  							S_AXI_ARREADY,
	input  	wire [C_S_AXI_ADDR_WIDTH-1:0] 	S_AXI_ARADDR,
	output  wire 							S_AXI_RVALID,
	input   wire 							S_AXI_RREADY,
	output  wire [C_S_AXI_DATA_WIDTH-1:0] 	S_AXI_RDATA,
	output  wire [1:0] 						S_AXI_RRESP,
	output  wire 							S_AXI_BVALID,
	input  	wire 							S_AXI_BREADY,
	output  wire [1:0] 						S_AXI_BRESP,
	
    output wire                          interrupt,

		input wire                                M0_AXI_ACLK,
		input wire                                M0_AXI_ARESETN,
		output wire [C_M_AXI_ID_WIDTH-1 : 0]      M0_AXI_AWID,
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0]    M0_AXI_AWADDR,
		output wire [7 : 0]                       M0_AXI_AWLEN,
		output wire [2 : 0]                       M0_AXI_AWSIZE,
		output wire [1 : 0]                       M0_AXI_AWBURST,
		output wire                               M0_AXI_AWLOCK,
		output wire [3 : 0]                       M0_AXI_AWCACHE,
		output wire [2 : 0]                       M0_AXI_AWPROT,
		output wire [3 : 0]                       M0_AXI_AWQOS,
		output wire [C_M_AXI_AWUSER_WIDTH-1 : 0]  M0_AXI_AWUSER,
		output wire                               M0_AXI_AWVALID,
		input wire                                M0_AXI_AWREADY,
		output wire [C_M_AXI_DATA_WIDTH-1 : 0]    M0_AXI_WDATA,
		output wire [C_M_AXI_DATA_WIDTH/8-1 : 0]  M0_AXI_WSTRB,
		output wire                               M0_AXI_WLAST,
		output wire [C_M_AXI_WUSER_WIDTH-1 : 0]   M0_AXI_WUSER,
		output wire                               M0_AXI_WVALID,
		input wire                                M0_AXI_WREADY,
		input wire [C_M_AXI_ID_WIDTH-1 : 0]       M0_AXI_BID,
		input wire [1 : 0]                        M0_AXI_BRESP,
		input wire [C_M_AXI_BUSER_WIDTH-1 : 0]    M0_AXI_BUSER,
		input wire                                M0_AXI_BVALID,
		output wire                               M0_AXI_BREADY,
		output wire [C_M_AXI_ID_WIDTH-1 : 0]      M0_AXI_ARID,
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0]    M0_AXI_ARADDR,
		output wire [7 : 0]                       M0_AXI_ARLEN,
		output wire [2 : 0]                       M0_AXI_ARSIZE,
		output wire [1 : 0]                       M0_AXI_ARBURST,
		output wire                               M0_AXI_ARLOCK,
		output wire [3 : 0]                       M0_AXI_ARCACHE,
		output wire [2 : 0]                       M0_AXI_ARPROT,
		output wire [3 : 0]                       M0_AXI_ARQOS,
		output wire [C_M_AXI_ARUSER_WIDTH-1 : 0]  M0_AXI_ARUSER,
		output wire                               M0_AXI_ARVALID,
		input wire                                M0_AXI_ARREADY,
		input wire [C_M_AXI_ID_WIDTH-1 : 0]       M0_AXI_RID,
		input wire [C_M_AXI_DATA_WIDTH-1 : 0]     M0_AXI_RDATA,
		input wire [1 : 0]                        M0_AXI_RRESP,
		input wire                                M0_AXI_RLAST,
		input wire [C_M_AXI_RUSER_WIDTH-1 : 0]    M0_AXI_RUSER,
		input wire                                M0_AXI_RVALID,
		output wire                               M0_AXI_RREADY

		);

    localparam CONFIG_ADDR_WIDTH = 10;
    localparam CONFIG_DATA_WIDTH = 32;
	localparam CUR_PORT = 1;
	localparam CUW_PORT = 1;
	localparam VR = CUR_PORT;
	localparam VW = CUW_PORT;

wire           cnn_config_ena    ;
wire    [31:0] cnn_config_saddr   ;
wire    [31:0] cnn_config_daddr   ;
wire    [31:0] cnn_config_lbyte   ;

wire  [CUR_PORT-1:0]        rmst_ctrl_fixed_location   ;   //    read_0_control.fixed_location
wire  [CUR_PORT*32-1:0]     rmst_ctrl_read_base        ;        //                  .read_base
wire  [CUR_PORT*32-1:0]     rmst_ctrl_read_length      ;      //                  .read_length
wire  [CUR_PORT-1:0]        rmst_ctrl_go               ;               //                  .go
wire  [CUR_PORT-1:0]        rmst_ctrl_done             ;             //                  .done
wire  [CUR_PORT-1:0]        rmst_user_read_buffer         ;         //       read_0_user.read_buffer
wire  [CUR_PORT*128-1:0]    rmst_user_buffer_data  ;  //                  .buffer_output_data
wire  [CUR_PORT-1:0]        rmst_user_data_available      ;      //                  .data_available

wire  [CUW_PORT-1:0]        wmst_ctrl_fixed_location  ;  //   write_0_control.fixed_location
wire  [CUW_PORT*32-1:0]     wmst_ctrl_write_base      ;      //                  .write_base
wire  [CUW_PORT*32-1:0]     wmst_ctrl_write_length    ;    //                  .write_length
wire  [CUW_PORT-1:0]        wmst_ctrl_go              ;              //                  .go
wire  [CUW_PORT-1:0]        wmst_ctrl_done            ;            //                  .done
wire  [CUW_PORT-1:0]        wmst_user_write_buffer        ;       //      write_0_user.write_buffer
wire  [CUW_PORT*128-1:0]    wmst_user_write_input_data    ;  //                  .buffer_input_data
wire  [CUW_PORT-1:0]        wmst_user_buffer_full        ;// 

wire	clk,rst;

wire [31:0] cfg_in_reg0;
wire [31:0] cfg_in_reg1;
wire [31:0] cfg_in_reg2;
wire [31:0] cfg_in_reg3;

wire [31:0] cfg_out_reg0;
wire [31:0] cfg_out_reg1;
wire [31:0] cfg_out_reg2;
wire [31:0] cfg_out_reg3;

wire [31:0] cfg_out_reg0_sync;
wire [31:0] cfg_out_reg1_sync;
wire [31:0] cfg_out_reg2_sync;
wire [31:0] cfg_out_reg3_sync;

wire [31:0] cfg_in_reg0_sync;
wire [31:0] cfg_in_reg1_sync;
wire [31:0] cfg_in_reg2_sync;
wire [31:0] cfg_in_reg3_sync;

wire		face_usr_int;
wire		face_usr_idle;
wire		face_usr_ena;
wire [31:0]	face_usr_saddr;
wire [31:0]	face_usr_daddr;
wire [31:0]	face_usr_lbyte;

wire		config_face_usr_int;
wire		config_face_usr_idle;

//(* KEEP = "ture" *) reg			config_face_usr_ena;
//(* KEEP = "ture" *) reg [31:0]	config_face_usr_addr;

assign	clk = M0_AXI_ACLK;//S_AXI_ACLK;
assign	rst = ~M0_AXI_ARESETN;//~S_AXI_ARESETN;
wire	M00_AXI_ACLK = M0_AXI_ACLK;//S_AXI_ACLK;
wire	M00_AXI_ARESETN = M0_AXI_ARESETN;//~S_AXI_ARESETN;
//assign		face_ready = 1'b1;

//interrupt test
wire [31: 0] max_count = {cfg_out_reg0_sync[31:16],16'h8000};
reg [31: 0] count;
wire   ap_start,ap_start_sync; // Start the accelerator, level high sensitive 
wire    ap_done, ap_done_expand,ap_done_expand_sync;  // Done flag of the accelerator, it is used as user interruption signal (edge sensitive)
wire    ap_idle, ap_idle_sync;
wire    ap_ready, ap_ready_expand, ap_ready_expand_sync;

always@(posedge clk) begin
    if(rst == 1'b1) begin
        count <= 0;
    end
    else if(ap_start) begin
       count <= count + 1;
    end
    else if(count == max_count) begin
       count <= 0;
    end
    else begin
       count <= 0;
    end
end

assign	ap_idle = ((ap_start == 0) && (count == 0));

axi4lite_slave
#(
    .C_S_AXI_ADDR_WIDTH(C_S_AXI_ADDR_WIDTH),
    .C_S_AXI_DATA_WIDTH(C_S_AXI_DATA_WIDTH)//,
)	axi4lite_slave_inst (
    // axi4 lite slave signals
    .ACLK		(S_AXI_ACLK		),
    .ARESET		(~S_AXI_ARESETN		),
    .ACLK_EN	(1'b1),//S_AXI_ACLK_EN	),
    .AWADDR		(S_AXI_AWADDR		),
    .AWVALID	(S_AXI_AWVALID	),
    .AWREADY	(S_AXI_AWREADY	),
    .WDATA		(S_AXI_WDATA		),
    .WSTRB		(S_AXI_WSTRB		),
    .WVALID		(S_AXI_WVALID		),
    .WREADY		(S_AXI_WREADY		),
    .BRESP		(S_AXI_BRESP		),
    .BVALID		(S_AXI_BVALID		),
    .BREADY		(S_AXI_BREADY		),
    .ARADDR		(S_AXI_ARADDR		),
    .ARVALID	(S_AXI_ARVALID	),
    .ARREADY	(S_AXI_ARREADY	),
    .RDATA		(S_AXI_RDATA		),
    .RRESP		(S_AXI_RRESP		),
    .RVALID		(S_AXI_RVALID		),
    .RREADY		(S_AXI_RREADY		),
    .interrupt	(interrupt	),
    
    .ap_start	(ap_start	),
    .ap_done	(ap_done	),
    .ap_ready	(ap_ready	),
    .ap_idle	(ap_idle_sync	),
	.in_reg0	(cfg_in_reg0_sync	),
	.in_reg1	(cfg_in_reg1_sync	),
	.in_reg2	(cfg_in_reg2_sync	),
	.in_reg3	(cfg_in_reg3_sync	),
	.out_reg0	(cfg_out_reg0	),
	.out_reg1	(cfg_out_reg1	),
	.out_reg2	(cfg_out_reg2	),
	.out_reg3	(cfg_out_reg3	)
);

    axi4_full_master #(
	.C_M_AXI_BURST_LEN(C_M_AXI_BURST_LEN),
	.C_M_AXI_ID_WIDTH(C_M_AXI_ID_WIDTH),
	.C_M_AXI_ADDR_WIDTH(C_M_AXI_ADDR_WIDTH),
	.C_M_AXI_DATA_WIDTH(C_M_AXI_DATA_WIDTH),
	.C_M_AXI_AWUSER_WIDTH(C_M_AXI_AWUSER_WIDTH),
	.C_M_AXI_ARUSER_WIDTH(C_M_AXI_ARUSER_WIDTH),
	.C_M_AXI_WUSER_WIDTH(C_M_AXI_WUSER_WIDTH),
	.C_M_AXI_RUSER_WIDTH(C_M_AXI_RUSER_WIDTH),
	.C_M_AXI_BUSER_WIDTH(C_M_AXI_BUSER_WIDTH)
			) axi4_master_inst_cu0 (      
        .wmst_ctrl_fixed_location (wmst_ctrl_fixed_location[0]),
        .wmst_ctrl_write_base     (wmst_ctrl_write_base[31:0]    ),
        .wmst_ctrl_write_length   (wmst_ctrl_write_length[31:0]),
        .wmst_ctrl_go             (wmst_ctrl_go[0]            ),
        .wmst_ctrl_done           (wmst_ctrl_done[0]          ),
        .wmst_user_write_buffer   (wmst_user_write_buffer[0]  ),
        .wmst_user_buffer_data    (wmst_user_write_input_data[127:0]   ),
        .wmst_user_buffer_full    (wmst_user_buffer_full[0]   ),
        .rmst_ctrl_fixed_location (rmst_ctrl_fixed_location[0]    ),
        .rmst_ctrl_read_base      (rmst_ctrl_read_base[31:0]    ),
        .rmst_ctrl_read_length    (rmst_ctrl_read_length[31:0]  ),
        .rmst_ctrl_go             (rmst_ctrl_go[0]                ),
        .rmst_ctrl_done           (rmst_ctrl_done[0]              ),
        .rmst_ctrl_early_done     (        ),
        .rmst_user_read_buffer    (rmst_user_read_buffer[0]       ),
        .rmst_user_buffer_data    (rmst_user_buffer_data[127:0]  ),
        .rmst_user_data_available (rmst_user_data_available[0]),
        .M_AXI_ACLK               (M0_AXI_ACLK   ),
        .M_AXI_ARESETN            (M0_AXI_ARESETN),
        .M_AXI_AWID               (M0_AXI_AWID   ),
        .M_AXI_AWADDR             (M0_AXI_AWADDR ),
        .M_AXI_AWLEN              (M0_AXI_AWLEN  ),
        .M_AXI_AWSIZE             (M0_AXI_AWSIZE ),
        .M_AXI_AWBURST            (M0_AXI_AWBURST),
        .M_AXI_AWLOCK             (M0_AXI_AWLOCK ),
        .M_AXI_AWCACHE            (M0_AXI_AWCACHE),
        .M_AXI_AWPROT             (M0_AXI_AWPROT ),
        .M_AXI_AWQOS              (M0_AXI_AWQOS  ),
        .M_AXI_AWUSER             (M0_AXI_AWUSER ),
        .M_AXI_AWVALID            (M0_AXI_AWVALID),
        .M_AXI_AWREADY            (M0_AXI_AWREADY),
        .M_AXI_WDATA              (M0_AXI_WDATA  ),
        .M_AXI_WSTRB              (M0_AXI_WSTRB  ),
        .M_AXI_WLAST              (M0_AXI_WLAST  ),
        .M_AXI_WUSER              (M0_AXI_WUSER  ),
        .M_AXI_WVALID             (M0_AXI_WVALID ),
        .M_AXI_WREADY             (M0_AXI_WREADY ),
        .M_AXI_BID                (M0_AXI_BID    ),
        .M_AXI_BRESP              (M0_AXI_BRESP  ),
        .M_AXI_BUSER              (M0_AXI_BUSER  ),
        .M_AXI_BVALID             (M0_AXI_BVALID ),
        .M_AXI_BREADY             (M0_AXI_BREADY ),
        .M_AXI_ARID               (M0_AXI_ARID   ),
        .M_AXI_ARADDR             (M0_AXI_ARADDR ),
        .M_AXI_ARLEN              (M0_AXI_ARLEN  ),
        .M_AXI_ARSIZE             (M0_AXI_ARSIZE ),
        .M_AXI_ARBURST            (M0_AXI_ARBURST),
        .M_AXI_ARLOCK             (M0_AXI_ARLOCK ),
        .M_AXI_ARCACHE            (M0_AXI_ARCACHE),
        .M_AXI_ARPROT             (M0_AXI_ARPROT ),
        .M_AXI_ARQOS              (M0_AXI_ARQOS  ),
        .M_AXI_ARUSER             (M0_AXI_ARUSER ),
        .M_AXI_ARVALID            (M0_AXI_ARVALID),
        .M_AXI_ARREADY            (M0_AXI_ARREADY),
        .M_AXI_RID                (M0_AXI_RID    ),
        .M_AXI_RDATA              (M0_AXI_RDATA  ),
        .M_AXI_RRESP              (M0_AXI_RRESP  ),
        .M_AXI_RLAST              (M0_AXI_RLAST  ),
        .M_AXI_RUSER              (M0_AXI_RUSER  ),
        .M_AXI_RVALID             (M0_AXI_RVALID ),
        .M_AXI_RREADY             (M0_AXI_RREADY )
    );    

face_dma  face_dma_inst (
    //.config_ena     ( cnn_config_ena & (~cnn_config_addr[CONFIG_ADDR_WIDTH-1]) ),
    //.config_addr    ( cnn_config_addr[CONFIG_ADDR_WIDTH-2:0]  ),
    //.config_wdata   ( cnn_config_wdata ),
    //.config_rdata   ( cnn_config_rdata ),
	//.face_usr_int	( face_usr_int  ),
	//.face_usr_idle	( face_usr_idle ),
	//.face_usr_ena	( face_usr_ena  ),
	//.face_usr_addr	( face_usr_addr ),

	.dma_csr_idle	( face_usr_idle ),
	.dma_csr_ena	( face_usr_ena  ),
	.dma_csr_lbyte	( face_usr_lbyte ),
	.dma_csr_saddr	( face_usr_saddr ),
	.dma_csr_daddr	( face_usr_daddr ),
    
    .wmst_ctrl_fixed_location   ( wmst_ctrl_fixed_location[VW-1:0]          ),
    .wmst_ctrl_write_base       ( wmst_ctrl_write_base[VW*32-1:(0+0)*32]    ),
    .wmst_ctrl_write_length     ( wmst_ctrl_write_length[VW*32-1:(0+0)*32]  ),
    .wmst_ctrl_go               ( wmst_ctrl_go[VW-1:0]                          ),
    .wmst_ctrl_done             ( wmst_ctrl_done[VW-1:0]                        ),
    .wmst_user_write_buffer     ( wmst_user_write_buffer[VW-1:0]                ),
    .wmst_user_write_input_data ( wmst_user_write_input_data[VW*128-1:(0+0)*128]        ),
    .wmst_user_buffer_full      ( wmst_user_buffer_full[VW-1:0]             ),
    
    .rmst_ctrl_fixed_location   ( rmst_ctrl_fixed_location[VR-1:0]          ),
    .rmst_ctrl_read_base        ( rmst_ctrl_read_base[VR*32-1:(0+0)*32]     ),
    .rmst_ctrl_read_length      ( rmst_ctrl_read_length[VR*32-1:(0+0)*32]   ),
    .rmst_ctrl_go               ( rmst_ctrl_go[VR-1:0]                      ),
    .rmst_ctrl_done             ( rmst_ctrl_done[VR-1:0]                    ),
    .rmst_user_read_buffer      ( rmst_user_read_buffer[VR-1:0]             ),
    .rmst_user_buffer_data      ( rmst_user_buffer_data[VR*128-1:(0+0)*128] ),
    .rmst_user_data_available   ( rmst_user_data_available[VR-1:0]          ),

    .clk( clk ),
    .rst( rst )
);

cnn_sync_rff #(.WIDTH(32))	cfg_out_reg0_sync_inst (.clk(M00_AXI_ACLK), .rst_n(M00_AXI_ARESETN), .in(cfg_out_reg0), .out(cfg_out_reg0_sync));
cnn_sync_rff #(.WIDTH(32))	cfg_out_reg1_sync_inst (.clk(M00_AXI_ACLK), .rst_n(M00_AXI_ARESETN), .in(cfg_out_reg1), .out(cfg_out_reg1_sync));
cnn_sync_rff #(.WIDTH(32))	cfg_out_reg2_sync_inst (.clk(M00_AXI_ACLK), .rst_n(M00_AXI_ARESETN), .in(cfg_out_reg2), .out(cfg_out_reg2_sync));
cnn_sync_rff #(.WIDTH(32))	cfg_out_reg3_sync_inst (.clk(M00_AXI_ACLK), .rst_n(M00_AXI_ARESETN), .in(cfg_out_reg3), .out(cfg_out_reg3_sync));

cnn_sync_rff #(.WIDTH(1))	ap_start_sync_inst (.clk(M00_AXI_ACLK), .rst_n(M00_AXI_ARESETN), .in(ap_start), .out(ap_start_sync));
cnn_sync_rff #(.WIDTH(1))	ap_idle_sync_inst (.clk(S_AXI_ACLK), .rst_n(S_AXI_ARESETN), .in(ap_idle), .out(ap_idle_sync));

cnn_expand #(.WIDTH(4))	face_int_expand_inst (.clk(M00_AXI_ACLK), .rst_n(M00_AXI_ARESETN), .in(config_face_usr_int), .out(ap_done_expand));
cnn_sync_rff #(.WIDTH(1))	ap_done_expand_sync_inst (.clk(S_AXI_ACLK), .rst_n(S_AXI_ARESETN), .in(ap_done_expand), .out(ap_done_expand_sync));
cnn_edge_p 				ap_done_edge_inst (.clk(S_AXI_ACLK), .rst_n(S_AXI_ARESETN), .in(ap_done_expand_sync), .out(ap_done));

cnn_expand #(.WIDTH(4))	ap_ready_expand_inst (.clk(M00_AXI_ACLK), .rst_n(M00_AXI_ARESETN), .in((count == max_count)), .out(ap_ready_expand));
cnn_sync_rff #(.WIDTH(1))	ap_ready_expand_sync_inst (.clk(S_AXI_ACLK), .rst_n(S_AXI_ARESETN), .in(ap_ready_expand), .out(ap_ready_expand_sync));
cnn_edge_p 				ap_ready_edge_inst (.clk(S_AXI_ACLK), .rst_n(S_AXI_ARESETN), .in(ap_ready_expand_sync), .out(ap_ready));


assign cnn_config_ena	= cfg_out_reg0_sync[0];
assign cnn_config_saddr	= cfg_out_reg1_sync;
assign cnn_config_daddr	= cfg_out_reg2_sync;
assign cnn_config_lbyte	= cfg_out_reg3_sync;
/*
always @ ( posedge clk )
	if(rst) begin
        config_face_usr_ena <= 1'b0;
        config_face_usr_addr<= 32'd0;
	end
	else if( cnn_config_ena & cnn_config_addr[CONFIG_ADDR_WIDTH-1] ) begin
        config_face_usr_ena <= 1'b1;
        config_face_usr_addr<= cnn_config_wdata;
    end
    else    begin
        config_face_usr_ena <= 1'b0;
        config_face_usr_addr<= 32'd0;
    end
*/

reg face_usr_idle_dly;
always @(posedge M0_AXI_ACLK)
	if(!M0_AXI_ARESETN)
		face_usr_idle_dly <= 1'b0;
	else
		face_usr_idle_dly <= face_usr_idle;

assign	face_usr_int = (!face_usr_idle_dly) & face_usr_idle;

assign	face_ready = face_usr_idle;
assign	config_face_usr_idle = !face_sel ? 1'b0 : face_usr_idle;
assign	config_face_usr_int  = face_usr_int;
assign	face_usr_saddr = cnn_config_saddr;
assign	face_usr_daddr = cnn_config_daddr;
assign	face_usr_lbyte = cnn_config_lbyte;
assign	face_usr_ena = 	 cnn_config_ena;

//    assign cnn_config_user_datain_0 = config_rdata;
//    assign cnn_config_user_datain_1 = {4'b1010, mem_status0, 24'd0, config_ena_r[PP]};
//    assign cnn_config_user_datain_2 = {face_usr_idle, face_usr_int, pll_0_locked_export, 19'd0, config_addr_r[PP]};
//    assign cnn_config_user_datain_3 = config_wdata_r[PP];

//assign	cfg_in_reg0 = cnn_config_rdata;//32'd0;
//assign	cfg_in_reg1 = {4'b1010,3'b0,24'd0,cnn_config_ena};
//assign	cfg_in_reg2 = {config_face_usr_idle,config_face_usr_int,1'd0,19'd0,cnn_config_addr[9:0]};
//assign	cfg_in_reg3 = cnn_config_wdata;

assign	cfg_in_reg0 = {16'h5a5a,14'b0,face_usr_idle,face_usr_ena};//32'd0;
assign	cfg_in_reg1 = face_usr_saddr;
assign	cfg_in_reg2 = face_usr_daddr;
assign	cfg_in_reg3 = face_usr_lbyte;

cnn_sync_rff #(.WIDTH(32))	cfg_in_reg0_sync_inst (.clk(S_AXI_ACLK), .rst_n(S_AXI_ARESETN), .in(cfg_in_reg0), .out(cfg_in_reg0_sync));
cnn_sync_rff #(.WIDTH(32))	cfg_in_reg1_sync_inst (.clk(S_AXI_ACLK), .rst_n(S_AXI_ARESETN), .in(cfg_in_reg1), .out(cfg_in_reg1_sync));
cnn_sync_rff #(.WIDTH(32))	cfg_in_reg2_sync_inst (.clk(S_AXI_ACLK), .rst_n(S_AXI_ARESETN), .in(cfg_in_reg2), .out(cfg_in_reg2_sync));
cnn_sync_rff #(.WIDTH(32))	cfg_in_reg3_sync_inst (.clk(S_AXI_ACLK), .rst_n(S_AXI_ARESETN), .in(cfg_in_reg3), .out(cfg_in_reg3_sync));

endmodule
