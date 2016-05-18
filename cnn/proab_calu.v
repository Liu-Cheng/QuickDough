/*
* Created           : cheng liu
* Date              : 2016-04-19
*
* Description:
* 
* Calculate the proabiliy in the last step of softmax.
* 
* 
*/

// synposys translate_off
`timescale 1ns/100ps
// synposys translate_on

module proab_calu #(
    parameter DW = 32,
    parameter AW = 12,
    parameter DATA_SIZE = 128,
    parameter DIV_DELAY = 14
)(
    // The results will be written to an output memory.
    input                              proab_calu_start,
    output                             proab_calu_ready,
    input                              downstream_ready,
    output                             proab_calu_done,

    // Memory write port
    output                   [DW-1: 0] wr_data,
    output                   [AW-1: 0] wr_addr,
    output                             wr_ena,

    //The input is loaded from previous intermediate memory.
    input                    [DW-1: 0] rd_data,
    output                   [AW-1: 0] rd_addr,

    input                    [DW-1: 0] sum,

    input                              clk,
    input                              rst
);

    reg                     [DW-1: 0] sum_reg;
    reg                     [DW-1: 0] sum_tmp;
    // lock sum
    always@(posedge clk or posedge rst) begin
        if(rst == 1'b1) begin
            sum_tmp <= 1;
        end
        else if(proab_calu_start == 1'b1) begin
            sum_tmp <= sum;
        end
        else begin
            sum_tmp <= sum_tmp;
        end
    end
    
    always@(posedge clk) begin
      sum_reg <= sum_tmp;
    end

    // Create counter to show process status
    reg                    [AW-1: 0] counter;
    wire                             last_process_cycle;
    wire                             process_on_going;

    assign last_process_cycle = (counter == (DATA_SIZE-1));
    assign process_on_going = (proab_calu_start == 1'b1 && counter == 0) || (counter != 0);

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

    // max of the input can be obtained after 2 cycles
    wire                               proab_calu_done_tmp;
    sig_delay #(
        .D (DIV_DELAY + 1)
    ) sig_delay1 (
        .sig_in (last_process_cycle),
        .sig_out (proab_calu_done_tmp),

        .clk (clk),
        .rst (rst)
    );
    assign proab_calu_done = proab_calu_done_tmp;

    // proab_calu module is ready when both current process is done 
    // and downstream process id ready.
    reg                                proab_calu_ready_reg;
    always@(posedge clk or posedge rst) begin
        if(rst == 1'b1) begin
            proab_calu_ready_reg <= 1'b1;
        end
        else if (downstream_ready == 1'b1 && proab_calu_done_tmp == 1'b1) begin
            proab_calu_ready_reg <= 1'b1;
        end
        else if (proab_calu_start == 1'b1) begin
            proab_calu_ready_reg <= 1'b0;
        end
        else begin
            proab_calu_ready_reg <= proab_calu_ready_reg;
        end
    end
    assign proab_calu_ready = proab_calu_ready_reg;

    fdiv14 fdiv14(
        .clock(clk),
        .dataa(rd_data),
        .datab(sum_reg),
        .division_by_zero(),
        .overflow(),
        .result(wr_data)
    );

    data_delay #(
        .D (DIV_DELAY + 1),
        .DW (AW)
    ) data_delay1 (
        .data_in (counter),
        .data_out (wr_addr),

        .clk (clk)
    );
    
     sig_delay #(
        .D (DIV_DELAY + 1)
    ) sig_delay2 (
        .sig_in (process_on_going),
        .sig_out (wr_ena),

        .clk (clk),
        .rst (rst)
    );
   
endmodule	

