/*
* Created           : cheng liu
* Date              : 2016-04-20
*
* Description:
* Given the process_ena and process_stall signals of the softmax module, 
* it generates all the internal ena and stall signals to synchronize the 
* submodules. Meanwhile it produces a 'process_done' signal for each process 
* iteration of softmax. 
* 
*/

// synposys translate_off
`timescale 1ns/100ps
// synposys translate_on

module softmax_ctrl #(
    parameter DATA_SIZE = 1024,
    parameter AW = 10,
    parameter DW = 32,
    parameter NORM_DELAY = 14,
    parameter EXP_DELAY = 17,
    parameter SUM_DELAY = 14,
    parameter DIV_DELAY = 14,
    parameter ACC_DELAY = 9
)(
    input                              process_ena,
    input                              process_stall,
    output                             process_done,

    output                    [AW-1:0] rd_addr;

    output                             scale_update,

    output                             norm_exp_sum_ena,
    output                             norm_exp_sum_stall,

    output                             proab_calu_ena,
    output                             proab_calu_stall,

    output                             wb_ena,
    output                             wb_stall,

    //global signal
    input                              clk,
    input                              rst
);
    localparam GET_MAX_DELAY = DATA_SIZE + 2;
    localparam NORM_EXP_SUM_DELAY = NORM_DELAY + EXP_DELAY + SUM_DELAY;
    localparam PROAB_CALU_DELAY = DIV_DELAY + 2; 
    localparam LOCKED = 2'b00;
    localparam UPDATE = 2'b01;
    localparam LOAD_CONST = 2'b10;

    reg                                process_ena_reg;
    reg                                process_stall_reg;

    wire                               get_max_ena;
    wire                               get_max_stall;
    wire                     [AW-1: 0] rd_addr_tmp;

    // Register the input contrl signals
    always@(posedge clk) begin
        process_ena_reg <= process_ena;
        process_stall_reg <= process_stall;
    end

    // Generate softmax input memory read address
    addr_gen #(
        .AW(AM)
    ) in_mem_rd_addr_gen (
        .addr_out (rd_addr_tmp),
        .process_ena (process_ena),
        .process_stall (process_stall),

        .clk (clk),
        .rst (rst)
    );

    assign rd_addr = rd_addr_tmp;

    // Generte control signals for get_max module
    assign get_max_ena = process_ena_reg;
    assign get_max_stall = process_stall_reg;

    always@(posedge clk or posedge rst) begin
        if(rst == 1'b1) begin
            scale_update <= LOAD_CONST;
        end
        else if (get_max_ena_d2 == 1'b1 && get_max_stall_d2 == 1'b0) begin
            scale_update <= UPDATE;
        end
        else if (get_max_ena_d2 == 1'b1 && get_max_stall_d2 == 1'b1) begin 
            scale_update <= LOCKED;
        end
        else begin
            scale_update <= LOAD_CONST;
        end
    end

    // Generate control signals for im1
    assign im1_wr_ena = (~get_max_stall) && get_max_ena;
    data_delay #(
        .D (2)
        .DW (DW)
    ) data_delay1 (
        .data_in (rd_addr_tmp),
        .data_out (im1_wr_addr),
        
        .clk(clk)
    );

    sig_delay #(
        .D (2)
    ) sig_delay1 (
        .sig_in (get_max_ena),
        .sig_out (get_max_ena_d2),

        .clk (clk),
        .rst (rst)
    );

    sig_delay #(
        .D (2)
    ) sig_delay2 (
        .sig_in (get_max_stall),
        .sig_out (get_max_stall_d2),

        .clk (clk),
        .rst (rst)
    );


    // Pass ena and stall to generate control signals for norm_exp_sum
    sig_delay #(
        .D (GET_MAX_DELAY)
    ) sig_delay3 (
        .sig_in (process_ena_reg),
        .sig_out (norm_exp_sum_ena),

        .clk (clk),
        .rst (rst)
    );

     sig_delay #(
        .D (GET_MAX_DELAY)
    ) sig_delay4 (
        .sig_in (process_stall_reg),
        .sig_out (norm_exp_sum_stall),

        .clk (clk),
        .rst (rst)
    );

    // Lock the scale register in the norm_expr_sum stage when the ena signal is set.
    always@(posedge clk) begin
        norm_exp_sum_ena_reg <= norm_exp_sum_ena;
    end

    assign scale_lock = norm_exp_sum_ena_reg;

    // Generate the im2 controlling signal
    sig_delay #(
        .D (NORM_DELAY + EXP_DELAY)
    ) sig_delay5 (
        .sig_in (norm_exp_sum_ena),
        .sig_out (norm_exp_sum_ena_dNE),

        .clk (clk),
        .rst (rst)
    );

    always@(posedge clk) begin
        norm_exp_sum_ena_dNE_reg <= norm_exp_sum_ena_dNE;
    end

    // accumulate starts when the first data is obtained from exp function
    assign acc_pulse = (~norm_exp_sum_ena_dNE_reg) && norm_exp_sum_ena_dNE;

    addr_gen #(
        .AW(AM)
    ) im2_wr_addr_gen (
        .addr_out (im2_wr_addr),
        .process_ena (norm_exp_sum_ena_dNE),
        .process_stall (1'b0),

        .clk (clk),
        .rst (rst)
    );

    assign im2_wr_ena = norm_exp_sum_ena_dNE_reg;

    sig_delay #(
        .D (NORM_DELAY + EXP_DELAY + ACC_DELAY + DATA_SIZE)
    ) sig_delay6 (

    );



    
    

endmodule
