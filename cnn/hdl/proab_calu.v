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
    parameter DW = 32
)(
    // The results will be written to an output memory.
    output                   [DW-1: 0] data_out,

    //The input is loaded from previous intermediate memory.
    input                    [DW-1: 0] data_in,
    input                    [DW-1: 0] sum,

    input                              clk,
    input                              rst
);

    fdiv14 fdiv14(
        .clock(clk),
        .dataa(data_in),
        .datab(sum),
        .division_by_zero(),
        .overflow(),
        .result(data_out)
    );
    
endmodule	

