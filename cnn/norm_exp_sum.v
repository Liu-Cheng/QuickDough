/*
* Created           : cheng liu
* Date              : 20160418
*
* Description:
* 
* Get max value of the data input
* 
* 
*/

// synposys translate_off
`timescale 1ns/100ps
// synposys translate_on

module norm_exp_sum #(
    parameter AW = 12,
    parameter DW = 32,
    parameter DATA_SIZE = 128,
    parameter NORM_DELAY = 14,
    parameter EXP_DELAY = 17,
    parameter ACC_DELAY = 9

)(
    input                              norm_exp_sum_start,
    output                             norm_exp_sum_ready,
    input                    [DW-1: 0] scale,

    // Memory read port of input memory
    input                    [DW-1: 0] rd_data,
    output                   [AW-1: 0] rd_addr,

    // Memory write port of the following memory
    output                   [DW-1: 0] wr_data,
    output                   [AW-1: 0] wr_addr,
    output                             wr_ena,

    // Synchronization with the downstream process
    input                              downstream_ready,
    output                             norm_exp_sum_done,

    // Sum of the expoential result
    output                   [DW-1: 0] sum,

    //global signal
    input                              clk,
    input                              rst
);

    wire                     [DW-1: 0] normed_data;
    wire                     [DW-1: 0] exp_out;
    reg                      [DW-1: 0] scale_reg;
    reg                      [DW-1: 0] scale_tmp;
    reg                      [AW-1: 0] counter;

    // lock 'scale' 
    always@(posedge clk or posedge rst) begin
        if(rst == 1'b1) begin
            scale_tmp <= 0;
        end
        else if(norm_exp_sum_start == 1'b1) begin
            scale_tmp <= scale;
        end
        else begin
            scale_tmp <= scale_tmp;
        end
    end
    always@(posedge clk) begin
          scale_reg <= scale_tmp;
    end

    wire                               last_process_cycle;
    wire                               process_on_going;

    // Create a counter to represent the staus of current process
    assign last_process_cycle = (counter == (DATA_SIZE-1));
    assign process_on_going = (norm_exp_sum_start == 1'b1 && counter == 0) || (counter != 0);

    always@(posedge clk or posedge rst) begin
        if(rst == 1'b1) begin
            counter <= 0;
        end
        else if(process_on_going && (~last_process_cycle)) begin
            counter <= counter + 1;
        end
        else if(last_process_cycle) begin
            counter <= 0;
        end
        else begin
            counter <= counter;
        end
    end

    assign rd_addr = counter;

    fsub14 fsub(
        .clock (clk),
        .dataa (rd_data),
        .datab (scale_reg),
        .result (normed_data)
    );

    fexp17 exp(
        .clock (clk),
        .data (normed_data),
        .result (exp_out)
    );

    assign wr_data = exp_out;
    
    sig_delay #(
        .D (NORM_DELAY + EXP_DELAY + 2)
    ) sig_delay1 (
        .sig_in (process_on_going),
        .sig_out (wr_ena),

        .clk (clk),
        .rst (rst)
    );

     data_delay #(
        .D (NORM_DELAY + EXP_DELAY + 2),
        .DW (AW)
    ) data_delay1 (
        .data_in (counter),
        .data_out (wr_addr),

        .clk (clk)
    );

    sig_delay #(
        .D (NORM_DELAY + EXP_DELAY + 2)
    ) sig_delay2 (
        .sig_in (norm_exp_sum_start),
        .sig_out (acc_pulse),

        .clk (clk),
        .rst (rst)
    );
   
    wire                              norm_exp_sum_done_tmp;
    sig_delay #(
        .D (NORM_DELAY + EXP_DELAY + ACC_DELAY + 3)
    ) sig_delay3 (
        .sig_in (last_process_cycle),
        .sig_out (norm_exp_sum_done),

        .clk (clk),
        .rst (rst)
    ); 
    assign norm_exp_sum_done = norm_exp_sum_done_tmp;

    facc facc (
        .clk (clk),     //    clk.clk
        .areset (rst), // areset.reset
        .x (exp_out),   //      x.x
        .n (acc_pulse), //      n.n
        .r (sum),       //      r.r
        .xo (),         //     xo.xo
        .xu (),         //     xu.xu
        .ao ()          //     ao.ao
    );

    reg                                norm_exp_sum_ready_reg;
    always@(posedge clk or posedge rst) begin
        if(rst == 1'b1) begin
            norm_exp_sum_ready_reg <= 1'b1;
        end
        else if (downstream_ready == 1'b1 && norm_exp_sum_done_tmp == 1'b1) begin
            norm_exp_sum_ready_reg <= 1'b1;
        end
        else if (norm_exp_sum_start == 1'b1) begin
            norm_exp_sum_ready_reg <= 1'b0;
        end
        else begin
            norm_exp_sum_ready_reg <= norm_exp_sum_ready_reg;
        end
    end
    assign norm_exp_sum_ready = norm_exp_sum_ready_reg;


endmodule
