/*
* Created           : cheng liu
* Date              : 2016-04-19
*
* Description:
* 
* Generate read/write address based on ena signal.
* Meanwhile it can be stalled by process_stall signal.
* 
* 
*/

// synposys translate_off
`timescale 1ns/100ps
// synposys translate_on

module addr_gen #(
    parameter AW = 10
)(
    output reg              [AW-1: 0] addr_out,
    input                             process_ena,
    input                             process_stall,

    input                             clk,
    input                             rst
);

always@(posedge clk or posedge rst) begin
    if(rst == 1'b1) begin
        addr_out <= 0;
    end
    else if(process_ena == 1'b1 && process_stall == 1'b0) begin
        addr_out <= addr_out + 1;
    end
    else if(process_ena == 1'b1 && process_stall == 1'b0) begin
        addr_out <= addr_out;
    end
    else begin
        addr_out <= 0;
    end
end

endmodule
