/*
* Created           : cheng liu
* Date              : 2016-04-20
*
* Description:
* It delays a 1-bit signal D cycles. 
* 
* Instance example
sig_delay #(
    .D ()
) sig_delay_inst (
    .sig_in (),
    .sig_out (),

    .clk (),
    .rst ()
);
*/

// synposys translate_off
`timescale 1ns/100ps
// synposys translate_on

module sig_delay #(
    parameter D = 32
)(
    input                              sig_in,
    output                             sig_out,

    input                              clk,
    input                              rst
);
    reg                       [D-1: 0] shift_reg;

    always@(posedge clk or posedge rst) begin
        if(rst == 1'b1) begin
            shift_reg <= 0;
        end
        else begin
            shift_reg <= {shift_reg[D-2: 0], sig_in};
        end
    end

    assign sig_out = shift_reg[D-1];

endmodule
 
