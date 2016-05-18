/*
* Created           : cheng liu
* Date              : 20160418
*
* Description:
* The softmax core assumes both a memory-mapped input buffer and an output buffer.
* It can be divided into 4 steps.
* Step1: find max value of the input
* Step2: Normalize the input data by subtracting the max value of input data
* Step3: Calculate expoential value
* Step4: Sum up the expoential value
* Step5: Calculate the resulting probality
* 
* Each step can be parallelized based on the read/write bandwidth. 
* Step2 ~ Step4 can be pipelined while step1 and step 5 must be done independently.
* 
*/

// synposys translate_off
`timescale 1ns/100ps
// synposys translate_on

module softmax_core #(
    parameter DATA_SIZE = 1024,
    parameter AW = 10,
    parameter DW = 32
)(
    // port connected with input memory
    input                    [DW-1: 0] data_in,
    output                   [AW-1: 0] rd_addr,

    // port connected with output memory
    output                             wr_ena,
    output                   [AW-1: 0] wr_addr,
    output                   [DW-1: 0] data_out,

    // softmax_core control signals
    input                              process_ena, 
    output                             next_process_ready,
    output                             process_done,

    // global signals
    input                              clk,
    input                              rst
);


    wire                        [1: 0] scale_update;
    wire                               scale_lock;
    wire                               acc_pulse;

    wire                               norm_exp_sum_ena;
    wire                               norm_exp_sum_stall;

    wire                               proab_calu_ena;
    wire                               proab_calu_stall;

    wire                               wb_ena;
    wire                               wb_stall;

    wire                     [DW-1: 0] scale;



    // Step1: Find max data in the input memory
    get_max #(
        .AW(AW),
        .DW(DW)
    )get_input_max(
        .data_in(data_in),
        .data_out(im1_wr_data),

        .scale_update(scale_update),
        .scale(scale)

        .clk(clk),
        .rst(rst)
    );

    // pass the input data to Intermediate memory blocks (im1)
    altsyncram	im1_dp_ram (
        .address_a (im1_wr_addr),
        .address_b (im1_rd_addr),
        .clock0 (clk),
        .data_a (im1_wr_data),
        .wren_a (im1_wr_ena),
        .q_b (im1_rd_data),
        .aclr0 (1'b0),
        .aclr1 (1'b0),
        .addressstall_a (1'b0),
        .addressstall_b (1'b0),
        .byteena_a (1'b1),
        .byteena_b (1'b1),
        .clock1 (1'b1),
        .clocken0 (1'b1),
        .clocken1 (1'b1),
        .clocken2 (1'b1),
        .clocken3 (1'b1),
        .data_b ({32{1'b1}}),
        .eccstatus (),
        .q_a (),
        .rden_a (1'b1),
        .rden_b (1'b1),
        .wren_b (1'b0));
    defparam
        altsyncram_component.address_aclr_b = "NONE",
        altsyncram_component.address_reg_b = "CLOCK0",
        altsyncram_component.clock_enable_input_a = "BYPASS",
        altsyncram_component.clock_enable_input_b = "BYPASS",
        altsyncram_component.clock_enable_output_b = "BYPASS",
        altsyncram_component.intended_device_family = "Cyclone V",
        altsyncram_component.lpm_type = "altsyncram",
        altsyncram_component.numwords_a = 1024,
        altsyncram_component.numwords_b = 1024,
        altsyncram_component.operation_mode = "DUAL_PORT",
        altsyncram_component.outdata_aclr_b = "NONE",
        altsyncram_component.outdata_reg_b = "CLOCK0",
        altsyncram_component.power_up_uninitialized = "FALSE",
        altsyncram_component.read_during_write_mode_mixed_ports = "OLD_DATA",
        altsyncram_component.widthad_a = 10,
        altsyncram_component.widthad_b = 10,
        altsyncram_component.width_a = 32,
        altsyncram_component.width_b = 32,
        altsyncram_component.width_byteena_a = 1;



    // Step2: Normalize the input data
    // Step3: calculate expoential value
    // Step4: Sum up the result

    norm_exp_sum #(
        .AW(AW),
        .DW(DW)
    ) norm_exp_sum (
        .data_in(im1_rd_data),
        .data_out(im2_wr_data),

        .sum (sum),
        .scale (scale),
        .scale_lock (scale_lock),

        .acc_pulse (acc_pulse),

        .clk(clk),
        .rst(rst)
    );

    //Write the expoential result to im2 ram
    altsyncram	im2_dp_ram (
        .address_a (im2_wr_addr),
        .address_b (im2_rd_addr),
        .clock0 (clk),
        .data_a (im2_wr_data),
        .wren_a (im2_wr_ena),
        .q_b (im2_rd_data),
        .aclr0 (1'b0),
        .aclr1 (1'b0),
        .addressstall_a (1'b0),
        .addressstall_b (1'b0),
        .byteena_a (1'b1),
        .byteena_b (1'b1),
        .clock1 (1'b1),
        .clocken0 (1'b1),
        .clocken1 (1'b1),
        .clocken2 (1'b1),
        .clocken3 (1'b1),
        .data_b ({32{1'b1}}),
        .eccstatus (),
        .q_a (),
        .rden_a (1'b1),
        .rden_b (1'b1),
        .wren_b (1'b0));
    defparam
        altsyncram_component.address_aclr_b = "NONE",
        altsyncram_component.address_reg_b = "CLOCK0",
        altsyncram_component.clock_enable_input_a = "BYPASS",
        altsyncram_component.clock_enable_input_b = "BYPASS",
        altsyncram_component.clock_enable_output_b = "BYPASS",
        altsyncram_component.intended_device_family = "Cyclone V",
        altsyncram_component.lpm_type = "altsyncram",
        altsyncram_component.numwords_a = 1024,
        altsyncram_component.numwords_b = 1024,
        altsyncram_component.operation_mode = "DUAL_PORT",
        altsyncram_component.outdata_aclr_b = "NONE",
        altsyncram_component.outdata_reg_b = "CLOCK0",
        altsyncram_component.power_up_uninitialized = "FALSE",
        altsyncram_component.read_during_write_mode_mixed_ports = "OLD_DATA",
        altsyncram_component.widthad_a = 10,
        altsyncram_component.widthad_b = 10,
        altsyncram_component.width_a = 32,
        altsyncram_component.width_b = 32,
        altsyncram_component.width_byteena_a = 1;

    // Step5: Calculate the resulting probality
    proab_calu #(
        .DW(DW)
    ) proab_calu(
        .data_out (data_out),
        .data_in (im2_rd_data),
        .sum(sum),

        .clk (clk),
        .ena (ena)
    );

    //Generate all the synchronization signals of the pipeline stages in softmax.
    softmax_ctrl softmax_ctrl(
        .process_ena(process_ena),
        .process_stall(process_stall),
        .process_done(process_done),

        .get_max_ena(get_max_ena),
        .get_max_stall(get_max_stall),

        .norm_exp_sum_ena(norm_exp_sum_ena),
        .norm_exp_sum_stall(norm_exp_sum_stall),

        .proab_calu_ena(proab_calu_ena),
        .proab_calu_stall(proab_calu_stall),

        .wb_ena(wb_ena),
        .wb_stall(wb_stall),

        .clk(clk),
        .rst(rst)
    );

endmodule
