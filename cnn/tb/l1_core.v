/*
* Created           : mny
* Date              : 201603
*/

// synposys translate_off
`timescale 1ns/100ps
// synposys translate_on

module l1_core #(
    parameter BW            = 16,
    parameter D_ADD         = 8
)(
    input                   dat_ena,
    input            [31:0] dat_in,

    input                   param_ena,
    input          [BW-1:0] param_iwidth,

    output                  dat_act,
    output           [31:0] dat_out,

    input           clk,
    input           rst
);

reg           [BW-1:0] iwidth;
reg             [31:0] dat_reg;
reg       [D_ADD-1:00] ena;

reg       [D_ADD-1:00] ena_forward[0:3];
reg             [31:0] dat_forward[0:5];
reg              [2:0] flip;
wire            [31:0] fw_result[0:2];

reg             [31:0] mem[0:7];
wire            [31:0] fb_a;
wire            [31:0] fb_b;
wire            [31:0] fb_result;

reg           [BW-1:0] icnt;
reg              [2:0] wcnt;
reg              [2:0] rcnt;

always @ ( posedge clk or posedge rst )
    if( rst == 1'b1 )
        iwidth <= 'd0;
    else if( param_ena )
        iwidth <= param_iwidth;

always @ ( posedge clk ) begin
    dat_reg             <= dat_in;
    ena[0]              <= dat_ena;
    ena_forward[0][1]   <= ena[0] & (icnt > (iwidth - D_ADD));
end

generate
    genvar g, h;
    for( g = 0; g < D_ADD-1; g = g + 1 ) begin: M0
        always @ ( posedge clk ) 
            ena[g+1] <= ena[g];
    end
    
    for( h = 0; h < 4; h = h + 1 ) begin: M1
        for( g = 1; g < D_ADD-1; g = g + 1 ) begin: M2
            always @ ( posedge clk )
                ena_forward[h][g+1] <= ena_forward[h][g];
        end
    end
    
    for( g = 0; g < 3; g = g + 1 ) begin: M3
        always @ ( posedge clk or posedge rst )
            if( rst == 1'b1 )
                flip[g] <= 1'b0;
            else if( ena_forward[g][D_ADD-1] )
                flip[g] <= ~flip[g];
        always @ ( posedge clk )    begin
            dat_forward[0] <= ena_forward[0][D_ADD-1] ? fb_result : dat_forward[0];
            dat_forward[2] <= ena_forward[1][D_ADD-1] ? fw_result[0] : dat_forward[2];
            dat_forward[4] <= ena_forward[2][D_ADD-1] ? fw_result[1] : dat_forward[4];
        end
        always @ ( posedge clk )    begin
            dat_forward[2*g+1] <= ena_forward[g+1][0] & flip[g] ? dat_forward[2*g] : dat_forward[2*g+1];
            ena_forward[g+1][0] <= ena_forward[g][D_ADD-1];
            ena_forward[g+1][1] <= ena_forward[g+1][0] & (~flip[g]);
        end
        fp_add7 FP_ADDM     (
            .clock          ( clk               ),
            .dataa          ( dat_forward[2*g+0]),
            .datab          ( dat_forward[2*g+1]),
            .result         ( fw_result[g]      )
        );
    end
endgenerate

always @ ( posedge clk or posedge rst )
    if( rst == 1'b1 )
        icnt <= 'd0;
    else if( param_ena )
        icnt <= 'd0;
    else if( dat_ena )
        icnt <= (icnt == iwidth) ? 'd1 : (icnt + 'd1);
always @ ( posedge clk or posedge rst )
    if( rst == 1'b1 )
        wcnt <= 'd0;
    else if( ena[D_ADD-1] )
        wcnt <= wcnt + 'd1;
always @ ( posedge clk )
    if( ena[D_ADD-1] )
        mem[wcnt] <= fb_result;
always @ ( posedge clk or posedge rst )
    if( rst == 1'b1 )
        rcnt <= 'd0;
    else if( (icnt > D_ADD) & ena[0] )
        rcnt <= rcnt + 'd1;

assign fb_a = (icnt > D_ADD) ? mem[rcnt] : 'd0;
assign fb_b = dat_reg; 

fp_add7 FP_ADD0     (
    .clock          ( clk           ),
    .dataa          ( fb_a          ),
    .datab          ( fb_b          ),
    .result         ( fb_result     )
);

assign dat_act = ena_forward[3][D_ADD-1];
assign dat_out = fw_result[2];

endmodule
