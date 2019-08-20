//-----------------------------------------------------------------------------
// axi_bram_ctrl_1_bram_block_1_elaborate.v
//-----------------------------------------------------------------------------

(* keep_hierarchy = "yes" *)
module axi_bram_ctrl_1_bram_block_1_elaborate
  (
    BRAM_Rst_A,
    BRAM_Clk_A,
    BRAM_EN_A,
    BRAM_WEN_A,
    BRAM_Addr_A,
    BRAM_Din_A,
    BRAM_Dout_A,
    BRAM_Rst_B,
    BRAM_Clk_B,
    BRAM_EN_B,
    BRAM_WEN_B,
    BRAM_Addr_B,
    BRAM_Din_B,
    BRAM_Dout_B
  );
  parameter
    C_MEMSIZE = 'h2000,
    C_PORT_DWIDTH = 32,
    C_PORT_AWIDTH = 32,
    C_NUM_WE = 4,
    C_FAMILY = "zynq";
  input BRAM_Rst_A;
  input BRAM_Clk_A;
  input BRAM_EN_A;
  input [0:C_NUM_WE-1] BRAM_WEN_A;
  input [0:C_PORT_AWIDTH-1] BRAM_Addr_A;
  output [0:C_PORT_DWIDTH-1] BRAM_Din_A;
  input [0:C_PORT_DWIDTH-1] BRAM_Dout_A;
  input BRAM_Rst_B;
  input BRAM_Clk_B;
  input BRAM_EN_B;
  input [0:C_NUM_WE-1] BRAM_WEN_B;
  input [0:C_PORT_AWIDTH-1] BRAM_Addr_B;
  output [0:C_PORT_DWIDTH-1] BRAM_Din_B;
  input [0:C_PORT_DWIDTH-1] BRAM_Dout_B;

  // Internal signals

  wire net_gnd0;
  wire [3:0] net_gnd4;
  wire [0:0] pgassign1;
  wire [0:3] pgassign2;
  wire [0:15] pgassign3;
  wire [15:0] pgassign4;
  wire [31:0] pgassign5;
  wire [31:0] pgassign6;
  wire [3:0] pgassign7;
  wire [15:0] pgassign8;
  wire [31:0] pgassign9;
  wire [31:0] pgassign10;
  wire [7:0] pgassign11;
  wire [15:0] pgassign12;
  wire [31:0] pgassign13;
  wire [31:0] pgassign14;
  wire [3:0] pgassign15;
  wire [15:0] pgassign16;
  wire [31:0] pgassign17;
  wire [31:0] pgassign18;
  wire [7:0] pgassign19;

  // Internal assignments

  assign pgassign1[0:0] = 1'b1;
  assign pgassign2[0:3] = 4'b0000;
  assign pgassign3[0:15] = 16'b0000000000000000;
  assign pgassign4[15:15] = 1'b1;
  assign pgassign4[14:4] = BRAM_Addr_A[19:29];
  assign pgassign4[3:0] = 4'b0000;
  assign pgassign5[31:16] = 16'b0000000000000000;
  assign pgassign5[15:0] = BRAM_Dout_A[0:15];
  assign BRAM_Din_A[0:15] = pgassign6[15:0];
  assign pgassign7[3:3] = BRAM_WEN_A[0:0];
  assign pgassign7[2:2] = BRAM_WEN_A[1:1];
  assign pgassign7[1:1] = BRAM_WEN_A[0:0];
  assign pgassign7[0:0] = BRAM_WEN_A[1:1];
  assign pgassign8[15:15] = 1'b1;
  assign pgassign8[14:4] = BRAM_Addr_B[19:29];
  assign pgassign8[3:0] = 4'b0000;
  assign pgassign9[31:16] = 16'b0000000000000000;
  assign pgassign9[15:0] = BRAM_Dout_B[0:15];
  assign BRAM_Din_B[0:15] = pgassign10[15:0];
  assign pgassign11[7:4] = 4'b0000;
  assign pgassign11[3:3] = BRAM_WEN_B[0:0];
  assign pgassign11[2:2] = BRAM_WEN_B[1:1];
  assign pgassign11[1:1] = BRAM_WEN_B[0:0];
  assign pgassign11[0:0] = BRAM_WEN_B[1:1];
  assign pgassign12[15:15] = 1'b1;
  assign pgassign12[14:4] = BRAM_Addr_A[19:29];
  assign pgassign12[3:0] = 4'b0000;
  assign pgassign13[31:16] = 16'b0000000000000000;
  assign pgassign13[15:0] = BRAM_Dout_A[16:31];
  assign BRAM_Din_A[16:31] = pgassign14[15:0];
  assign pgassign15[3:3] = BRAM_WEN_A[2:2];
  assign pgassign15[2:2] = BRAM_WEN_A[3:3];
  assign pgassign15[1:1] = BRAM_WEN_A[2:2];
  assign pgassign15[0:0] = BRAM_WEN_A[3:3];
  assign pgassign16[15:15] = 1'b1;
  assign pgassign16[14:4] = BRAM_Addr_B[19:29];
  assign pgassign16[3:0] = 4'b0000;
  assign pgassign17[31:16] = 16'b0000000000000000;
  assign pgassign17[15:0] = BRAM_Dout_B[16:31];
  assign BRAM_Din_B[16:31] = pgassign18[15:0];
  assign pgassign19[7:4] = 4'b0000;
  assign pgassign19[3:3] = BRAM_WEN_B[2:2];
  assign pgassign19[2:2] = BRAM_WEN_B[3:3];
  assign pgassign19[1:1] = BRAM_WEN_B[2:2];
  assign pgassign19[0:0] = BRAM_WEN_B[3:3];
  assign net_gnd0 = 1'b0;
  assign net_gnd4[3:0] = 4'b0000;

  (* BMM_INFO = " " *)

  RAMB36E1
    #(
      .WRITE_MODE_A ( "WRITE_FIRST" ),
      .WRITE_MODE_B ( "WRITE_FIRST" ),
      .INIT_FILE ( "axi_bram_ctrl_1_bram_block_1_combined_0.mem" ),
      .READ_WIDTH_A ( 18 ),
      .READ_WIDTH_B ( 18 ),
      .WRITE_WIDTH_A ( 18 ),
      .WRITE_WIDTH_B ( 18 ),
      .RAM_EXTENSION_A ( "NONE" ),
      .RAM_EXTENSION_B ( "NONE" )
    )
    ramb36e1_0 (
      .DBITERR (  ),
      .ECCPARITY (  ),
      .INJECTDBITERR ( net_gnd0 ),
      .INJECTSBITERR ( net_gnd0 ),
      .RDADDRECC (  ),
      .SBITERR (  ),
      .ADDRARDADDR ( pgassign4 ),
      .CASCADEINA ( net_gnd0 ),
      .CASCADEOUTA (  ),
      .CLKARDCLK ( BRAM_Clk_A ),
      .DIADI ( pgassign5 ),
      .DIPADIP ( net_gnd4 ),
      .DOADO ( pgassign6 ),
      .DOPADOP (  ),
      .ENARDEN ( BRAM_EN_A ),
      .REGCEAREGCE ( net_gnd0 ),
      .RSTRAMARSTRAM ( BRAM_Rst_A ),
      .RSTREGARSTREG ( net_gnd0 ),
      .WEA ( pgassign7 ),
      .ADDRBWRADDR ( pgassign8 ),
      .CASCADEINB ( net_gnd0 ),
      .CASCADEOUTB (  ),
      .CLKBWRCLK ( BRAM_Clk_B ),
      .DIBDI ( pgassign9 ),
      .DIPBDIP ( net_gnd4 ),
      .DOBDO ( pgassign10 ),
      .DOPBDOP (  ),
      .ENBWREN ( BRAM_EN_B ),
      .REGCEB ( net_gnd0 ),
      .RSTRAMB ( BRAM_Rst_B ),
      .RSTREGB ( net_gnd0 ),
      .WEBWE ( pgassign11 )
    );

  (* BMM_INFO = " " *)

  RAMB36E1
    #(
      .WRITE_MODE_A ( "WRITE_FIRST" ),
      .WRITE_MODE_B ( "WRITE_FIRST" ),
      .INIT_FILE ( "axi_bram_ctrl_1_bram_block_1_combined_1.mem" ),
      .READ_WIDTH_A ( 18 ),
      .READ_WIDTH_B ( 18 ),
      .WRITE_WIDTH_A ( 18 ),
      .WRITE_WIDTH_B ( 18 ),
      .RAM_EXTENSION_A ( "NONE" ),
      .RAM_EXTENSION_B ( "NONE" )
    )
    ramb36e1_1 (
      .DBITERR (  ),
      .ECCPARITY (  ),
      .INJECTDBITERR ( net_gnd0 ),
      .INJECTSBITERR ( net_gnd0 ),
      .RDADDRECC (  ),
      .SBITERR (  ),
      .ADDRARDADDR ( pgassign12 ),
      .CASCADEINA ( net_gnd0 ),
      .CASCADEOUTA (  ),
      .CLKARDCLK ( BRAM_Clk_A ),
      .DIADI ( pgassign13 ),
      .DIPADIP ( net_gnd4 ),
      .DOADO ( pgassign14 ),
      .DOPADOP (  ),
      .ENARDEN ( BRAM_EN_A ),
      .REGCEAREGCE ( net_gnd0 ),
      .RSTRAMARSTRAM ( BRAM_Rst_A ),
      .RSTREGARSTREG ( net_gnd0 ),
      .WEA ( pgassign15 ),
      .ADDRBWRADDR ( pgassign16 ),
      .CASCADEINB ( net_gnd0 ),
      .CASCADEOUTB (  ),
      .CLKBWRCLK ( BRAM_Clk_B ),
      .DIBDI ( pgassign17 ),
      .DIPBDIP ( net_gnd4 ),
      .DOBDO ( pgassign18 ),
      .DOPBDOP (  ),
      .ENBWREN ( BRAM_EN_B ),
      .REGCEB ( net_gnd0 ),
      .RSTRAMB ( BRAM_Rst_B ),
      .RSTREGB ( net_gnd0 ),
      .WEBWE ( pgassign19 )
    );

endmodule

