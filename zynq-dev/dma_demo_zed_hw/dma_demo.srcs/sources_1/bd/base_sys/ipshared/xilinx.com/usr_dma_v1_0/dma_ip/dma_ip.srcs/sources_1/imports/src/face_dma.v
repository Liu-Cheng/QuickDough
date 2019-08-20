/*
* Created           : mny
* Date              : 201608
*/

// synposys translate_off
`timescale 1ns/100ps
// synposys translate_on

module face_dma #(
    parameter IP = 1,
    parameter OP = 1,
    parameter AW = 32,
    parameter DW = 128
)(
    output                                  dma_csr_idle,
    input                                   dma_csr_ena,
    input                   [AW-1:0]        dma_csr_lbyte,
    input                   [AW-1:0]        dma_csr_saddr,
    input                   [AW-1:0]        dma_csr_daddr,

    (* keep = "true" *) output                  [IP-1:0]        rmst_ctrl_fixed_location,
    (* keep = "true" *) output                  [IP*AW-1:0]     rmst_ctrl_read_base,
    (* keep = "true" *) output                  [IP*AW-1:0]     rmst_ctrl_read_length,
    (* keep = "true" *) output                  [IP-1:0]        rmst_ctrl_go,
    (* keep = "true" *) input                   [IP-1:0]        rmst_ctrl_done,
    (* keep = "true" *) output                  [IP-1:0]        rmst_user_read_buffer,
    (* keep = "true" *) input                   [IP*DW-1:0]     rmst_user_buffer_data,
    (* keep = "true" *) input                   [IP-1:0]        rmst_user_data_available,

    (* keep = "true" *) output                  [OP-1:0]        wmst_ctrl_fixed_location,
    (* keep = "true" *) output                  [OP*AW-1:0]     wmst_ctrl_write_base,
    (* keep = "true" *) output                  [OP*AW-1:0]     wmst_ctrl_write_length,
    (* keep = "true" *) output                  [OP-1:0]        wmst_ctrl_go,
    (* keep = "true" *) input                   [OP-1:0]        wmst_ctrl_done,
    (* keep = "true" *) output                  [OP-1:0]        wmst_user_write_buffer,
    (* keep = "true" *) output                  [OP*DW-1:0]     wmst_user_write_input_data,
    (* keep = "true" *) input                   [OP-1:0]        wmst_user_buffer_full,

    input                                   clk,
    input                                   rst
);

(* keep = "true" *)reg         [AW-1:0]            read_base;
(* keep = "true" *)reg         [AW-1:0]            read_length;
wire                            read_go;
(* keep = "true" *)reg                             read_buffer; 

(* keep = "true" *)reg         [AW-1:0]            write_base;
(* keep = "true" *)reg                             write_go;
(* keep = "true" *)reg                             write_buffer;
(* keep = "true" *)reg         [DW-1:0]            write_input_data;

(* keep = "true" *)reg                             ready;
wire                            ena;
wire                            flag_over;
(* keep = "true" *)reg                             flag_rover, flag_wover;

(* keep = "true" *)reg         [2:0]               read_done;
(* keep = "true" *)reg         [1:0]               write_done;

(* keep = "true" *)reg         [AW-5:0]            rlen_symbol;
(* keep = "true" *)reg         [AW-5:0]            wlen_symbol;
(* keep = "true" *)reg         [9:0]               wlen_count;

assign rmst_ctrl_fixed_location = 1'b0;
assign rmst_ctrl_read_base      = read_base;
assign rmst_ctrl_read_length    = read_length;
assign rmst_ctrl_go             = read_go;
assign rmst_user_read_buffer    = read_buffer & rmst_user_data_available & (~wmst_user_buffer_full);

assign wmst_ctrl_fixed_location = 1'b0;
assign wmst_ctrl_write_base     = write_base;
assign wmst_ctrl_write_length   = {{(AW-14){1'b0}}, wlen_count, 4'd0};
assign wmst_ctrl_go             = write_go;
assign wmst_user_write_buffer   = write_buffer;
assign wmst_user_write_input_data= write_input_data;

assign ena              = ready & dma_csr_ena;
assign dma_csr_idle     = ready;
assign flag_over        = flag_rover & flag_wover;

always @ ( posedge clk ) begin
    read_done[0] <= rmst_ctrl_done;
    read_done[1] <= ((~read_done[0]) & rmst_ctrl_done) | ena;
    read_done[2] <= read_done[1];
    write_done[0]<= wmst_ctrl_done;
    write_done[1]<= write_done[0];
end
always @ ( posedge clk or posedge rst )
    if( rst == 1'b1 )
        flag_wover <= 1'b0;
    else if( (~|rlen_symbol) & (~|wlen_count) & wmst_ctrl_done & (~write_done[0]) )
        flag_wover <= 1'b1;
    else if( flag_over )
        flag_wover <= 1'b0;
always @ ( posedge clk or posedge rst )
    if( rst == 1'b1 )
        flag_rover <= 1'b0;
    else if( (~|rlen_symbol) & rmst_ctrl_done & (~read_done[0]) )
        flag_rover <= 1'b1;
    else if( flag_over )
        flag_rover <= 1'b0;
    
always @ ( posedge clk or posedge rst )
    if( rst == 1'b1 )
        ready <= 1'b1;
    else if( ena )
        ready <= 1'b0;
    else if( flag_over )
        ready <= 1'b1;

always @ ( posedge clk or posedge rst )
    if( rst == 1'b1 )
        rlen_symbol <= 'd0;
    else if( ena )
        rlen_symbol <= dma_csr_lbyte[AW-1:4] + (|dma_csr_lbyte[3:0]);
    else if( read_go )
        rlen_symbol <= rlen_symbol - (read_length >> 4);
always @ ( posedge clk or posedge rst )
    if( rst == 1'b1 )
        read_length <= 'd0;
    else if( rlen_symbol > 'd31 )
        read_length <= ('d32 << 4);
    else
        read_length <= (rlen_symbol << 4);
always @ ( posedge clk or posedge rst )
    if( rst == 1'b1 )
        read_base <= 'd0;
    else if( ena )
        read_base <= dma_csr_saddr;
    else if( read_go )
        read_base <= read_base + read_length;

assign read_go = read_done[2] & (|rlen_symbol);

always @ ( posedge clk or posedge rst )
    if( rst == 1'b1 )
        read_buffer <= 1'b0;
    else if( (~wmst_user_buffer_full) & rmst_user_data_available )
        read_buffer <= 1'b1;
    else
        read_buffer <= 1'b0;

always @ ( posedge clk ) begin
    write_buffer     <= rmst_user_read_buffer;
    write_input_data <= rmst_user_buffer_data;
end

always @ ( posedge clk or posedge rst )
    if( rst == 1'b1 )
        write_base <= 'd0;
    else if( ena )
        write_base <= dma_csr_daddr;
    else if( write_go )
        write_base <= write_base + wmst_ctrl_write_length;
always @ ( posedge clk or posedge rst )
    if( rst == 1'b1 )
        wlen_symbol <= 'd0;
    else if( ena )
        wlen_symbol <= dma_csr_lbyte[AW-1:4] + (|dma_csr_lbyte[3:0]);
    else if( write_buffer )
        wlen_symbol <= wlen_symbol - 'd1;
always @ ( posedge clk or posedge rst )
    if( rst == 1'b1 )
        wlen_count <= 10'd0;
    else if( ena )
        wlen_count <= 10'd0;
    else if( write_go )
        wlen_count <= {{9{1'b0}}, write_buffer};
    else if( write_buffer )
        wlen_count <= wlen_count + 10'd1;
always @ ( posedge clk or posedge rst )
    if( rst == 1'b1 )
        write_go <= 1'b0;
    else if( write_done[1] & (~write_go) & ((|wlen_count[9:5]) | ((~|wlen_symbol) & (|wlen_count[4:0]))))
        write_go <= 1'b1;
    else
        write_go <= 1'b0;

(* keep = "true" *) reg debug_flag_over;
(* keep = "true" *) reg debug_dma_csr_ena;
(* keep = "true" *) reg debug_dma_csr_idle;
(* keep = "true" *) reg debug_read_go;
(* keep = "true" *) reg debug_write_go;
(* keep = "true" *) reg debug_read_done;
(* keep = "true" *) reg debug_write_done;
(* keep = "true" *) reg debug_read_buffer;
(* keep = "true" *) reg debug_write_buffer;
(* keep = "true" *) reg [AW-1:0]  debug_dma_csr_lbyte;
(* keep = "true" *) reg [AW-1:0]  debug_dma_csr_saddr;
(* keep = "true" *) reg [AW-1:0]  debug_dma_csr_daddr;
(* keep = "true" *) reg [AW-1:0]  debug_read_base;
(* keep = "true" *) reg [AW-1:0]  debug_read_length;
(* keep = "true" *) reg debug_data_available;
(* keep = "true" *) reg debug_data_full;
always @ ( posedge clk)
    if( rst == 1'b1 ) begin
        debug_flag_over <= 1'b0;
        debug_dma_csr_ena <= 1'b0;
        debug_dma_csr_idle <= 1'b0;
        debug_read_go <= 1'b0;
        debug_write_go <= 1'b0;
        debug_read_done <= 1'b0;
        debug_write_done <= 1'b0;
        debug_read_buffer <= 1'b0;
        debug_write_buffer <= 1'b0;
        debug_dma_csr_lbyte <= {AW{1'b0}};
        debug_dma_csr_saddr <= {AW{1'b0}};
        debug_dma_csr_daddr <= {AW{1'b0}};
        debug_read_base <= {AW{1'b0}};
        debug_read_length <= {AW{1'b0}};
        debug_data_available <= 1'b0;        
        debug_data_full <= 1'b0; 
    end
    else begin
        debug_flag_over <= flag_over;
        debug_dma_csr_ena <= dma_csr_ena;    
        debug_dma_csr_idle <= dma_csr_idle;   
        debug_read_go <= rmst_ctrl_go[0];
        debug_write_go <= wmst_ctrl_go[0];
        debug_read_done <= rmst_ctrl_done[0];
        debug_write_done <= wmst_ctrl_done[0];     
        debug_read_buffer <= read_buffer;
        debug_write_buffer <= write_buffer;         
        debug_dma_csr_lbyte <= dma_csr_lbyte;
        debug_dma_csr_saddr <= dma_csr_saddr;
        debug_dma_csr_daddr <= dma_csr_daddr;  
        debug_read_base <= read_base;
        debug_read_length <= read_length;       
        debug_data_available <= rmst_user_data_available;    
        debug_data_full <= wmst_user_buffer_full;                 
    end 
endmodule
