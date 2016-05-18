/*
* Created           : Cheng Liu
* Date              : 2016-04-25
*
* Description:
* Set softmax basic design parameters and expose information to upper mmodules
*/

// synposys translate_off
`timescale 1ns/100ps
// synposys translate_on

module softmax_config #(
    parameter AW = 12,  // Internal memory address width
    parameter DW = 32,  // Internal data width
    parameter CW = 6    // maxium number of configuration paramters is (2^CW).
)(
    input                              config_ena,
    input                    [CW-1: 0] config_addr,
    input                    [DW-1: 0] config_wdata,
    output reg               [DW-1: 0] config_rdata,
    
    output                             config_done,       // configuration is done. (orginal name: param_ena)
    output reg                [DW-1:0] param_raddr,
    output reg                [DW-1:0] param_waddr,
    output reg                [CW-1:0] param_iolen,
    input                              softmax_core_done, // computing task is done. (original name: flag_over)
    
    input                              rst,
    input                              clk
);

    localparam RD_ADDR          = 'h00;
    localparam WR_ADDR          = 'h01;
    localparam IO_LEN           = 'h02;

    localparam END_OF_IN_CONFIG = 'h20;
    localparam CSR_STATE        = 'h21;
    localparam CSR_TIME         = 'h22;
    localparam CSR_CHECK        = 'h3F;

    reg                                csr_under_processing; // Softmax is either under configuration or computing 
    reg                                csr_softmax_core_done;
    reg                        [31: 0] csr_time_cost;

    // Load configurations
    always@(posedge clk) begin
        if(config_ena && (config_addr == RD_ADDR)) begin
            param_rd_addr <= config_wdata;
        end
        else begin
            param_rd_addr <= param_rd_addr;
        end
    end

    always@(posedge clk) begin
        if(config_ena && (config_addr == WR_ADDR)) begin
            param_wr_addr <= config_wdata;
        end
        else begin
            param_wr_addr <= config_wr_addr;
        end
    end

    always@(posedge clk) begin
        if(config_ena && (config_addr == IO_LEN)) begin
            param_io_len <= config_wdata; 
        end
        else begin
            param_io_len <= config_io_len;
        end
    end

    reg                                last_config;
    reg                                last_config_reg;
    reg                                config_done_reg;
    always@(posedge clk) begin
        if(config_ena && (config_addr == END_OF_IN_CONFIG)) begin
            last_config <= config_wdata[0]; // config_wdata[0] == 1
        end
        else begin
            last_config <= last_config;
        end
    end
    always@(posedge clk) begin
        last_config_reg <= last_config;
    end

    // Using the posedge of last_config as the sign of config_done.
    always@(posedge clk) begin
        config_done_reg <= last_config && (~last_config_reg);
    end
    assign config_done = config_done_reg


    // softmax status
    always@(posedge clk or posedge rst) begin
        if(rst == 1'b1) begin
            csr_under_processing <= 1'b0;
        end
        else if(config_ena == 1'b1) begin
            csr_under_processing <= 1'b1;
        end
        else if(softmax_core_done == 1'b1) begin
            csr_under_processing <= 1'b0;
        end
        else begin
            csr_under_processing <= csr_under_processing;
        end
    end

    always@(posedge clk or posedge rst) begin
        if(rst == 1'b1) begin
            csr_softmax_core_done <= 1'b0;
        end
        else if(softmax_core_done == 1'b1) begin
            csr_softmax_core_done <= 1'b1;
        end
        else if(config_ena == 1'b1) begin
            csr_softmax_core_done <= 1'b0;
        end
        else begin
            csr_softmax_core_done <= csr_softmax_core_done;
        end
    end


    always@(posedge clk or posedge rst) begin
        if(rst == 1'b1) begin
            csr_time_cost <= 'd0;
        end
        else if(csr_under_processing == 1'b1) begin
            csr_time_cost <= (csr_time_cost == 32'hFF_FF_FF_FF) ? 32'hFF_FF_FF_FF : (csr_time_cost + 'd1);
        end
        else if(config_ena == 1'b1) begin //It should be the start of the configuration.
            csr_time_cost <= 0;
        end
        else begin
            csr_time_cost <= csr_time_cost;
        end
    end

    // Interface for reading the configuration/status registers
    always@(posedge clk) begin
        case(config_addr)
            WR_ADDR:   config_rdata <= param_waddr;
            RD_ADDR:   config_rdata <= param_raddr;
            IO_LEN:    config_rdata <= param_iolen;
            CSR_STATE: config_rdata <= {30'd0, csr_under_processing, csr_softmax_core_done};
            CSR_TIME:  config_rdata <= csr_time_cost;
            CSR_CHECK: config_rdata <= 32'hF0_F0_F0_F0;
        endcase
    end

endmodule

