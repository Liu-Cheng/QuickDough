
// synopsys translate_off
`timescale 1ns/1ns
// synopsys translate_on

module tb;

parameter           CLOCK_PERIOD1 = 10;

//--Reset Signal and clock
reg           clk_200m = 0;
reg           rst_p;

//--Generate Clock Signal

always # (CLOCK_PERIOD1 / 2) clk_200m = ~clk_200m;

parameter           HEIGHT  = 8;
parameter           WIDTH   = 128;
parameter           BW      = 16;
parameter           SIZE    = HEIGHT * WIDTH;

reg                   dat_ena;
reg            [31:0] dat_in;

reg                   param_ena;
reg          [BW-1:0] param_iwidth;

wire                  dat_act;
wire           [31:0] dat_out;


reg            [31:0] mem[0:SIZE-1];
reg            [31:0] cnt;
reg            [31:0] num;
reg            [31:0] ocnt;

// Reset
initial
    begin
        rst_p = 1'b1;
        
        # 100;
        rst_p = 1'b0;
        # 8000;
        
        wait( ocnt == HEIGHT);
        # 100;
        $stop(2);
    end

initial begin
    param_ena = 0;
    param_iwidth = WIDTH;
    dat_ena = 0;
    dat_in = 0;
    cnt = 0;
    num = 0;
    
    $readmemh("mv.txt", mem, 0, SIZE-1);
    
    # 500;
    @( posedge clk_200m )
    param_ena = 1'b1;
    @( posedge clk_200m )
    param_ena = 1'b0;
    # 500;
    
    @( posedge clk_200m );
    repeat( SIZE )  begin
        @( posedge clk_200m );
        dat_ena = 1;
        dat_in = mem[cnt];
        @( posedge clk_200m );
        dat_ena = 0;
        cnt = cnt + 1;
        num = (cnt < 30) ? cnt : 40;
        while( num > 0 )    begin
            @( posedge clk_200m );
            num = num - 1;
        end
    end
    dat_ena = 0;
    
    //@( posedge clk_200m );
    //repeat( 3 )  begin
    //    dat_ena = 1;
    //    dat_in = mem[cnt];
    //    @( posedge clk_200m );
    //    cnt = cnt + 1;
    //end
    //dat_ena = 0;
    //# 1000;
    //@( posedge clk_200m );
    //repeat( 3 )  begin
    //    dat_ena = 1;
    //    dat_in = mem[cnt];
    //    @( posedge clk_200m );
    //    cnt = cnt + 1;
    //end
    //dat_ena = 0;
    //# 1000;
    //@( posedge clk_200m );
    //repeat( SIZE / 2 - 6 )  begin
    //    dat_ena = 1;
    //    dat_in = mem[cnt];
    //    @( posedge clk_200m );
    //    cnt = cnt + 1;
    //end
    //dat_ena = 0;
    //# 2000;
    //@( posedge clk_200m );
    //repeat( SIZE / 2 )  begin
    //    dat_ena = 1;
    //    dat_in = mem[cnt];
    //    @( posedge clk_200m );
    //    cnt = cnt + 1;
    //end
    //dat_ena = 0;
end
   
always @ ( posedge clk_200m or posedge rst_p )  
    if( rst_p == 1'b1 )
        ocnt <= 'd0;
    else if( dat_act )
        ocnt <= ocnt + 'd1;

l1_core L1(
    .dat_ena     ( dat_ena ),
    .dat_in      ( dat_in ),
    
    .param_ena   ( param_ena ),
    .param_iwidth( param_iwidth ),
    
    .dat_act( dat_act ),
    .dat_out( dat_out ),

    .clk( clk_200m ),
    .rst( rst_p )
);

integer acc;

initial begin
    acc = $fopen("m result.txt");
    forever begin
        @( posedge clk_200m );
        if( dat_act == 'h1 )
            $fwrite(acc, "%h\n", dat_out);
    end
end

endmodule

























