// -----------------------------------------------------------------------------
// Copyright (c) 2016
// Sense Time Group Ltd.
// All rights reserved
// ST Ltd. Proprietary and Confidential
// -----------------------------------------------------------------------------
// FILE NAME :  axi4lite_slave.v
// PROJECT :    KSS
// DEPARTMENT : HPC Group 
// AUTHOR :     Darcy Li 
// -----------------------------------------------------------------------------
// REVISION HISTORY
// VERSION    DATE        AUTHOR      DESCRIPTION
//   1.0   2016.08.22     Darcy Li   Initial
// 
// -----------------------------------------------------------------------------
// PURPOSE : This is a module for AXI4 Lite slaver. 
//
//
// -----------------------------------------------------------------------------
// REUSE ISSUES
// Reset Strategy :     Active low, asynchronous reset
// Clock Domains :      ACLK   
// Critical Timing :
// Test Features :
// Asynchronous I/F :
// Scan Methodology :
// Instantiations :
// Synthesizable (y/n) :
// Other :
// -----------------------------------------------------------------------------

`timescale 1ns/1ps
module axi4lite_slave
#(parameter
    C_S_AXI_ADDR_WIDTH = 5,
    C_S_AXI_DATA_WIDTH = 32//,
    //CONFIG_ADDR_WIDTH = 6,
    //CONFIG_DATA_WIDTH = 32
)(
    // axi4 lite slave signals
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    // user signals
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle,

	input  wire [C_S_AXI_DATA_WIDTH-1:0] in_reg0,
	input  wire [C_S_AXI_DATA_WIDTH-1:0] in_reg1,
	input  wire [C_S_AXI_DATA_WIDTH-1:0] in_reg2,
	input  wire [C_S_AXI_DATA_WIDTH-1:0] in_reg3,

	output wire [C_S_AXI_DATA_WIDTH-1:0] out_reg0,
	output wire [C_S_AXI_DATA_WIDTH-1:0] out_reg1,
	output wire [C_S_AXI_DATA_WIDTH-1:0] out_reg2,
	output wire [C_S_AXI_DATA_WIDTH-1:0] out_reg3

	//input								 face_usr_int,		//interrupt pluse
	//input								 face_usr_idle,		//interrupt pluse
	//output								 face_usr_ena,		//interrupt pluse
	//output [31:0]						 face_usr_addr,		//interrupt pluse
    //output wire          				 config_ena,
    //output reg   [CONFIG_ADDR_WIDTH-1:0] config_addr,
    //output reg   [CONFIG_DATA_WIDTH-1:0] config_wdata,
    //input        [CONFIG_DATA_WIDTH-1:0] config_rdata,
    //output wire [31: 0]                  max_count
);
//------------------------Address Info-------------------
// 0x00 : User reg0 	(Read/Write)
//       32bit data
// 0x04 : User reg1		(Read/Write)
//       32bit data
// 0x08 : User reg2 	(Read/Write)
//       32bit data
// 0x0c : User reg3 	(Read/Write)
//       32bit data
// 0x10 : Control signals
//       bit 0  - ap_start (Read/Write/COH)
//       bit 1  - ap_done (Read/COR)
//       bit 2  - ap_idle (Read)
//       bit 3  - ap_ready (Read)
//       bit 4  - config_ena (Write)
//       bit 5  - config_data_sel (Read/Write)
//       bit 6  - face_usr_ena (Read/Write)
//       bit 7  - auto_restart (Read/Write)
//       bit 8  - face_usr_idle (Read)
//       bit 9  - face_usr_int (Read)
//       others - reserved
// 0x14 : Global Interrupt Enable Register
//       bit 0  - Global Interrupt Enable (Read/Write)
//       others - reserved
// 0x18 : IP Interrupt Enable Register (Read/Write)
//       bit 0  - Channel 0 (ap_done)
//       bit 1  - Channel 1 (ap_ready)
//       others - reserved
// 0x1c : IP Interrupt Status Register (Read/TOW)
//       bit 0  - Channel 0 (ap_done)
//       bit 1  - Channel 1 (ap_ready)
//       others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_USR0	 = 5'h0,
    ADDR_USR1	 = 5'h4,
    ADDR_USR2 	 = 5'h8,
    ADDR_USR3 	 = 5'hc,
    ADDR_AP_CTRL = 5'h10,
    ADDR_GIE     = 5'h14,
    ADDR_IER     = 5'h18,
    ADDR_ISR     = 5'h1c,
    WRIDLE       = 2'd0,
    WRDATA       = 2'd1,
    WRRESP       = 2'd2,
    RDIDLE       = 2'd0,
    RDDATA       = 2'd1,
    ADDR_BITS    = C_S_AXI_ADDR_WIDTH;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [31:0]                   wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate;
    reg  [1:0]                    rnext;
    reg  [31:0]                   rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    wire                          int_ap_idle;
    wire                          int_ap_ready;
    reg                           int_ap_done;
    reg                           int_ap_start;
    reg                           int_auto_restart;
    reg                           int_gie;
    reg  [1:0]                    int_ier;
    reg  [1:0]                    int_isr;
	//user logic
	reg	[C_S_AXI_DATA_WIDTH-1:0]					  int_reg0;
	reg	[C_S_AXI_DATA_WIDTH-1:0]					  int_reg1;
	reg	[C_S_AXI_DATA_WIDTH-1:0]					  int_reg2;
	reg	[C_S_AXI_DATA_WIDTH-1:0]					  int_reg3;

	//reg							  int_data_sel;
	//reg							  int_config_ena;
	//reg							  int_face_usr_ena;
	//reg  [31:0]					  int_face_usr_addr;
    //reg [31: 0]                   int_max_count;
    //reg [31: 0]                   counter;
	//wire						  counter_done;

//------------------------Instantiation------------------

//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRIDLE;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDIDLE;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            //rdata <= 1'b0;
            case (raddr)
				ADDR_USR0: begin
                    rdata <= in_reg0;
				end
				ADDR_USR1: begin
                    rdata <= in_reg1;
				end
				ADDR_USR2: begin
                    rdata <= in_reg2;
				end
				ADDR_USR3: begin
                    rdata <= in_reg3;
				end
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    //rdata[4] <= int_config_ena;
                    //rdata[5] <= int_data_sel;
                    //rdata[6] <= int_face_usr_ena;
                    rdata[7] <= int_auto_restart;
                    //rdata[8] <= face_usr_idle;
                    //rdata[9] <= face_usr_int;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
		        //ADDR_USR_ADDR: begin
		        //  rdata <= config_addr;
		        //end
		        //ADDR_USR_DATA: begin
		        //  rdata <= int_data_sel ? config_wdata : config_rdata;
				//end
		        //ADDR_DEBUG: begin
		        //  rdata <= int_face_usr_addr;
		        //end
		        //ADDR_DEBUG_ID: begin
		        //  rdata <= 32'h5a5aa5a5;
		        //end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt    = int_gie & (|int_isr);
assign ap_start     = int_ap_start;
//assign max_count    = int_max_count;
assign int_ap_idle  = ap_idle;
assign int_ap_ready = ap_ready;

//assign config_ena = int_config_ena;
//assign face_usr_ena = int_face_usr_ena;
//assign face_usr_addr = int_face_usr_addr;
assign	out_reg0 = int_reg0;
assign	out_reg1 = int_reg1;
assign	out_reg2 = int_reg2;
assign	out_reg3 = int_reg3;

//user logic registers
always @(posedge ACLK) begin
    if (ARESET)
        int_reg0 <= {C_S_AXI_DATA_WIDTH{1'b0}};
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_USR0)
          int_reg0 <= WDATA[C_S_AXI_DATA_WIDTH-1:0];
    end
end

always @(posedge ACLK) begin
    if (ARESET)
        int_reg1 <= {C_S_AXI_DATA_WIDTH{1'b0}};
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_USR1)
          int_reg1 <= WDATA[C_S_AXI_DATA_WIDTH-1:0];
    end
end

always @(posedge ACLK) begin
    if (ARESET)
        int_reg2 <= {C_S_AXI_DATA_WIDTH{1'b0}};
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_USR2)
          int_reg2 <= WDATA[C_S_AXI_DATA_WIDTH-1:0];
    end
end

always @(posedge ACLK) begin
    if (ARESET)
        int_reg3 <= {C_S_AXI_DATA_WIDTH{1'b0}};
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_USR3)
          int_reg3 <= WDATA[C_S_AXI_DATA_WIDTH-1:0];
    end
end
//only for debug interrupt
//assign counter_done = (counter == int_max_count);
//always @(posedge ACLK) begin
//    if (ARESET)
//        counter <= 32'b0;
//    else if (ACLK_EN) begin
//        if (int_ap_start && (counter < int_max_count))
//			counter <=counter+1;
//		else if(!int_ap_start)
//        	counter <= 32'b0;
//    end
//end
// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
		else if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && ~WDATA[0])
            int_ap_start <= 1'b0;
        else if (int_ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

//always @(posedge ACLK) begin
//    if (ARESET)
//        int_max_count <= 32'h80000000;
//    else if (ACLK_EN) begin
//        if (w_hs && waddr == ADDR_DEBUG_ID)
//            int_max_count <= WDATA;
//    end
//end

//config ena
//always @(posedge ACLK) begin
//    if (ARESET)
//        int_config_ena <= 1'b0;
//    else if (ACLK_EN) begin
//        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[4])
//            int_config_ena <= 1'b1;
//        else 
//            int_config_ena <= 1'b0; // clear on next cycle 
//    end
//end

//config data selection 
//always @(posedge ACLK) begin
//    if (ARESET)
//        int_data_sel <= 1'b0;
//    else if (ACLK_EN) begin
//        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
//            int_data_sel <= WDATA[5];
//    end
//end

//face usr ena
//always @(posedge ACLK) begin
//    if (ARESET)
//        int_face_usr_ena <= 1'b0;
//    else if (ACLK_EN) begin
//        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[6])
//            int_face_usr_ena <= 1'b1;
//        else 
//            int_face_usr_ena <= 1'b0; // clear on next cycle 
//    end
//end

//config address
//always @(posedge ACLK) begin
//    if (ARESET)
//        config_addr <= {CONFIG_ADDR_WIDTH{1'b0}};
//    else if (ACLK_EN) begin
//        if (w_hs && waddr == ADDR_USR_ADDR)
//            config_addr <= WDATA[CONFIG_ADDR_WIDTH-1:0];
//    end
//end

//config write data
//always @(posedge ACLK) begin
//    if (ARESET)
//        config_wdata <= {CONFIG_DATA_WIDTH{1'b0}};
//    else if (ACLK_EN) begin
//        if (w_hs && waddr == ADDR_USR_DATA)
//            config_wdata <= WDATA[CONFIG_DATA_WIDTH-1:0];
//    end
//end

//debug address for face_usr_addr
//always @(posedge ACLK) begin
//    if (ARESET)
//        int_face_usr_addr <= {CONFIG_ADDR_WIDTH{1'b0}};
//    else if (ACLK_EN) begin
//        if (w_hs && waddr == ADDR_DEBUG)
//            int_face_usr_addr <= WDATA[31:0];
//    end
//end


// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (ap_done)
            int_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_done <= 1'b0; // clear on read
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)		//face interrupt
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)	//timer interrupt
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

//------------------------Memory logic-------------------

endmodule
