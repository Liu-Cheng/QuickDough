
`timescale 1 ns / 1 ps

	module axi4_full_master #(
		// Users to add parameters here
        parameter integer ADDRESSWIDTH	        = 32,
        parameter integer DATAWIDTH   	        = 128,
		// User parameters ends
		// Do not modify the parameters beyond this line

		// Base address of targeted slave
		// Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths
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
		// Users to add ports here
		//alvaon master user interface template WRITE channel
        input wire                      wmst_ctrl_fixed_location,  // this only makes sense to enable when MAXBURSTCOUNT = 1
        input wire [ADDRESSWIDTH-1 : 0] wmst_ctrl_write_base,
        input wire [ADDRESSWIDTH-1 : 0] wmst_ctrl_write_length,
        input wire                      wmst_ctrl_go,
        output wire                     wmst_ctrl_done, 
        input wire                      wmst_user_write_buffer,
        input wire [DATAWIDTH-1 : 0]    wmst_user_buffer_data,
        output wire                     wmst_user_buffer_full,
	
		//alvaon master user interface template READ channel
        input wire                      rmst_ctrl_fixed_location,  // this only makes sense to enable when MAXBURSTCOUNT = 1
        input wire [ADDRESSWIDTH-1 : 0] rmst_ctrl_read_base,
        input wire [ADDRESSWIDTH-1 : 0] rmst_ctrl_read_length,
        input wire                      rmst_ctrl_go,
        output wire                     rmst_ctrl_done, 
        output wire                     rmst_ctrl_early_done, 
        input                           rmst_user_read_buffer,
        output wire [DATAWIDTH-1 : 0]   rmst_user_buffer_data,
        output wire                     rmst_user_data_available,
	
		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal.
		input wire                               M_AXI_ACLK,
		// Global Reset Singal. This Signal is Active Low
		input wire                               M_AXI_ARESETN,
		// Master Interface Write Address ID
		output wire [C_M_AXI_ID_WIDTH-1 : 0]     M_AXI_AWID,
		// Master Interface Write Address 
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0]   M_AXI_AWADDR,
		// Burst length. The burst length gives the exact number of transfers in a burst
		output wire [7 : 0]                      M_AXI_AWLEN,
		// Burst size. This signal indicates the size of each transfer in the burst
		output wire [2 : 0]                      M_AXI_AWSIZE,
		// Burst type. The burst type and the size information, 
        // determine how the address for each transfer within the burst is calculated.
		output wire [1 : 0]                      M_AXI_AWBURST,
		// Lock type. Provides additional information about the
        // atomic characteristics of the transfer.
		output wire                              M_AXI_AWLOCK,
		// Memory type. This signal indicates how transactions
        // are required to progress through a system.
		output wire [3 : 0]                      M_AXI_AWCACHE,
		// Protection type. This signal indicates the privilege
        // and security level of the transaction, and whether
        // the transaction is a data access or an instruction access.
		output wire [2 : 0]                      M_AXI_AWPROT,
		// Quality of Service, QoS identifier sent for each write transaction.
		output wire [3 : 0]                      M_AXI_AWQOS,
		// Optional User-defined signal in the write address channel.
		output wire [C_M_AXI_AWUSER_WIDTH-1 : 0] M_AXI_AWUSER,
		// Write address valid. This signal indicates that
        // the channel is signaling valid write address and control information.
		output wire                              M_AXI_AWVALID,
		// Write address ready. This signal indicates that
        // the slave is ready to accept an address and associated control signals
		input wire                               M_AXI_AWREADY,
		// Master Interface Write Data.
		output wire [C_M_AXI_DATA_WIDTH-1 : 0]   M_AXI_WDATA,
		// Write strobes. This signal indicates which byte
        // lanes hold valid data. There is one write strobe
        // bit for each eight bits of the write data bus.
		output wire [C_M_AXI_DATA_WIDTH/8-1 : 0] M_AXI_WSTRB,
		// Write last. This signal indicates the last transfer in a write burst.
		output wire                              M_AXI_WLAST,
		// Optional User-defined signal in the write data channel.
		output wire [C_M_AXI_WUSER_WIDTH-1 : 0]  M_AXI_WUSER,
		// Write valid. This signal indicates that valid write
        // data and strobes are available
		output wire                              M_AXI_WVALID,
		// Write ready. This signal indicates that the slave
        // can accept the write data.
		input wire                               M_AXI_WREADY,
		// Master Interface Write Response.
		input wire [C_M_AXI_ID_WIDTH-1 : 0]      M_AXI_BID,
		// Write response. This signal indicates the status of the write transaction.
		input wire [1 : 0]                       M_AXI_BRESP,
		// Optional User-defined signal in the write response channel
		input wire [C_M_AXI_BUSER_WIDTH-1 : 0]   M_AXI_BUSER,
		// Write response valid. This signal indicates that the
        // channel is signaling a valid write response.
		input wire                               M_AXI_BVALID,
		// Response ready. This signal indicates that the master
        // can accept a write response.
		output wire                              M_AXI_BREADY,

		// Master Interface Read Address.
		output wire [C_M_AXI_ID_WIDTH-1 : 0]     M_AXI_ARID,
		// Read address. This signal indicates the initial
        // address of a read burst transaction.
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0]   M_AXI_ARADDR,
		// Burst length. The burst length gives the exact number of transfers in a burst
		output wire [7 : 0]                      M_AXI_ARLEN,
		// Burst size. This signal indicates the size of each transfer in the burst
		output wire [2 : 0]                      M_AXI_ARSIZE,
		// Burst type. The burst type and the size information, 
        // determine how the address for each transfer within the burst is calculated.
		output wire [1 : 0]                      M_AXI_ARBURST,
		// Lock type. Provides additional information about the
        // atomic characteristics of the transfer.
		output wire                              M_AXI_ARLOCK,
		// Memory type. This signal indicates how transactions
        // are required to progress through a system.
		output wire [3 : 0]                      M_AXI_ARCACHE,
		// Protection type. This signal indicates the privilege
        // and security level of the transaction, and whether
        // the transaction is a data access or an instruction access.
		output wire [2 : 0]                      M_AXI_ARPROT,
		// Quality of Service, QoS identifier sent for each read transaction
		output wire [3 : 0]                      M_AXI_ARQOS,
		// Optional User-defined signal in the read address channel.
		output wire [C_M_AXI_ARUSER_WIDTH-1 : 0] M_AXI_ARUSER,
		// Write address valid. This signal indicates that
        // the channel is signaling valid read address and control information
		output wire                              M_AXI_ARVALID,
		// Read address ready. This signal indicates that
        // the slave is ready to accept an address and associated control signals
		input wire                               M_AXI_ARREADY,
		// Read ID tag. This signal is the identification tag
        // for the read data group of signals generated by the slave.
		input wire [C_M_AXI_ID_WIDTH-1 : 0]      M_AXI_RID,
		// Master Read Data
		input wire [C_M_AXI_DATA_WIDTH-1 : 0]    M_AXI_RDATA,
		// Read response. This signal indicates the status of the read transfer
		input wire [1 : 0]                       M_AXI_RRESP,
		// Read last. This signal indicates the last transfer in a read burst
		input wire                               M_AXI_RLAST,
		// Optional User-defined signal in the read address channel.
		input wire [C_M_AXI_RUSER_WIDTH-1 : 0]   M_AXI_RUSER,
		// Read valid. This signal indicates that the channel
        // is signaling the required read data.
		input wire                               M_AXI_RVALID,
		// Read ready. This signal indicates that the master can
        // accept the read data and response information.
		output wire                              M_AXI_RREADY
	);


	// function called clogb2 that returns an integer which has the
	//value of the ceiling of the log base 2

	// function called clogb2 that returns an integer which has the 
    // value of the ceiling of the log base 2.                      
    function integer clogb2 (input integer bit_depth);              
    begin                                                           
    for(clogb2=0; bit_depth>0; clogb2=clogb2+1)                   
      bit_depth = bit_depth >> 1;                                 
    end                                                           
    endfunction                                                     

	// C_TRANSACTIONS_NUM is the width of the index counter for 
	// number of write or read transaction.
    localparam integer C_TRANSACTIONS_NUM = clogb2(C_M_AXI_BURST_LEN-1);


	//AXI4 internal temp signals
	(* keep = "true" *)reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	(* keep = "true" *)reg [8-1 : 0] 	                axi_awlen;
	(* keep = "true" *)reg  	                        axi_awvalid;
	(* keep = "true" *)reg [C_M_AXI_DATA_WIDTH-1 : 0] 	axi_wdata;
	(* keep = "true" *)wire  	                        axi_wlast;
	(* keep = "true" *)reg  	                        axi_wvalid;
	(* keep = "true" *)reg  	                        axi_bready;
	(* keep = "true" *)reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	(* keep = "true" *)reg  	                        axi_arvalid;
	(* keep = "true" *)reg  	                        axi_rready;
	
	(* keep = "true" *)reg [8-1 : 0]                   axi_arlen;
	//write beat count in a burst
	(* keep = "true" *)reg  [C_TRANSACTIONS_NUM : 0]   write_index;
	(* keep = "true" *)wire [1 : 0] 	               wbeats_in_16B_cnt;
	//read beat count in a burst
	(* keep = "true" *)reg  [C_TRANSACTIONS_NUM : 0]   read_index;
	(* keep = "true" *)reg  [1 : 0] 	               rbeats_in_16B_cnt;
    
    (* keep = "true" *)wire                            axi_wr_burst_go;
    (* keep = "true" *)wire                            axi_rd_burst_go;
	//The axi_awv_awr_flag flag marks the presence of write address valid
	(* keep = "true" *)reg                             axi_awv_awr_flag;
	//The axi_arv_arr_flag flag marks the presence of read address valid
	(* keep = "true" *)reg                             axi_arv_arr_flag;	

    wire [DATAWIDTH-1 : 0] 	        usr2m_fifo_dataout;
    wire                   	        usr2m_fifo_ren;
    wire                	        usr2m_fifo_init_ren;
    //reg                 	        usr2m_fifo_init_ren_dly1;
    //reg                 	        usr2m_fifo_init_ren_dly2;
    //wire                 	        usr2m_fifo_dreg_en;
    //reg                 	        usr2m_fifo_dreg_en_dly;
    //reg                             fifo_ren_dly;
    //reg  [DATAWIDTH-1 : 0]          fifo_dataout_reg;
    wire   	                        empty;
    wire   	                        full;

    reg [128-1 : 0]                 m2usr_fifo_data;
    reg                             m2usr_wr_en;

    reg [31:0]		rmst_index;
	
	// I/O Connections assignments

	//I/O Connections. Write Address (AW)
	assign M_AXI_AWID	  = 'b0;
	//The AXI address is a concatenation of the target base address + active offset range
	assign M_AXI_AWADDR	  = axi_awaddr;
	//Burst LENgth is number of transaction beats, minus 1
	assign M_AXI_AWLEN	  = axi_awlen;
	//Size should be C_M_AXI_DATA_WIDTH, in 2^SIZE bytes, otherwise narrow bursts are used
	assign M_AXI_AWSIZE	  = clogb2((C_M_AXI_DATA_WIDTH/8)-1);
	//INCR burst type is usually used, except for keyhole bursts
	assign M_AXI_AWBURST  = 2'b01;
	assign M_AXI_AWLOCK	  = 1'b0;
	//Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache. 
//	assign M_AXI_AWCACHE  = 4'b0010;
	assign M_AXI_AWCACHE  = 4'b0011;  //changed by zzl
	assign M_AXI_AWPROT	  = 3'h0;
	assign M_AXI_AWQOS	  = 4'h0;
	assign M_AXI_AWUSER	  = 'b1;
	assign M_AXI_AWVALID  = axi_awvalid;
	//Write Data(W)
	assign M_AXI_WDATA	  = axi_wdata;
	//All bursts are complete and aligned in this example
	assign M_AXI_WSTRB	  = {(C_M_AXI_DATA_WIDTH/8){1'b1}};
	assign M_AXI_WLAST	  = axi_wlast;
	assign M_AXI_WUSER	  = 'b0;
	assign M_AXI_WVALID	  = axi_wvalid;
	//Write Response (B)
	assign M_AXI_BREADY	  = axi_bready;
	//Read Address (AR)
	assign M_AXI_ARID	  = 'b0;
	assign M_AXI_ARADDR	  = axi_araddr;
	//Burst LENgth is number of transaction beats, minus 1
	assign M_AXI_ARLEN	  = axi_arlen;
	//Size should be C_M_AXI_DATA_WIDTH, in 2^n bytes, otherwise narrow bursts are used
	assign M_AXI_ARSIZE	  = clogb2((C_M_AXI_DATA_WIDTH/8)-1);
	//INCR burst type is usually used, except for keyhole bursts
	assign M_AXI_ARBURST  = 2'b01;
	assign M_AXI_ARLOCK	  = 1'b0;
	//Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache. 
//	assign M_AXI_ARCACHE  = 4'b0010;
	assign M_AXI_ARCACHE  = 4'b0011;  //changed by zzl
	assign M_AXI_ARPROT	  = 3'h0;
	assign M_AXI_ARQOS	  = 4'h0;
	assign M_AXI_ARUSER	  = 'b1;
	assign M_AXI_ARVALID  = axi_arvalid;
	//Read and Read Response (R)
	assign M_AXI_RREADY	  = axi_rready;

	//--------------------
	//Write Address Channel
	//--------------------
    //the master must not wait for the slave to assert AWREADY or WREADY before asserting AWVALID or WVALID
    //the master can wait for BVALID before asserting BREADY
    //the master can assert BREADY before BVALID is asserted
	//the last burst done, axi_awvalid deassert, usr request a busrt transaction, fifo is not empty
    assign axi_wr_burst_go = (~axi_awv_awr_flag) & wmst_ctrl_go & (~empty) & (~axi_awvalid);
        
	always @(posedge M_AXI_ACLK)
	begin
		if (M_AXI_ARESETN == 0) begin
		    axi_awv_awr_flag <= 1'b0;
		end		
		else if (axi_wr_burst_go) begin
		    axi_awv_awr_flag <= 1'b1;
		end
		else if (axi_awv_awr_flag && axi_bready) begin
		    axi_awv_awr_flag <= 1'b0;
		end
	end


	always @(posedge M_AXI_ACLK)
	begin
		if (M_AXI_ARESETN == 0) begin
		    axi_awvalid      <= 1'b0;
		end		
		else if (axi_wr_burst_go) begin
		    axi_awvalid      <= 1'b1;
		end
		else if (axi_awv_awr_flag && (M_AXI_AWREADY && axi_awvalid)) begin
            axi_awvalid      <= 1'b0;
		end
	end

	always @(posedge M_AXI_ACLK)
	begin
		if (M_AXI_ARESETN == 0) begin
		    axi_awaddr       <= 'b0;
		    axi_awlen        <= 'b0;
		end		
		else if (axi_wr_burst_go) begin
		    axi_awaddr       <= wmst_ctrl_write_base[C_M_AXI_ADDR_WIDTH-1 : 0];
		    axi_awlen        <= wmst_ctrl_write_length[9 : 2] - 8'h1; 
		end
		else if (~axi_awv_awr_flag) begin
		    axi_awaddr       <= 'b0;
		    axi_awlen        <= 'b0;
		end
	end	       

	//----------------------------
	//Write Response (B) Channel
	//----------------------------

	always @(posedge M_AXI_ACLK)                                     
	begin                                                                 
	    if (M_AXI_ARESETN == 0) begin                                                             
	        axi_bready      <= 1'b0;                                             
	    end                                                               
	    else if (axi_awv_awr_flag && (M_AXI_BVALID && ~axi_bready)) begin                                                             
	        axi_bready      <= 1'b1;
        end                                                               
	    // deassert after one clock cycle                                   
	    else if (axi_bready) begin                                                             
	        axi_bready      <= 1'b0;                                             
        end                                                               
	    // retain the previous value                                        
    end
	  
	//--------------------
	//Write Data Channel
	//--------------------	                                                                                    
	// WVALID logic, similar to the axi_awvalid always block above                      
    always @(posedge M_AXI_ACLK)                                                      
    begin                                                                             
        if (M_AXI_ARESETN == 0) begin                                                                         
	        axi_wvalid <= 1'b0;                                                         
        end                                                                           
	    else if (axi_awv_awr_flag && (M_AXI_WREADY && axi_wvalid) && write_index == 8'h0) begin                                                    
	        axi_wvalid <= 1'b0;
	    end                                                           
	    // If previously not valid, start next transaction
	    //else if (axi_awv_awr_flag && usr2m_fifo_init_ren_dly1) begin // assert wvaild at the first time to read fifo
	    else if (axi_awv_awr_flag && axi_awvalid && M_AXI_AWREADY) begin // assert wvaild at the first time to read fifo
	        axi_wvalid <= 1'b1;                                                         
	    end                                                                           
    end 

    //always @(wbeats_in_16B_cnt, fifo_dataout_reg, axi_wdata)
    always @(*)
    begin
        case(wbeats_in_16B_cnt)  //LSB transfer first
            2'b00: axi_wdata = usr2m_fifo_dataout[127 : 96];
            2'b01: axi_wdata = usr2m_fifo_dataout[95 : 64];
            2'b10: axi_wdata = usr2m_fifo_dataout[63 : 32];
            2'b11: axi_wdata = usr2m_fifo_dataout[31 : 0];
            default: axi_wdata = 32'b0;
        endcase       
    end
    
	//WLAST generation on the MSB of a counter underflow                                
	// WVALID logic, similar to the axi_awvalid always block above                      

    
    assign axi_wlast = ((write_index == 8'h0) && ((M_AXI_WREADY && axi_wvalid)))? 1: 0;
    	  
	assign wbeats_in_16B_cnt     = write_index[1:0];
	  
	always @(posedge M_AXI_ACLK)
	begin
		if (M_AXI_ARESETN == 0) begin
		    write_index     <= 'b0;
		end		
		else if (axi_wr_burst_go) begin
		    write_index     <= wmst_ctrl_write_length[9 : 2] - 8'h1; 
		end
		else if (axi_awv_awr_flag && M_AXI_WREADY && axi_wvalid && (write_index > 0)) begin
		    write_index     <= write_index - 8'h1;
		end
		else if ((~axi_awv_awr_flag) ||(write_index == 8'h0)) begin
		    write_index     <= 'b0;
		end
				     		
	end
		
    //assign usr2m_fifo_init_ren  = (M_AXI_AWREADY & axi_awvalid);   // initiate a first read at address strobe
    //assign usr2m_fifo_dreg_en   = ((M_AXI_WREADY && axi_wvalid) && (wbeats_in_16B_cnt == 2'b0))? 1: 0;
//	assign usr2m_fifo_ren       = axi_awv_awr_flag & ( usr2m_fifo_init_ren | usr2m_fifo_init_ren_dly2 | usr2m_fifo_dreg_en_dly) &(~empty);
	assign usr2m_fifo_ren       = axi_awv_awr_flag && (write_index[1:0] == 2'b00) && M_AXI_WREADY && axi_wvalid && (~empty);
	                                                         
    //always @(posedge M_AXI_ACLK)
    //begin
	    //if (M_AXI_ARESETN == 0) begin
	    //    usr2m_fifo_dreg_en_dly   <= 1'b0;
	    //    usr2m_fifo_init_ren_dly1 <= 1'b0;                                                               
	    //    usr2m_fifo_init_ren_dly2 <= 1'b0;                                                             
	    //end
	    //else begin
	    //    usr2m_fifo_dreg_en_dly   <= usr2m_fifo_dreg_en;                                                            
	    //    usr2m_fifo_init_ren_dly1 <= usr2m_fifo_init_ren;                                                               
	    //    usr2m_fifo_init_ren_dly2 <= usr2m_fifo_init_ren;                                                               
	    //end                                                               
         
	    //if (M_AXI_ARESETN == 0) begin
	    //    fifo_dataout_reg   <= 'b0;
	    //end
	    //else if (usr2m_fifo_init_ren_dly1 |  usr2m_fifo_dreg_en)begin
	    //    fifo_dataout_reg   <= usr2m_fifo_dataout;
	    //end                                                               
//	    if (M_AXI_ARESETN == 0) begin
//	        fifo_dataout_reg   <= 'b0;
//	    end
//	    else if (usr2m_fifo_ren)begin
//	        fifo_dataout_reg   <= usr2m_fifo_dataout;
//	    end                                                               
//    end

	//----------------------------
	//Read Address Channel
	//----------------------------        
    assign axi_rd_burst_go = (~axi_arv_arr_flag) & rmst_ctrl_go & (~full) & (~axi_arvalid);

    always @(posedge M_AXI_ACLK)                                 
    begin	                                                                     
        if (M_AXI_ARESETN == 0) begin                                                          
	        axi_arv_arr_flag <= 1'b0;                                         
        end                                                            
	    // If previously not valid , start next transaction              
	    else if (axi_rd_burst_go) begin                                                          
	        axi_arv_arr_flag <= 1'b1;                                         
        end                                                            
	    else if (axi_arv_arr_flag && (M_AXI_RVALID && axi_rready && M_AXI_RLAST)) begin
            axi_arv_arr_flag <= 1'b0;                                         
        end
    end	
    
    always @(posedge M_AXI_ACLK) 
    begin 
        if (M_AXI_ARESETN == 0) begin 
	        axi_arvalid <= 1'b0; 
        end                                                            
	    // If previously not valid , start next transaction              
	    else if (axi_rd_burst_go) begin 
	        axi_arvalid <= 1'b1; 
        end                                                            
	    else if (axi_arv_arr_flag && (M_AXI_ARREADY && axi_arvalid)) begin 
	        axi_arvalid <= 1'b0; 
        end                                                            
    end                                                                

	                                                                     
	// Next address after ARREADY indicates previous address acceptance  
	always @(posedge M_AXI_ACLK)
	begin
		if (M_AXI_ARESETN == 0) begin
		    axi_araddr       <= 'b0;
		    axi_arlen        <= 'b0;
		end		
		else if (axi_rd_burst_go) begin
		    axi_araddr       <= rmst_ctrl_read_base[C_M_AXI_ADDR_WIDTH-1 : 0];
		    axi_arlen        <= rmst_ctrl_read_length[9 : 2] - 8'h1; //write lenght is in bytes count
		end
		else if (~axi_arv_arr_flag) begin
		    axi_araddr       <= 'b0;
		    axi_arlen        <= 'b0;
		end
	end	                                                               

	//--------------------------------
	//Read Data (and Response) Channel
	//--------------------------------

	 // Forward movement occurs when the channel is valid and ready   
	                                                                        
	                                                                        
	// Burst length counter. Uses extra counter register bit to indicate    
	// terminal count to reduce decode logic                                
	always @(posedge M_AXI_ACLK) 
    begin 
        if (M_AXI_ARESETN == 0) begin 
            read_index        <= 0;
            rbeats_in_16B_cnt <= 0; 
        end 
	    else if (axi_rd_burst_go) begin 
	        read_index        <= rmst_ctrl_read_length[9 : 2] - 8'h1;
	        rbeats_in_16B_cnt <= 2'b00; 
	      end                                                               
		else if (axi_arv_arr_flag && (axi_rready & M_AXI_RVALID)) begin
		    read_index        <= read_index - 8'h1;
	        rbeats_in_16B_cnt <= rbeats_in_16B_cnt + 2'b01;
		end
		else if (~axi_arv_arr_flag) begin
		    read_index        <= 'b0;
	        rbeats_in_16B_cnt <= 'b0; 
		end 
    end 
	always @(posedge M_AXI_ACLK) 
    begin 
        if (M_AXI_ARESETN == 0) begin 
            rmst_index        <= 0;
        end 
	    else if (axi_rd_burst_go) begin 
	        rmst_index        <= rmst_ctrl_read_length;
	      end                                                               
		else if (rmst_user_read_buffer) begin
		    rmst_index        <= rmst_index - 8'h10;
		end
    end 
	
    always @(posedge M_AXI_ACLK) 
    begin 
        if (M_AXI_ARESETN == 0) begin 
	        axi_rready <= 1'b0;                                             
        end 
	    else if (axi_arv_arr_flag && ~axi_rready) begin
	        axi_rready <= 1'b1;   //always assert
	    end
	    else if (axi_arv_arr_flag && (M_AXI_RLAST && M_AXI_RVALID && axi_rready)) begin
	        axi_rready <= 1'b0;
	    end 
	    // retain the previous value 
    end 
	
    always @(posedge M_AXI_ACLK) 
    begin 
        if (M_AXI_ARESETN == 0) begin 
	        m2usr_fifo_data <= 'b0;                                             
        end 
        else if (M_AXI_RVALID && axi_rready) begin
            case(rbeats_in_16B_cnt)  //LSB transfer first
                2'b00: m2usr_fifo_data[31 : 0]  <= M_AXI_RDATA;
                2'b01: m2usr_fifo_data[63 : 32] <= M_AXI_RDATA;
                2'b10: m2usr_fifo_data[95 : 64] <= M_AXI_RDATA;
                2'b11: m2usr_fifo_data[127: 96] <= M_AXI_RDATA;
                default:;
            endcase
        end
    end 


    always @(posedge M_AXI_ACLK) 
    begin 
        if (M_AXI_ARESETN == 0) begin 
	        m2usr_wr_en     <= 1'b0; 
        end
        else if (axi_arv_arr_flag && ((M_AXI_RVALID && axi_rready) && (rbeats_in_16B_cnt == 2'b11))) begin
            m2usr_wr_en <= 1'b1;
        end
        //in case number of bursts is not mod0 to number of 16B                                                                
	    else if (axi_arv_arr_flag && (M_AXI_RLAST && M_AXI_RVALID && axi_rready)) begin 
	        m2usr_wr_en     <= 1'b1; 
	    end
	    else begin
	        m2usr_wr_en     <= 1'b0; 
	    end
    end 

wire	[6:0] w_data_count;
	FIFO_16Bx64_prefetch USR2M_FIFO (
    .clk          (M_AXI_ACLK),
    .srst         (~M_AXI_ARESETN),
    .wr_en        (wmst_user_write_buffer),
    .din          (wmst_user_buffer_data),
    .rd_en        (usr2m_fifo_ren),
    .dout         (usr2m_fifo_dataout),
    //.full         (full),
    .full         (),
    .almost_full  (wmst_user_buffer_full),
    //.prog_full    (wmst_user_buffer_full),
    .empty        (empty),
    .almost_empty (),
    //.prog_empty   (),
    .data_count   (w_data_count)
	);
	
	assign wmst_ctrl_done = ~axi_awv_awr_flag;
    
wire	[6:0] r_data_count;
    wire m2usr_empty;
	FIFO_16Bx64_prefetch M2USR_FIFO (
    .clk          (M_AXI_ACLK),
    .srst         (~M_AXI_ARESETN),
    .wr_en        (m2usr_wr_en),
    .din          (m2usr_fifo_data),
    .rd_en        (rmst_user_read_buffer),
    .dout         (rmst_user_buffer_data),
    .full         (),
    //.almost_full  (),
    .almost_full  (full),
    .empty        (m2usr_empty),
    .almost_empty (),
    .data_count   (r_data_count)
	);	// User logic ends

	assign rmst_ctrl_done = ~axi_arv_arr_flag && (rmst_index == 0);
	assign rmst_ctrl_early_done = rmst_ctrl_done;
    assign rmst_user_data_available = ~m2usr_empty;
/*
(*keep="true"*) reg [31:0]  debug_wr_length	;
(*keep="true"*) reg 	    debug_wr_go	;
(*keep="true"*) reg 	    debug_wr_done	;
(*keep="true"*) reg 	    debug_wr_full	;
(*keep="true"*) reg [31:0]  debug_rd_length	;
(*keep="true"*) reg 	    debug_rd_go	;
(*keep="true"*) reg 	    debug_rd_done	;
(*keep="true"*) reg 	    debug_rd_avai	;
(*keep="true"*) reg 	    debug_axi_bready	;
(*keep="true"*) reg 	    debug_axi_bvalid	;
(*keep="true"*) reg 	    debug_axi_awready	;
(*keep="true"*) reg 	    debug_axi_awvalid	;
(*keep="true"*) reg 	    debug_axi_arready	;
(*keep="true"*) reg 	    debug_axi_arvalid	;
(*keep="true"*) reg 	    debug_axi_wready	;
(*keep="true"*) reg 	    debug_axi_wvalid	;
(*keep="true"*) reg 	    debug_axi_rready	;
(*keep="true"*) reg 	    debug_axi_rvalid	;
(*keep="true"*) reg [6:0]   debug_w_fifo_cnt	;
(*keep="true"*) reg [6:0]   debug_r_fifo_cnt	;
(*keep="true"*) reg    	    debug_wfifo_w	;
(*keep="true"*) reg    	    debug_rfifo_w	;
(*keep="true"*) reg    	    debug_wfifo_r	;
(*keep="true"*) reg    	    debug_rfifo_r	;

(*keep="true"*) reg    	    debug_wlength	;
(*keep="true"*) reg    	    debug_rlength	;
(*keep="true"*) reg    	    debug_wboundy	;
(*keep="true"*) reg    	    debug_rboundy	;
(*keep="true"*) reg    	    debug_wlength_low	;
(*keep="true"*) reg    	    debug_rlength_low	;
always @ (posedge M_AXI_ACLK) begin
	debug_wr_length	<= wmst_ctrl_write_length;
	debug_wr_full	<= wmst_user_write_buffer;
	debug_wr_go	<= wmst_ctrl_go;
	debug_wr_done	<= wmst_ctrl_done;
	debug_rd_length	<= rmst_ctrl_read_length;
	debug_rd_avai	<= rmst_user_data_available;
	debug_rd_go	<= rmst_ctrl_go;
	debug_rd_done	<= rmst_ctrl_done;
	debug_axi_bready	<= M_AXI_BREADY;
	debug_axi_bvalid	<= M_AXI_BVALID;
	debug_axi_awready	<= M_AXI_AWREADY;
	debug_axi_awvalid	<= M_AXI_AWVALID;
	debug_axi_arready	<= M_AXI_ARREADY;
	debug_axi_arvalid	<= M_AXI_ARVALID;
	debug_axi_wready	<= M_AXI_WREADY;
	debug_axi_wvalid	<= M_AXI_WVALID;
	debug_axi_rready	<= M_AXI_RREADY;
	debug_axi_rvalid	<= M_AXI_RVALID;
	debug_w_fifo_cnt	<= w_data_count;
	debug_r_fifo_cnt	<= r_data_count;
	debug_wfifo_w		<= wmst_user_write_buffer;
	debug_wfifo_r		<= usr2m_fifo_ren;
	debug_rfifo_w		<= m2usr_wr_en;
	debug_rfifo_r		<= rmst_user_read_buffer;
end
always @ (posedge M_AXI_ACLK) begin
	if(!M_AXI_ARESETN)
	debug_wlength <= 1'b0;
	else if(wmst_ctrl_go && |wmst_ctrl_write_length[31:10])
	debug_wlength <= 1'b1;
end

always @ (posedge M_AXI_ACLK) begin
	if(!M_AXI_ARESETN)
	debug_wlength_low <= 1'b0;
	else if(wmst_ctrl_go && |wmst_ctrl_write_length[1:0])
	debug_wlength_low <= 1'b1;
end

always @ (posedge M_AXI_ACLK) begin
	if(!M_AXI_ARESETN)
	debug_rlength <= 1'b0;
	else if(rmst_ctrl_go && |rmst_ctrl_read_length[31:10])
	debug_rlength <= 1'b1;
end

always @ (posedge M_AXI_ACLK) begin
	if(!M_AXI_ARESETN)
	debug_rlength_low <= 1'b0;
	else if(rmst_ctrl_go && |rmst_ctrl_read_length[1:0])
	debug_rlength_low <= 1'b1;
end

always @ (posedge M_AXI_ACLK) begin
	if(!M_AXI_ARESETN)
	debug_wboundy <= 1'b0;
	else if(wmst_ctrl_go && ((wmst_ctrl_write_length[11:0] + wmst_ctrl_write_base[11:0]) > 13'h1000))
	debug_wboundy <= 1'b1;
end

always @ (posedge M_AXI_ACLK) begin
	if(!M_AXI_ARESETN)
	debug_rboundy <= 1'b0;
	else if(rmst_ctrl_go && ((rmst_ctrl_read_length[11:0] + rmst_ctrl_read_base[11:0]) > 13'h1000))
	debug_rboundy <= 1'b1;
end
*/
	endmodule
