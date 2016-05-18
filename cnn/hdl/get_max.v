/*
* Created           : cheng liu
* Date              : 20160418
*
* Description:
* 
* Get max value of the data input
* 
* Instance example
  get_max #(
    .AW(),
    .DW(),
    .DATA_SIZE()
) get_max_inst (
    // Synchronization with upstream process
    .upstream_done (),
    .get_max_ready (),
    
    // Memory read port of input memory
    .data_in (),
    .rd_addr (),

    // Memory wirte port of the following intermediate memory
    .wr_data (),
    .wr_addr (),
    .wr_ena (),

    // Data sent to downsteam process (data is valid for only one pusle)
    .scale (),
    
    // Synchronization with the downstream process
    .downstream_ready (),
    .get_max_done (),

    .clk (),
    .rst ()
);
*/

// synposys translate_off
`timescale 1ns/100ps
// synposys translate_on

module get_max #(
    parameter AW = 12,
    parameter DW = 32,
    parameter DATA_SIZE = 1024
)(
    // Synchronization with upstream process
    input                              upstream_done,
    output                             get_max_ready,
    
    // Memory read port of input memory
    input                    [DW-1: 0] data_in,
    output                   [AW-1: 0] rd_addr,

    // Memory wirte port of the following intermediate memory
    output                   [DW-1: 0] wr_data,
    output                   [AW-1: 0] wr_addr,
    output                             wr_ena,

    // Data sent to downsteam process (data is valid for only one pusle)
    output                   [DW-1: 0] scale,
    
    // Synchronization with the downstream process
    input                              downstream_ready,
    output                             get_max_done,

    input                              clk,
    input                              rst
);
    localparam MIN_FP = 32'hFF800000;

    
    reg                      [DW-1: 0] data_in_reg;
    wire                               is_greater;
    reg                      [DW-1: 0] scale_reg;

    wire                               process_start_posedge;
    reg                      [AW-1: 0] counter;

    // When upstream_done pulse arrives, counter will add up to DATA_SIZE and then go back to 0.
    wire                               get_max_start;
    reg                                get_max_start_reg;
    wire                               get_max_start_posedge;
    wire                               last_process_cycle;
    wire                               process_on_going;
    
    assign get_max_start = upstream_done;
    always@(posedge clk) begin
        get_max_start_reg <= get_max_start;
    end
    assign get_max_start_posedge = get_max_start && (~get_max_start_reg);
    
    // Create a counter to show the status of current process
    assign last_process_cycle = (counter == DATA_SIZE);
    assign process_on_going = (get_max_start_posedge == 1'b1 && counter == 0) || (counter != 0);
    always@(posedge clk or posedge rst) begin
        if(rst == 1'b1) begin
            counter <= 0;
        end
        else if(process_on_going) begin
            counter <= counter + 1;
        end
        else if(last_process_cycle) begin
            counter <= 0;
        end
        else begin
            counter <= counter;
        end
    end
    
    // max of the input can be obtained after 2 cycles
    wire                               get_max_done_tmp;
    sig_delay #(
        .D (2)
    ) sig_delay1 (
        .sig_in (last_process_cycle),
        .sig_out (get_max_done_tmp),

        .clk (clk),
        .rst (rst)
    );
    assign get_max_done = get_max_done_tmp;
    
    // get_max module is ready when both current process is done 
    // and downstream process id ready.
    reg                                get_max_ready_reg;
    always@(posedge clk or posedge rst) begin
        if(rst == 1'b1) begin
            get_max_ready_reg <= 1'b1;
        end
        else if (downstream_ready == 1'b1 && get_max_done_tmp == 1'b1) begin
            get_max_ready_reg <= 1'b1;
        end
        else if (get_max_start_posedge == 1'b1) begin
            get_max_ready_reg <= 1'b0;
        end
        else begin
            get_max_ready_reg <= get_max_ready_reg;
        end
    end
    assign get_max_ready = get_max_ready_reg;


    assign rd_addr = counter;
    fagb1 fagb1 (
        .clock (clk),
        .dataa (data_in),
        .datab (scale_reg),
        .agb (is_greater)
    );

    // Comparison result select
    wire                               compare_result_update_ena;
    sig_delay #(
        .D (3)
    ) sig_delay2 (
        .sig_in (process_on_going),
        .sig_out (compare_result_update_ena),

        .clk (clk),
        .rst (rst)
    );
        
    always@(posedge clk or posedge rst) begin
        if(rst == 1'b1) begin
            scale_reg <= MIN_FP;
        end
        else if(compare_result_update_ena == 1'b1) begin
            scale_reg <= (is_greater) ? data_in_reg : scale_reg;
        end
        else begin 
            scale_reg <= MIN_FP;
        end
    end
    assign scale = scale_reg;
    
    // Write port of the following intermedaite memory
    sig_delay #(
        .D (3)
    ) sig_delay3 (
        .sig_in (process_on_going),
        .sig_out (wr_ena),

        .clk (clk),
        .rst (rst)
    );

    data_delay #(
        .D (1),
        .DW (DW)
    ) data_delay1 (
        .data_in (data_in_reg),
        .data_out (data_out),

        .clk (clk)
    );
    
    data_delay #(
        .D (3),
        .DW (AW)
    ) data_delay2 (
        .data_in (counter),
        .data_out (wr_addr),

        .clk (clk)
    );
    
    endmodule
