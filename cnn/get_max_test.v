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


module get_max_test;
    parameter AW = 12;
    parameter DW = 32;
    parameter DATA_SIZE = 128;
    parameter CLK_PERIOD = 10;
    
    reg                       clk = 0;
    reg                       rst;

    reg             [DW-1: 0] inmem[0: DATA_SIZE-1];
    reg             [DW-1: 0] outmem[0: DATA_SIZE-1];


    wire                      get_max_ready;
    reg             [DW-1: 0] inmem_data_out;
    reg             [DW-1: 0] inmem_data_tmp;
    wire                      get_max_done;
    wire            [AW-1: 0] rd_addr;
    wire            [AW-1: 0] wr_addr;
    wire                      wr_ena;
    wire            [DW-1: 0] scale;    
    wire            [DW-1: 0] wr_data;
    wire            [DW-1: 0] data_in;

    reg                       downstream_ready;
    reg                       get_max_start;

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

    assign data_in = inmem_data_out;


    initial begin
        get_max_start = 1'b0;
        downstream_ready = 1'b1;
        #200
        get_max_start = 1'b1;
        #CLK_PERIOD
        get_max_start = 1'b0;
        #1500
        get_max_start = 1'b1;
        #CLK_PERIOD
        get_max_start = 1'b0;
    end


    get_max #(
        .AW(AW),
        .DW(DW),
        .DATA_SIZE(DATA_SIZE)
    ) get_max (
        // Synchronization with upstream process
        .get_max_start (get_max_start),
        .get_max_ready (get_max_ready),

        // Memory read port of input memory
        .data_in (data_in),
        .rd_addr (rd_addr),

        // Memory wirte port of the following intermediate memory
        .wr_data (wr_data),
        .wr_addr (wr_addr),
        .wr_ena (wr_ena),

        // Data sent to downsteam process (data is valid for only one pusle)
        .scale (scale),

        // Synchronization with the downstream process
        .downstream_ready (downstream_ready),
        .get_max_done (get_max_done),

        .clk (clk),
        .rst (rst)
    );

endmodule

