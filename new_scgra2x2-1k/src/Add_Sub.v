`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/29/2013 10:19:44 AM
// Design Name: 
// Module Name: Add_Sub 
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Add_Sub(
         clk,
         Resetn,
         a,
         b,
         subtract,
         p
    );
    
parameter DWIDTH = 32;

input                        clk;
input                        Resetn;
input signed [DWIDTH-1:0]    a;
input signed [DWIDTH-1:0]    b;
input                        subtract;
output reg [DWIDTH-1:0]      p;

always@(posedge clk) begin
  if(Resetn==1'b0) begin
    p <= 0;
  end
  else begin
    p <= (subtract)? a - b : a + b;
  end
end

endmodule
