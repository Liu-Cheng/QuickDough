/*
* Created           : Cheng Liu 
* Date              : 2016-04-25
*
* Description:
* This is a simple dual port memory allowing both read and write 
* operations at the same time as long as there are no read/write 
* conflicts. Note that the read port and write port are shared between 
* the internal softmax computing logic and the external system bus.
*/

// synposys translate_off
`timescale 1ns/100ps
// synposys translate_on

module softmax_dp_mem #(
    parameter AW = 12,
    parameter DW = 32,
    parameter XAW = 32,
    parameter XDW = 128
)(
    // Port connected to the read master
    output                             rmst_fixed_location,
    output                   [XAW-1:0] rmst_read_base,
    output                   [XAW-1:0] rmst_read_length,
    output                             rmst_go,
    input                              rmst_done,

    output                             rmst_user_read_buffer,
    input                    [XDW-1:0] rmst_user_buffer_data,
    input                              rmst_user_data_available, 
    // Port connected to the write master

    // Parameters from the configuration module
    input                              config_done,
    input                   [XAW-1: 0] param_raddr,
    input                   [XAW-1: 0] param_iolen,
    input                   [XAW-1: 0] param_waddr,

    // Internal memomry port to the softmax_core
    //output                   [AW-1: 0] internal_wr_addr,
    //output                   [DW-1: 0] internal_wr_data,
    //output                             internal_wr_ena,

    //output                   [AW-1: 0] internal_rd_addr,
    //output                   [DW-1: 0] internal_rd_data,

    input                              rst,
    input                              clk
);

    // Internal memory port to the read master
    wire                     [AW-1: 0] rmst_wr_addr;
    wire                     [DW-1: 0] rmst_wr_data;
    wire                               rmst_wr_ena;

    // Internal memory port to the write master
    wire                     [AW-1: 0] wmst_rd_addr;
    wire                     [AW-1: 0] wmst_rd_data;

    reg                     [XAW-1: 0] raddr;
    reg                     [XAW-1: 0] waddr;
    reg                     [XAW-1: 0] iolen;
    reg                      [AW-1: 0] counter;

    // Lock the parameters
    always@(posedge clk) begin
        if(rst == 1'b1) begin
            raddr <= 0;
            waddr <= 0;
            iolen <= 0;
        end
        else if(config_done == 1'b1) begin
            raddr <= param_raddr;
            waddr <= param_waddr;
            iolen <= param_iolen;
        end
        else begin
            raddr <= raddr;
            waddr <= waddr;
            iolen <= iolen << 2; // convert words to bytes
        end
    end


    sig_delay #(
        .D (1)
    ) sig_delay1 (
        .sig_in (config_done),
        .sig_out (go),

        .clk (clk),
        .rst (rst)
    );

    assign rmst_fixed_location = 1'b0;
    assign rmst_read_base = raddr;
    assign rmst_read_length = iolen;

    // Generate rd address for internal memory write port.


wire                        over_row;
reg                   [1:0] over_row_pos;
reg                [CW-1:0] row_read;
wire                        ena_iter;
reg                         run_state;

reg               [XAW-1:0] addr;
reg               [XAW-1:0] ioffset;
reg                [LW-1:0] ilen;
reg                [CW-1:0] irow;

reg                   [2:0] done;
reg                   [4:0] run_ena;

reg                [LW-2:0] len_symbol;
reg                   [9:0] read_length;
reg               [XAW-1:0] read_base;

wire                        go;
wire                        flag_read;
reg                         read;
reg               [XDW-1:0] data_read;
reg                   [2:0] dly_read;
reg                   [1:0] cnt_word;

reg                         ena_write;
reg                [LW-1:0] cnt_unit;

reg                         not_empty;
wire                        almost_empty;
wire                        empty;

assign rmst_ctrl_fixed_location = 1'b0;
assign rmst_ctrl_read_base = read_base;
assign rmst_ctrl_read_length = read_length;
assign rmst_ctrl_go = go;
assign rmst_user_read_buffer = read;

assign over_row = (cnt_unit == ilen) & run_state;
always @ ( posedge clk )    begin
    over_row_pos[0] <= over_row;
    over_row_pos[1] <= (~over_row_pos[0]) & over_row;
end

always @ ( posedge clk or posedge rst )    begin
    if( rst == 1'b1 )
        row_read <= 'd0;
    else if( run_ena[1] ) 
        row_read <= 'd1;
    else if( over_row_pos[1] )
        row_read <= row_read + 'd1;
end

always @ (posedge clk or posedge rst)
    if( rst == 1'b1 )
        run_state <= 1'b0;
    else if( run_ena[1] )
        run_state <= 1'b1;
    else if( over_row_pos[1] & (row_read == irow) )
        run_state <= 1'b0;

assign ena_iter = over_row_pos[1] & (row_read < irow);

always @ ( posedge clk )
    if( run_ena[1] ) begin
        addr    <= param_addr;
        ioffset <= param_ioffset;
        irow    <= param_irow;
        ilen    <= param_ilen;
    end
    else if( ena_iter )
        addr    <= addr + ioffset;

always @ ( posedge clk ) begin
    done[0] <= rmst_ctrl_done;
    done[1] <= (~done[0]) & rmst_ctrl_done;
    done[2] <= done[1];
    run_ena[0] <= param_ena;
    run_ena[1] <= (~run_ena[0]) && param_ena;
    run_ena[2] <= run_ena[1] | ena_iter;
    run_ena[3] <= run_ena[2];
    run_ena[4] <= run_ena[3];
end

always @ ( posedge clk or posedge rst )
    if( rst == 1'b1 )
        len_symbol  <= 'b0;
    else if( run_ena[2] )
        len_symbol  <= ilen[LW-1:2] + (|ilen[1:0]);
    else if( go )
        len_symbol  <= len_symbol - (read_length >> 4);
always @ ( posedge clk or posedge rst )
    if( rst == 1'b1 )
        read_length <= 'd0;
    else if( len_symbol > 'd31 )
        read_length <= ('d32 << 4);
    else if( len_symbol > 'd15 )
        read_length <= ('d16 << 4);
    else if( len_symbol > 'd7 )
        read_length <= ('d8 << 4);
    else
        read_length <= (len_symbol << 4);
always @ ( posedge clk or posedge rst )
    if( rst == 1'b1 )
        read_base <= 'd0;
    else if( run_ena[2] )
        read_base <= addr;
    else if( go )
        read_base <= read_base + read_length;

assign go = (run_ena[4] | done[2]) & (|len_symbol);
assign flag_read = dly_read[0] | dly_read[1] | dly_read[2] | read;

always @ ( posedge clk or posedge rst )
    if( rst == 1'b1 )
        cnt_word <= 2'b0;
    else
        cnt_word <= cnt_word - 2'd1;
always @ ( posedge clk )
    if( rmst_user_data_available & (cnt_word == 'd0) & almost_empty )
        read <= 1'b1;
    else
        read <= 1'b0;
always @ ( posedge clk )
    if( read )
        data_read <= rmst_user_buffer_data;
    else
        data_read <= {32'd0, data_read[XDW-1:32]};
always @ ( posedge clk ) begin
    dly_read[0] <= read;
    dly_read[1] <= dly_read[0];
    dly_read[2] <= dly_read[1];
end
always @ ( posedge clk or posedge rst )
    if( rst == 1'b1 )
        ena_write <= 1'b0;
    else if( cnt_unit == ilen )
        ena_write <= 1'b0;
    else
        ena_write <= flag_read;
always @ ( posedge clk or posedge rst )
    if( rst == 1'b1 )
        cnt_unit <= 'd0;
	else if( run_ena[1] | ena_iter )
        cnt_unit <= 'd0;
    else if( cnt_unit == ilen )
        cnt_unit <= cnt_unit;
    else if( flag_read )
        cnt_unit <= cnt_unit + 'd1;

assign mat_ready = (~empty) & not_empty;
always @ ( posedge clk )
    if( ~empty )
        not_empty <= 1'b1;
    else
        not_empty <= 1'b0;

scfifo	SCFF (
    .aclr           ( rst ),
    .clock          ( clk ),
    .data           ( data_read[31:0] ),
    .rdreq          ( mat_req ),
    .sclr           ( 1'b0 ),
    .wrreq          ( ena_write ),
    .almost_empty   ( almost_empty ),
    .almost_full    ( ),
    .empty          ( empty ),
    .full           ( ),
    .q              ( mat_dat ),
    .usedw          ( ),
    .eccstatus ());
defparam
    SCFF.add_ram_output_register = "OFF",
    SCFF.almost_empty_value = 240,
    SCFF.almost_full_value = 200,
    SCFF.intended_device_family = "Cyclone V",
    SCFF.lpm_hint = "RAM_BLOCK_TYPE=M10K",
    SCFF.lpm_numwords = 256,
    SCFF.lpm_showahead = "OFF",
    SCFF.lpm_type = "scfifo",
    SCFF.lpm_width = 32,
    SCFF.lpm_widthu = 8,
    SCFF.overflow_checking = "ON",
    SCFF.underflow_checking = "ON",
    SCFF.use_eab = "ON";

endmodule

