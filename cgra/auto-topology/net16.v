`timescale 1ns / 1ps
module net16(
	      input [15:0]  D_IN,
	      output [15:0] P_OUT,
	      input 	    CLK,
	      input 	    RST,
	      input [1:0]   MEMEN
	      );

  wire[15:0] PE0_DATA_IN0;
  wire[15:0] PE0_DATA_IN1;
  wire[15:0] PE0_DATA_IN2;
  wire[15:0] PE0_DATA_IN3;
  wire[15:0] PE0_DATA_IN4;
  wire[15:0] PE0_DATA_IN5;
  wire[15:0] PE0_DATA_IN6;
  wire[15:0] PE0_DATA_IN7;

  wire[15:0] PE1_DATA_IN0;
  wire[15:0] PE1_DATA_IN1;
  wire[15:0] PE1_DATA_IN2;
  wire[15:0] PE1_DATA_IN3;
  wire[15:0] PE1_DATA_IN4;
  wire[15:0] PE1_DATA_IN5;
  wire[15:0] PE1_DATA_IN6;
  wire[15:0] PE1_DATA_IN7;

  wire[15:0] PE2_DATA_IN0;
  wire[15:0] PE2_DATA_IN1;
  wire[15:0] PE2_DATA_IN2;
  wire[15:0] PE2_DATA_IN3;
  wire[15:0] PE2_DATA_IN4;
  wire[15:0] PE2_DATA_IN5;
  wire[15:0] PE2_DATA_IN6;
  wire[15:0] PE2_DATA_IN7;

  wire[15:0] PE3_DATA_IN0;
  wire[15:0] PE3_DATA_IN1;
  wire[15:0] PE3_DATA_IN2;
  wire[15:0] PE3_DATA_IN3;
  wire[15:0] PE3_DATA_IN4;
  wire[15:0] PE3_DATA_IN5;
  wire[15:0] PE3_DATA_IN6;
  wire[15:0] PE3_DATA_IN7;

  wire[15:0] PE4_DATA_IN0;
  wire[15:0] PE4_DATA_IN1;
  wire[15:0] PE4_DATA_IN2;
  wire[15:0] PE4_DATA_IN3;
  wire[15:0] PE4_DATA_IN4;
  wire[15:0] PE4_DATA_IN5;
  wire[15:0] PE4_DATA_IN6;
  wire[15:0] PE4_DATA_IN7;

  wire[15:0] PE5_DATA_IN0;
  wire[15:0] PE5_DATA_IN1;
  wire[15:0] PE5_DATA_IN2;
  wire[15:0] PE5_DATA_IN3;
  wire[15:0] PE5_DATA_IN4;
  wire[15:0] PE5_DATA_IN5;
  wire[15:0] PE5_DATA_IN6;
  wire[15:0] PE5_DATA_IN7;

  wire[15:0] PE6_DATA_IN0;
  wire[15:0] PE6_DATA_IN1;
  wire[15:0] PE6_DATA_IN2;
  wire[15:0] PE6_DATA_IN3;
  wire[15:0] PE6_DATA_IN4;
  wire[15:0] PE6_DATA_IN5;
  wire[15:0] PE6_DATA_IN6;
  wire[15:0] PE6_DATA_IN7;

  wire[15:0] PE7_DATA_IN0;
  wire[15:0] PE7_DATA_IN1;
  wire[15:0] PE7_DATA_IN2;
  wire[15:0] PE7_DATA_IN3;
  wire[15:0] PE7_DATA_IN4;
  wire[15:0] PE7_DATA_IN5;
  wire[15:0] PE7_DATA_IN6;
  wire[15:0] PE7_DATA_IN7;

  wire[15:0] PE8_DATA_IN0;
  wire[15:0] PE8_DATA_IN1;
  wire[15:0] PE8_DATA_IN2;
  wire[15:0] PE8_DATA_IN3;
  wire[15:0] PE8_DATA_IN4;
  wire[15:0] PE8_DATA_IN5;
  wire[15:0] PE8_DATA_IN6;
  wire[15:0] PE8_DATA_IN7;

  wire[15:0] PE9_DATA_IN0;
  wire[15:0] PE9_DATA_IN1;
  wire[15:0] PE9_DATA_IN2;
  wire[15:0] PE9_DATA_IN3;
  wire[15:0] PE9_DATA_IN4;
  wire[15:0] PE9_DATA_IN5;
  wire[15:0] PE9_DATA_IN6;
  wire[15:0] PE9_DATA_IN7;

  wire[15:0] PE10_DATA_IN0;
  wire[15:0] PE10_DATA_IN1;
  wire[15:0] PE10_DATA_IN2;
  wire[15:0] PE10_DATA_IN3;
  wire[15:0] PE10_DATA_IN4;
  wire[15:0] PE10_DATA_IN5;
  wire[15:0] PE10_DATA_IN6;
  wire[15:0] PE10_DATA_IN7;

  wire[15:0] PE11_DATA_IN0;
  wire[15:0] PE11_DATA_IN1;
  wire[15:0] PE11_DATA_IN2;
  wire[15:0] PE11_DATA_IN3;
  wire[15:0] PE11_DATA_IN4;
  wire[15:0] PE11_DATA_IN5;
  wire[15:0] PE11_DATA_IN6;
  wire[15:0] PE11_DATA_IN7;

  wire[15:0] PE12_DATA_IN0;
  wire[15:0] PE12_DATA_IN1;
  wire[15:0] PE12_DATA_IN2;
  wire[15:0] PE12_DATA_IN3;
  wire[15:0] PE12_DATA_IN4;
  wire[15:0] PE12_DATA_IN5;
  wire[15:0] PE12_DATA_IN6;
  wire[15:0] PE12_DATA_IN7;

  wire[15:0] PE13_DATA_IN0;
  wire[15:0] PE13_DATA_IN1;
  wire[15:0] PE13_DATA_IN2;
  wire[15:0] PE13_DATA_IN3;
  wire[15:0] PE13_DATA_IN4;
  wire[15:0] PE13_DATA_IN5;
  wire[15:0] PE13_DATA_IN6;
  wire[15:0] PE13_DATA_IN7;

  wire[15:0] PE14_DATA_IN0;
  wire[15:0] PE14_DATA_IN1;
  wire[15:0] PE14_DATA_IN2;
  wire[15:0] PE14_DATA_IN3;
  wire[15:0] PE14_DATA_IN4;
  wire[15:0] PE14_DATA_IN5;
  wire[15:0] PE14_DATA_IN6;
  wire[15:0] PE14_DATA_IN7;

  wire[15:0] PE15_DATA_IN0;
  wire[15:0] PE15_DATA_IN1;
  wire[15:0] PE15_DATA_IN2;
  wire[15:0] PE15_DATA_IN3;
  wire[15:0] PE15_DATA_IN4;
  wire[15:0] PE15_DATA_IN5;
  wire[15:0] PE15_DATA_IN6;
  wire[15:0] PE15_DATA_IN7;

  wire[15:0] PE0_DATA_OUT0;
  wire[15:0] PE0_DATA_OUT1;
  wire[15:0] PE0_DATA_OUT2;
  wire[15:0] PE0_DATA_OUT3;
  wire[15:0] PE0_DATA_OUT4;
  wire[15:0] PE0_DATA_OUT5;
  wire[15:0] PE0_DATA_OUT6;
  wire[15:0] PE0_DATA_OUT7;

  wire[15:0] PE1_DATA_OUT0;
  wire[15:0] PE1_DATA_OUT1;
  wire[15:0] PE1_DATA_OUT2;
  wire[15:0] PE1_DATA_OUT3;
  wire[15:0] PE1_DATA_OUT4;
  wire[15:0] PE1_DATA_OUT5;
  wire[15:0] PE1_DATA_OUT6;
  wire[15:0] PE1_DATA_OUT7;

  wire[15:0] PE2_DATA_OUT0;
  wire[15:0] PE2_DATA_OUT1;
  wire[15:0] PE2_DATA_OUT2;
  wire[15:0] PE2_DATA_OUT3;
  wire[15:0] PE2_DATA_OUT4;
  wire[15:0] PE2_DATA_OUT5;
  wire[15:0] PE2_DATA_OUT6;
  wire[15:0] PE2_DATA_OUT7;

  wire[15:0] PE3_DATA_OUT0;
  wire[15:0] PE3_DATA_OUT1;
  wire[15:0] PE3_DATA_OUT2;
  wire[15:0] PE3_DATA_OUT3;
  wire[15:0] PE3_DATA_OUT4;
  wire[15:0] PE3_DATA_OUT5;
  wire[15:0] PE3_DATA_OUT6;
  wire[15:0] PE3_DATA_OUT7;

  wire[15:0] PE4_DATA_OUT0;
  wire[15:0] PE4_DATA_OUT1;
  wire[15:0] PE4_DATA_OUT2;
  wire[15:0] PE4_DATA_OUT3;
  wire[15:0] PE4_DATA_OUT4;
  wire[15:0] PE4_DATA_OUT5;
  wire[15:0] PE4_DATA_OUT6;
  wire[15:0] PE4_DATA_OUT7;

  wire[15:0] PE5_DATA_OUT0;
  wire[15:0] PE5_DATA_OUT1;
  wire[15:0] PE5_DATA_OUT2;
  wire[15:0] PE5_DATA_OUT3;
  wire[15:0] PE5_DATA_OUT4;
  wire[15:0] PE5_DATA_OUT5;
  wire[15:0] PE5_DATA_OUT6;
  wire[15:0] PE5_DATA_OUT7;

  wire[15:0] PE6_DATA_OUT0;
  wire[15:0] PE6_DATA_OUT1;
  wire[15:0] PE6_DATA_OUT2;
  wire[15:0] PE6_DATA_OUT3;
  wire[15:0] PE6_DATA_OUT4;
  wire[15:0] PE6_DATA_OUT5;
  wire[15:0] PE6_DATA_OUT6;
  wire[15:0] PE6_DATA_OUT7;

  wire[15:0] PE7_DATA_OUT0;
  wire[15:0] PE7_DATA_OUT1;
  wire[15:0] PE7_DATA_OUT2;
  wire[15:0] PE7_DATA_OUT3;
  wire[15:0] PE7_DATA_OUT4;
  wire[15:0] PE7_DATA_OUT5;
  wire[15:0] PE7_DATA_OUT6;
  wire[15:0] PE7_DATA_OUT7;

  wire[15:0] PE8_DATA_OUT0;
  wire[15:0] PE8_DATA_OUT1;
  wire[15:0] PE8_DATA_OUT2;
  wire[15:0] PE8_DATA_OUT3;
  wire[15:0] PE8_DATA_OUT4;
  wire[15:0] PE8_DATA_OUT5;
  wire[15:0] PE8_DATA_OUT6;
  wire[15:0] PE8_DATA_OUT7;

  wire[15:0] PE9_DATA_OUT0;
  wire[15:0] PE9_DATA_OUT1;
  wire[15:0] PE9_DATA_OUT2;
  wire[15:0] PE9_DATA_OUT3;
  wire[15:0] PE9_DATA_OUT4;
  wire[15:0] PE9_DATA_OUT5;
  wire[15:0] PE9_DATA_OUT6;
  wire[15:0] PE9_DATA_OUT7;

  wire[15:0] PE10_DATA_OUT0;
  wire[15:0] PE10_DATA_OUT1;
  wire[15:0] PE10_DATA_OUT2;
  wire[15:0] PE10_DATA_OUT3;
  wire[15:0] PE10_DATA_OUT4;
  wire[15:0] PE10_DATA_OUT5;
  wire[15:0] PE10_DATA_OUT6;
  wire[15:0] PE10_DATA_OUT7;

  wire[15:0] PE11_DATA_OUT0;
  wire[15:0] PE11_DATA_OUT1;
  wire[15:0] PE11_DATA_OUT2;
  wire[15:0] PE11_DATA_OUT3;
  wire[15:0] PE11_DATA_OUT4;
  wire[15:0] PE11_DATA_OUT5;
  wire[15:0] PE11_DATA_OUT6;
  wire[15:0] PE11_DATA_OUT7;

  wire[15:0] PE12_DATA_OUT0;
  wire[15:0] PE12_DATA_OUT1;
  wire[15:0] PE12_DATA_OUT2;
  wire[15:0] PE12_DATA_OUT3;
  wire[15:0] PE12_DATA_OUT4;
  wire[15:0] PE12_DATA_OUT5;
  wire[15:0] PE12_DATA_OUT6;
  wire[15:0] PE12_DATA_OUT7;

  wire[15:0] PE13_DATA_OUT0;
  wire[15:0] PE13_DATA_OUT1;
  wire[15:0] PE13_DATA_OUT2;
  wire[15:0] PE13_DATA_OUT3;
  wire[15:0] PE13_DATA_OUT4;
  wire[15:0] PE13_DATA_OUT5;
  wire[15:0] PE13_DATA_OUT6;
  wire[15:0] PE13_DATA_OUT7;

  wire[15:0] PE14_DATA_OUT0;
  wire[15:0] PE14_DATA_OUT1;
  wire[15:0] PE14_DATA_OUT2;
  wire[15:0] PE14_DATA_OUT3;
  wire[15:0] PE14_DATA_OUT4;
  wire[15:0] PE14_DATA_OUT5;
  wire[15:0] PE14_DATA_OUT6;
  wire[15:0] PE14_DATA_OUT7;

  wire[15:0] PE15_DATA_OUT0;
  wire[15:0] PE15_DATA_OUT1;
  wire[15:0] PE15_DATA_OUT2;
  wire[15:0] PE15_DATA_OUT3;
  wire[15:0] PE15_DATA_OUT4;
  wire[15:0] PE15_DATA_OUT5;
  wire[15:0] PE15_DATA_OUT6;
  wire[15:0] PE15_DATA_OUT7;

  wire[15:0] NET_DATA_IN;
  reg[15:0]  NET_DATA_OUT;


  assign P_OUT = NET_DATA_OUT;
   
  always@(posedge CLK) begin
     if(RST)
	   NET_DATA_OUT <= 0;
     else if(MEMEN==2'b01)
	   NET_DATA_OUT <= PE0_DATA_OUT0;
     else
	   NET_DATA_OUT <= 0;
  end
   
  assign NET_DATA_IN = (MEMEN==2'b10) ? D_IN : PE0_DATA_IN0;

  PE PE0 (
      .CLK(CLK),
      .RST(RST),

      .D0(NET_DATA_IN),
      .D1(PE0_DATA_IN1),
      .D2(PE0_DATA_IN2),
      .D3(PE0_DATA_IN3),
      .D4(PE0_DATA_IN4),
      .D5(PE0_DATA_IN5),
      .D6(PE0_DATA_IN6),
      .D7(PE0_DATA_IN7),

      .P0_OUT(PE0_DATA_OUT0),
      .P1_OUT(PE0_DATA_OUT1),
      .P2_OUT(PE0_DATA_OUT2),
      .P3_OUT(PE0_DATA_OUT3),
      .P4_OUT(PE0_DATA_OUT4),
      .P5_OUT(PE0_DATA_OUT5),
      .P6_OUT(PE0_DATA_OUT6),
      .P7_OUT(PE0_DATA_OUT7)
     );

  PE PE1 (
      .CLK(CLK),
      .RST(RST),

      .D0(PE1_DATA_IN0),
      .D1(PE1_DATA_IN1),
      .D2(PE1_DATA_IN2),
      .D3(PE1_DATA_IN3),
      .D4(PE1_DATA_IN4),
      .D5(PE1_DATA_IN5),
      .D6(PE1_DATA_IN6),
      .D7(PE1_DATA_IN7),

      .P0_OUT(PE1_DATA_OUT0),
      .P1_OUT(PE1_DATA_OUT1),
      .P2_OUT(PE1_DATA_OUT2),
      .P3_OUT(PE1_DATA_OUT3),
      .P4_OUT(PE1_DATA_OUT4),
      .P5_OUT(PE1_DATA_OUT5),
      .P6_OUT(PE1_DATA_OUT6),
      .P7_OUT(PE1_DATA_OUT7)
     );

  PE PE2 (
      .CLK(CLK),
      .RST(RST),

      .D0(PE2_DATA_IN0),
      .D1(PE2_DATA_IN1),
      .D2(PE2_DATA_IN2),
      .D3(PE2_DATA_IN3),
      .D4(PE2_DATA_IN4),
      .D5(PE2_DATA_IN5),
      .D6(PE2_DATA_IN6),
      .D7(PE2_DATA_IN7),

      .P0_OUT(PE2_DATA_OUT0),
      .P1_OUT(PE2_DATA_OUT1),
      .P2_OUT(PE2_DATA_OUT2),
      .P3_OUT(PE2_DATA_OUT3),
      .P4_OUT(PE2_DATA_OUT4),
      .P5_OUT(PE2_DATA_OUT5),
      .P6_OUT(PE2_DATA_OUT6),
      .P7_OUT(PE2_DATA_OUT7)
     );

  PE PE3 (
      .CLK(CLK),
      .RST(RST),

      .D0(PE3_DATA_IN0),
      .D1(PE3_DATA_IN1),
      .D2(PE3_DATA_IN2),
      .D3(PE3_DATA_IN3),
      .D4(PE3_DATA_IN4),
      .D5(PE3_DATA_IN5),
      .D6(PE3_DATA_IN6),
      .D7(PE3_DATA_IN7),

      .P0_OUT(PE3_DATA_OUT0),
      .P1_OUT(PE3_DATA_OUT1),
      .P2_OUT(PE3_DATA_OUT2),
      .P3_OUT(PE3_DATA_OUT3),
      .P4_OUT(PE3_DATA_OUT4),
      .P5_OUT(PE3_DATA_OUT5),
      .P6_OUT(PE3_DATA_OUT6),
      .P7_OUT(PE3_DATA_OUT7)
     );

  PE PE4 (
      .CLK(CLK),
      .RST(RST),

      .D0(PE4_DATA_IN0),
      .D1(PE4_DATA_IN1),
      .D2(PE4_DATA_IN2),
      .D3(PE4_DATA_IN3),
      .D4(PE4_DATA_IN4),
      .D5(PE4_DATA_IN5),
      .D6(PE4_DATA_IN6),
      .D7(PE4_DATA_IN7),

      .P0_OUT(PE4_DATA_OUT0),
      .P1_OUT(PE4_DATA_OUT1),
      .P2_OUT(PE4_DATA_OUT2),
      .P3_OUT(PE4_DATA_OUT3),
      .P4_OUT(PE4_DATA_OUT4),
      .P5_OUT(PE4_DATA_OUT5),
      .P6_OUT(PE4_DATA_OUT6),
      .P7_OUT(PE4_DATA_OUT7)
     );

  PE PE5 (
      .CLK(CLK),
      .RST(RST),

      .D0(PE5_DATA_IN0),
      .D1(PE5_DATA_IN1),
      .D2(PE5_DATA_IN2),
      .D3(PE5_DATA_IN3),
      .D4(PE5_DATA_IN4),
      .D5(PE5_DATA_IN5),
      .D6(PE5_DATA_IN6),
      .D7(PE5_DATA_IN7),

      .P0_OUT(PE5_DATA_OUT0),
      .P1_OUT(PE5_DATA_OUT1),
      .P2_OUT(PE5_DATA_OUT2),
      .P3_OUT(PE5_DATA_OUT3),
      .P4_OUT(PE5_DATA_OUT4),
      .P5_OUT(PE5_DATA_OUT5),
      .P6_OUT(PE5_DATA_OUT6),
      .P7_OUT(PE5_DATA_OUT7)
     );

  PE PE6 (
      .CLK(CLK),
      .RST(RST),

      .D0(PE6_DATA_IN0),
      .D1(PE6_DATA_IN1),
      .D2(PE6_DATA_IN2),
      .D3(PE6_DATA_IN3),
      .D4(PE6_DATA_IN4),
      .D5(PE6_DATA_IN5),
      .D6(PE6_DATA_IN6),
      .D7(PE6_DATA_IN7),

      .P0_OUT(PE6_DATA_OUT0),
      .P1_OUT(PE6_DATA_OUT1),
      .P2_OUT(PE6_DATA_OUT2),
      .P3_OUT(PE6_DATA_OUT3),
      .P4_OUT(PE6_DATA_OUT4),
      .P5_OUT(PE6_DATA_OUT5),
      .P6_OUT(PE6_DATA_OUT6),
      .P7_OUT(PE6_DATA_OUT7)
     );

  PE PE7 (
      .CLK(CLK),
      .RST(RST),

      .D0(PE7_DATA_IN0),
      .D1(PE7_DATA_IN1),
      .D2(PE7_DATA_IN2),
      .D3(PE7_DATA_IN3),
      .D4(PE7_DATA_IN4),
      .D5(PE7_DATA_IN5),
      .D6(PE7_DATA_IN6),
      .D7(PE7_DATA_IN7),

      .P0_OUT(PE7_DATA_OUT0),
      .P1_OUT(PE7_DATA_OUT1),
      .P2_OUT(PE7_DATA_OUT2),
      .P3_OUT(PE7_DATA_OUT3),
      .P4_OUT(PE7_DATA_OUT4),
      .P5_OUT(PE7_DATA_OUT5),
      .P6_OUT(PE7_DATA_OUT6),
      .P7_OUT(PE7_DATA_OUT7)
     );

  PE PE8 (
      .CLK(CLK),
      .RST(RST),

      .D0(PE8_DATA_IN0),
      .D1(PE8_DATA_IN1),
      .D2(PE8_DATA_IN2),
      .D3(PE8_DATA_IN3),
      .D4(PE8_DATA_IN4),
      .D5(PE8_DATA_IN5),
      .D6(PE8_DATA_IN6),
      .D7(PE8_DATA_IN7),

      .P0_OUT(PE8_DATA_OUT0),
      .P1_OUT(PE8_DATA_OUT1),
      .P2_OUT(PE8_DATA_OUT2),
      .P3_OUT(PE8_DATA_OUT3),
      .P4_OUT(PE8_DATA_OUT4),
      .P5_OUT(PE8_DATA_OUT5),
      .P6_OUT(PE8_DATA_OUT6),
      .P7_OUT(PE8_DATA_OUT7)
     );

  PE PE9 (
      .CLK(CLK),
      .RST(RST),

      .D0(PE9_DATA_IN0),
      .D1(PE9_DATA_IN1),
      .D2(PE9_DATA_IN2),
      .D3(PE9_DATA_IN3),
      .D4(PE9_DATA_IN4),
      .D5(PE9_DATA_IN5),
      .D6(PE9_DATA_IN6),
      .D7(PE9_DATA_IN7),

      .P0_OUT(PE9_DATA_OUT0),
      .P1_OUT(PE9_DATA_OUT1),
      .P2_OUT(PE9_DATA_OUT2),
      .P3_OUT(PE9_DATA_OUT3),
      .P4_OUT(PE9_DATA_OUT4),
      .P5_OUT(PE9_DATA_OUT5),
      .P6_OUT(PE9_DATA_OUT6),
      .P7_OUT(PE9_DATA_OUT7)
     );

  PE PE10 (
      .CLK(CLK),
      .RST(RST),

      .D0(PE10_DATA_IN0),
      .D1(PE10_DATA_IN1),
      .D2(PE10_DATA_IN2),
      .D3(PE10_DATA_IN3),
      .D4(PE10_DATA_IN4),
      .D5(PE10_DATA_IN5),
      .D6(PE10_DATA_IN6),
      .D7(PE10_DATA_IN7),

      .P0_OUT(PE10_DATA_OUT0),
      .P1_OUT(PE10_DATA_OUT1),
      .P2_OUT(PE10_DATA_OUT2),
      .P3_OUT(PE10_DATA_OUT3),
      .P4_OUT(PE10_DATA_OUT4),
      .P5_OUT(PE10_DATA_OUT5),
      .P6_OUT(PE10_DATA_OUT6),
      .P7_OUT(PE10_DATA_OUT7)
     );

  PE PE11 (
      .CLK(CLK),
      .RST(RST),

      .D0(PE11_DATA_IN0),
      .D1(PE11_DATA_IN1),
      .D2(PE11_DATA_IN2),
      .D3(PE11_DATA_IN3),
      .D4(PE11_DATA_IN4),
      .D5(PE11_DATA_IN5),
      .D6(PE11_DATA_IN6),
      .D7(PE11_DATA_IN7),

      .P0_OUT(PE11_DATA_OUT0),
      .P1_OUT(PE11_DATA_OUT1),
      .P2_OUT(PE11_DATA_OUT2),
      .P3_OUT(PE11_DATA_OUT3),
      .P4_OUT(PE11_DATA_OUT4),
      .P5_OUT(PE11_DATA_OUT5),
      .P6_OUT(PE11_DATA_OUT6),
      .P7_OUT(PE11_DATA_OUT7)
     );

  PE PE12 (
      .CLK(CLK),
      .RST(RST),

      .D0(PE12_DATA_IN0),
      .D1(PE12_DATA_IN1),
      .D2(PE12_DATA_IN2),
      .D3(PE12_DATA_IN3),
      .D4(PE12_DATA_IN4),
      .D5(PE12_DATA_IN5),
      .D6(PE12_DATA_IN6),
      .D7(PE12_DATA_IN7),

      .P0_OUT(PE12_DATA_OUT0),
      .P1_OUT(PE12_DATA_OUT1),
      .P2_OUT(PE12_DATA_OUT2),
      .P3_OUT(PE12_DATA_OUT3),
      .P4_OUT(PE12_DATA_OUT4),
      .P5_OUT(PE12_DATA_OUT5),
      .P6_OUT(PE12_DATA_OUT6),
      .P7_OUT(PE12_DATA_OUT7)
     );

  PE PE13 (
      .CLK(CLK),
      .RST(RST),

      .D0(PE13_DATA_IN0),
      .D1(PE13_DATA_IN1),
      .D2(PE13_DATA_IN2),
      .D3(PE13_DATA_IN3),
      .D4(PE13_DATA_IN4),
      .D5(PE13_DATA_IN5),
      .D6(PE13_DATA_IN6),
      .D7(PE13_DATA_IN7),

      .P0_OUT(PE13_DATA_OUT0),
      .P1_OUT(PE13_DATA_OUT1),
      .P2_OUT(PE13_DATA_OUT2),
      .P3_OUT(PE13_DATA_OUT3),
      .P4_OUT(PE13_DATA_OUT4),
      .P5_OUT(PE13_DATA_OUT5),
      .P6_OUT(PE13_DATA_OUT6),
      .P7_OUT(PE13_DATA_OUT7)
     );

  PE PE14 (
      .CLK(CLK),
      .RST(RST),

      .D0(PE14_DATA_IN0),
      .D1(PE14_DATA_IN1),
      .D2(PE14_DATA_IN2),
      .D3(PE14_DATA_IN3),
      .D4(PE14_DATA_IN4),
      .D5(PE14_DATA_IN5),
      .D6(PE14_DATA_IN6),
      .D7(PE14_DATA_IN7),

      .P0_OUT(PE14_DATA_OUT0),
      .P1_OUT(PE14_DATA_OUT1),
      .P2_OUT(PE14_DATA_OUT2),
      .P3_OUT(PE14_DATA_OUT3),
      .P4_OUT(PE14_DATA_OUT4),
      .P5_OUT(PE14_DATA_OUT5),
      .P6_OUT(PE14_DATA_OUT6),
      .P7_OUT(PE14_DATA_OUT7)
     );

  PE PE15 (
      .CLK(CLK),
      .RST(RST),

      .D0(PE15_DATA_IN0),
      .D1(PE15_DATA_IN1),
      .D2(PE15_DATA_IN2),
      .D3(PE15_DATA_IN3),
      .D4(PE15_DATA_IN4),
      .D5(PE15_DATA_IN5),
      .D6(PE15_DATA_IN6),
      .D7(PE15_DATA_IN7),

      .P0_OUT(PE15_DATA_OUT0),
      .P1_OUT(PE15_DATA_OUT1),
      .P2_OUT(PE15_DATA_OUT2),
      .P3_OUT(PE15_DATA_OUT3),
      .P4_OUT(PE15_DATA_OUT4),
      .P5_OUT(PE15_DATA_OUT5),
      .P6_OUT(PE15_DATA_OUT6),
      .P7_OUT(PE15_DATA_OUT7)
     );


  assign PE1_DATA_IN0 = PE0_DATA_OUT0;
  assign PE3_DATA_IN0 = PE0_DATA_OUT1;
  assign PE4_DATA_IN0 = PE0_DATA_OUT2;
  assign PE12_DATA_IN0 = PE0_DATA_OUT3;

  assign PE0_DATA_IN0 = PE1_DATA_OUT0;
  assign PE2_DATA_IN0 = PE1_DATA_OUT1;
  assign PE5_DATA_IN0 = PE1_DATA_OUT2;
  assign PE13_DATA_IN0 = PE1_DATA_OUT3;

  assign PE1_DATA_IN1 = PE2_DATA_OUT0;
  assign PE3_DATA_IN1 = PE2_DATA_OUT1;
  assign PE6_DATA_IN0 = PE2_DATA_OUT2;
  assign PE14_DATA_IN0 = PE2_DATA_OUT3;

  assign PE0_DATA_IN1 = PE3_DATA_OUT0;
  assign PE2_DATA_IN1 = PE3_DATA_OUT1;
  assign PE7_DATA_IN0 = PE3_DATA_OUT2;
  assign PE15_DATA_IN0 = PE3_DATA_OUT3;

  assign PE0_DATA_IN2 = PE4_DATA_OUT0;
  assign PE5_DATA_IN1 = PE4_DATA_OUT1;
  assign PE7_DATA_IN1 = PE4_DATA_OUT2;
  assign PE8_DATA_IN0 = PE4_DATA_OUT3;

  assign PE1_DATA_IN2 = PE5_DATA_OUT0;
  assign PE4_DATA_IN1 = PE5_DATA_OUT1;
  assign PE6_DATA_IN1 = PE5_DATA_OUT2;
  assign PE9_DATA_IN0 = PE5_DATA_OUT3;

  assign PE2_DATA_IN2 = PE6_DATA_OUT0;
  assign PE5_DATA_IN2 = PE6_DATA_OUT1;
  assign PE7_DATA_IN2 = PE6_DATA_OUT2;
  assign PE10_DATA_IN0 = PE6_DATA_OUT3;

  assign PE3_DATA_IN2 = PE7_DATA_OUT0;
  assign PE4_DATA_IN2 = PE7_DATA_OUT1;
  assign PE6_DATA_IN2 = PE7_DATA_OUT2;
  assign PE11_DATA_IN0 = PE7_DATA_OUT3;

  assign PE4_DATA_IN3 = PE8_DATA_OUT0;
  assign PE9_DATA_IN1 = PE8_DATA_OUT1;
  assign PE11_DATA_IN1 = PE8_DATA_OUT2;
  assign PE12_DATA_IN1 = PE8_DATA_OUT3;

  assign PE5_DATA_IN3 = PE9_DATA_OUT0;
  assign PE8_DATA_IN1 = PE9_DATA_OUT1;
  assign PE10_DATA_IN1 = PE9_DATA_OUT2;
  assign PE13_DATA_IN1 = PE9_DATA_OUT3;

  assign PE6_DATA_IN3 = PE10_DATA_OUT0;
  assign PE9_DATA_IN2 = PE10_DATA_OUT1;
  assign PE11_DATA_IN2 = PE10_DATA_OUT2;
  assign PE14_DATA_IN1 = PE10_DATA_OUT3;

  assign PE7_DATA_IN3 = PE11_DATA_OUT0;
  assign PE8_DATA_IN2 = PE11_DATA_OUT1;
  assign PE10_DATA_IN2 = PE11_DATA_OUT2;
  assign PE15_DATA_IN1 = PE11_DATA_OUT3;

  assign PE0_DATA_IN3 = PE12_DATA_OUT0;
  assign PE8_DATA_IN3 = PE12_DATA_OUT1;
  assign PE13_DATA_IN2 = PE12_DATA_OUT2;
  assign PE15_DATA_IN2 = PE12_DATA_OUT3;

  assign PE1_DATA_IN3 = PE13_DATA_OUT0;
  assign PE9_DATA_IN3 = PE13_DATA_OUT1;
  assign PE12_DATA_IN2 = PE13_DATA_OUT2;
  assign PE14_DATA_IN2 = PE13_DATA_OUT3;

  assign PE2_DATA_IN3 = PE14_DATA_OUT0;
  assign PE10_DATA_IN3 = PE14_DATA_OUT1;
  assign PE13_DATA_IN3 = PE14_DATA_OUT2;
  assign PE15_DATA_IN3 = PE14_DATA_OUT3;

  assign PE3_DATA_IN3 = PE15_DATA_OUT0;
  assign PE11_DATA_IN3 = PE15_DATA_OUT1;
  assign PE12_DATA_IN3 = PE15_DATA_OUT2;
  assign PE14_DATA_IN3 = PE15_DATA_OUT3;

  
endmodule
