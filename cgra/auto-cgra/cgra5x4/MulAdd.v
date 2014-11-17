`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2014 03:55:35 PM
// Design Name: 
// Module Name: MulAdd
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


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/29/2013 10:19:44 AM
// Design Name: 
// Module Name: muladd
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


module MulAdd(
         clk,
         Resetn,
         a,
         b,
         c,
         subtract,
         p
    );
    
parameter DWIDTH1 = 16;
parameter DWIDTH2 = 16;
parameter DWIDTH = 32;

input                        clk;
input                        Resetn;
input signed [DWIDTH1-1:0]   a;
input signed [DWIDTH2-1:0]   b;
input [DWIDTH-1:0]           c;
input                        subtract;
output[DWIDTH-1:0]           p;

reg signed [DWIDTH1-1:0]     a_reg0;
reg signed [DWIDTH2-1:0]     b_reg0;
reg   [DWIDTH-1:0]           c_reg0;

reg   [DWIDTH-1:0]           c_reg1;
reg signed [DWIDTH-1:0]      mul_result;
reg                          subtract_reg;
reg  [DWIDTH-1:0]            p;

always@(posedge clk) begin
  if(Resetn==1'b0) begin
    a_reg0 <= 0;
  end
  else begin
    a_reg0 <= a;
  end
end

always@(posedge clk) begin
  if(Resetn==1'b0) begin
    b_reg0 <= 0;
  end
  else begin
    b_reg0 <= b;
  end
end

always@(posedge clk) begin
  if(Resetn==1'b0) begin
    c_reg0 <= 0;
  end
  else begin
    c_reg0 <= c;
  end
end

always@(posedge clk) begin
  if(Resetn==1'b0) begin
    subtract_reg <= 0;
  end
  else begin
    subtract_reg <= subtract;
  end
end

always@(posedge clk) begin
  if(Resetn==1'b0) begin
    c_reg1 <= 0;
  end
  else begin
    c_reg1 <= c_reg0;
  end
end

always@(posedge clk) begin
  if(Resetn==1'b0) begin
    mul_result <= 0;
  end
  else begin
    mul_result <= a_reg0 * b_reg0;
  end
end

always@(posedge clk) begin
  if(Resetn==1'b0) begin
    p <= 0;
  end
  else begin
    p <= (subtract_reg)? mul_result-c_reg1 : mul_result+c_reg1;
  end
end

endmodule
