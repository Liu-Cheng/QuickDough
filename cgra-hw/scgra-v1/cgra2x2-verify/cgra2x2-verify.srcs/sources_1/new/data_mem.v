`timescale 1 ns / 1 ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:17:41 03/02/2012 
// Design Name: 
// Module Name:    data_mem 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module data_mem( /*AUTOARG*/
    //Input
    clk,
	 
    wea,						
    web,
    dina,
    dinb,
    addra0,
    addrb0,
    addra1,
    addrb1,
    addra2,
    addrb2,
    
    //Output
    douta0,
    doutb0,
    douta1,
    doutb1,
    douta2,
    doutb2    
);

parameter DWIDTH=32;
parameter AWIDTH=8;

input              clk;
input              wea;
input              web;
input [DWIDTH-1:0] dina;
input [DWIDTH-1:0] dinb;
input [AWIDTH-1:0] addra0;
input [AWIDTH-1:0] addrb0;
input [AWIDTH-1:0] addra1;
input [AWIDTH-1:0] addrb1;
input [AWIDTH-1:0] addra2;
input [AWIDTH-1:0] addrb2;

output [DWIDTH-1:0] douta0;
output [DWIDTH-1:0] doutb0;
output [DWIDTH-1:0] douta1;
output [DWIDTH-1:0] doutb1;
output [DWIDTH-1:0] douta2;
output [DWIDTH-1:0] doutb2;

TrueDualPortBram256 mem0(
    .clka(clk),
    .wea(wea),
    .addra(addra0),
    .dina(dina),
    .douta(douta0),
    .clkb(clk),
    .web(web),
    .addrb(addrb0),
    .dinb(dinb),
    .doutb(doutb0)
);

TrueDualPortBram256 mem1(
    .clka(clk),
    .wea(wea),
    .addra(addra1),
    .dina(dina),
    .douta(douta1),
    .clkb(clk),
    .web(web),
    .addrb(addrb1),
    .dinb(dinb),
    .doutb(doutb1)
);  

TrueDualPortBram256 mem2(
    .clka(clk),
    .wea(wea),
    .addra(addra2),
    .dina(dina),
    .douta(douta2),
    .clkb(clk),
    .web(web),
    .addrb(addrb2),
    .dinb(dinb),
    .doutb(doutb2)
);  

endmodule
