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
    parameter DW = 32
)(
    input                    [DW-1: 0] data_in,
    output                   [DW-1: 0] data_out,

    output                   [DW-1: 0] sum,

    input                    [DW-1: 0] scale,
    input                              scale_lock,

    input                              acc_pulse,

    //global signal
    input                              clk,
    input                              rst
);

    wire                     [DW-1: 0] normed_data;
    wire                     [DW-1: 0] exp_out;
    reg                      [DW-1: 0] scale_reg;

    //lock 'scale' as it may change in the previous pipeline stage.
    always@(posedge clk or posedge rst) begin
        if(rst == 1'b1) begin
            scale_reg <= 0;
        end
        else if(scale_lock == 1'b1) begin
            scale_reg <= scale_reg;
        end
        else begin
            scale_reg <= scale;
        end
    end

    fsub14 fsub(
        .clock (clk),
        .dataa (data_in),
        .datab (scale_reg),
        .result (normed_data)
    );

    fexp17 exp(
        .clock (clk),
        .data (normed_data),
        .overflow (),
        .result (exp_out)
    );

    assign data_out = exp_out;

    facc facc (
        .clk (clk),     //    clk.clk
        .areset (1'b0), // areset.reset
        .x (exp_out),   //      x.x
        .n (acc_pulse), //      n.n
        .r (sum),       //      r.r
        .xo (),         //     xo.xo
        .xu (),         //     xu.xu
        .ao ()          //     ao.ao
    );

endmodule
