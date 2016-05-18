/*
* Created           : cheng liu
* Date              : 2016-04-22
*
* Description:
* 
* test altera memory port
* 
* 
*/

// synposys translate_off
`timescale 1ns/100ps
// synposys translate_on


module norm_exp_sum_test;
    parameter AW = 12;
    parameter DW = 32;
    parameter DATA_SIZE = 128;
    parameter CLK_PERIOD = 10;
    parameter NORM_DELAY = 14;
    parameter EXP_DELAY = 17;
    parameter SUM_DELAY = 14;
    parameter ACC_DELAY = 9;
    
    reg                       clk = 0;
    reg                       rst;

    reg             [DW-1: 0] inmem[0: DATA_SIZE-1];
    reg             [DW-1: 0] outmem[0: DATA_SIZE-1];


    wire                      norm_exp_sum_ready;
    reg                       norm_exp_sum_start;
    reg             [DW-1: 0] inmem_data_out;
    reg             [DW-1: 0] inmem_data_tmp;
    wire                      norm_exp_sum_done;
    wire            [AW-1: 0] rd_addr;
    wire            [DW-1: 0] rd_data;
    wire            [DW-1: 0] sum;
    wire            [AW-1: 0] wr_addr;
    wire                      wr_ena;
    reg             [DW-1: 0] scale;    
    wire            [DW-1: 0] wr_data;
    reg                       downstream_ready;

    always #(CLK_PERIOD/2) clk = ~clk;

    initial begin
        rst = 1;

        #100
        rst = 0;

        #2000
        $stop(2);
    end

    //init memory
    initial begin
        $readmemh("init.txt", inmem, 0, DATA_SIZE-1);
    end

    initial begin
        $readmemh("zero.txt", outmem, 0, DATA_SIZE-1);
    end

    always@(posedge clk) begin
        inmem_data_tmp <= inmem[rd_addr];
        inmem_data_out <= inmem_data_tmp;
    end

    always@(posedge clk) begin
        if(wr_ena == 1'b1) begin
            outmem[wr_addr] <= wr_data;
        end
        else begin
            outmem[wr_addr] <= 0;
        end
    end

    assign rd_data = inmem_data_out;


    initial begin
        norm_exp_sum_start = 1'b0;
        downstream_ready = 1'b1;
        scale = 32'h3DCCCCCD;
        #200
        norm_exp_sum_start = 1'b1;
        #CLK_PERIOD
        norm_exp_sum_start = 1'b0;
        scale = 32'h3DCCCCCD;
        #1500
        norm_exp_sum_start = 1'b1;
        #CLK_PERIOD
        norm_exp_sum_start = 1'b0;
    end


    norm_exp_sum #(
        .AW (AW),
        .DW (DW),
        .DATA_SIZE (DATA_SIZE),
        .NORM_DELAY (NORM_DELAY),
        .EXP_DELAY (EXP_DELAY),
        .ACC_DELAY (ACC_DELAY)
    ) norm_exp_sum (
        // Synchronization with upstream process
        .norm_exp_sum_start (norm_exp_sum_start),
        .norm_exp_sum_ready (norm_exp_sum_ready),

        // Memory read port of input memory
        .rd_data (rd_data),
        .rd_addr (rd_addr),

        // Memory wirte port of the following intermediate memory
        .wr_data (wr_data),
        .wr_addr (wr_addr),
        .wr_ena (wr_ena),

        // Data sent to downsteam process (data is valid for only one pusle)
        .scale (scale),
        .sum (sum),

        // Synchronization with the downstream process
        .downstream_ready (downstream_ready),
        .norm_exp_sum_done (norm_exp_sum_done),

        .clk (clk),
        .rst (rst)
    );

endmodule

