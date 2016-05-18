/*
* Created           : cheng liu
* Date              : 20160418
*
* Description:
* Delay input data D cycles 
* 
*/

/*
 * Instance Example
 data_delay #(
     .D (),
     .DW ()
 ) data_delay_inst (
     .data_in (),
     .data_out (),

     .clk (clk)
 );

*/

// synposys translate_off
`timescale 1ns/100ps
// synposys translate_on

module data_delay #(
    parameter D = 2,
    parameter DW = 32
)(
    input                    [DW-1: 0] data_in,
    output                   [DW-1: 0] data_out,
    
    input                              clk
);

    reg                      [DW-1: 0] shift_reg[0: D-1];

    genvar i;
    for (i=1; i<D; i=i+1) begin
        always@(posedge clk) begin
            shift_reg[i] <= shift_reg[i-1];
        end
    end

    always@(posedge clk) begin
        shift_reg[0] <= data_in;
    end

    assign data_out = shift_reg[D-1];

endmodule
 
