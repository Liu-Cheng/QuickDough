// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
// Date        : Wed Aug 16 00:58:22 2017
// Host        : liucheng-laptop running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/liucheng/gitrepo/QuickDough/cgra/auto-cgra/prj/cgra.srcs/sources_1/ip/mac/mac_sim_netlist.v
// Design      : mac
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mac,xbip_dsp48_macro_v3_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_12,Vivado 2016.2" *) 
(* NotValidForBitStream *)
module mac
   (CLK,
    SEL,
    A,
    B,
    C,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 sel_intf DATA" *) input [0:0]SEL;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [17:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) input [47:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) output [47:0]P;

  wire [17:0]A;
  wire [17:0]B;
  wire [47:0]C;
  wire CLK;
  wire [47:0]P;
  wire [0:0]SEL;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "18" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "1" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "-1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000000000011010100000000,000100100011010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000011100111100111100100" *) 
  (* C_SEL_WIDTH = "1" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mac_xbip_dsp48_macro_v3_0_12 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C(C),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(1'b1),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(SEL));
endmodule

(* C_A_WIDTH = "18" *) (* C_B_WIDTH = "18" *) (* C_CONCAT_WIDTH = "48" *) 
(* C_CONSTANT_1 = "1" *) (* C_C_WIDTH = "48" *) (* C_D_WIDTH = "18" *) 
(* C_HAS_A = "1" *) (* C_HAS_ACIN = "0" *) (* C_HAS_ACOUT = "0" *) 
(* C_HAS_B = "1" *) (* C_HAS_BCIN = "0" *) (* C_HAS_BCOUT = "0" *) 
(* C_HAS_C = "1" *) (* C_HAS_CARRYCASCIN = "0" *) (* C_HAS_CARRYCASCOUT = "0" *) 
(* C_HAS_CARRYIN = "0" *) (* C_HAS_CARRYOUT = "0" *) (* C_HAS_CE = "0" *) 
(* C_HAS_CEA = "0" *) (* C_HAS_CEB = "0" *) (* C_HAS_CEC = "0" *) 
(* C_HAS_CECONCAT = "0" *) (* C_HAS_CED = "0" *) (* C_HAS_CEM = "0" *) 
(* C_HAS_CEP = "0" *) (* C_HAS_CESEL = "0" *) (* C_HAS_CONCAT = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_INDEP_CE = "0" *) (* C_HAS_INDEP_SCLR = "0" *) 
(* C_HAS_PCIN = "0" *) (* C_HAS_PCOUT = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SCLRA = "0" *) (* C_HAS_SCLRB = "0" *) (* C_HAS_SCLRC = "0" *) 
(* C_HAS_SCLRCONCAT = "0" *) (* C_HAS_SCLRD = "0" *) (* C_HAS_SCLRM = "0" *) 
(* C_HAS_SCLRP = "0" *) (* C_HAS_SCLRSEL = "0" *) (* C_LATENCY = "-1" *) 
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000000000011010100000000,000100100011010100000000" *) (* C_P_LSB = "0" *) 
(* C_P_MSB = "47" *) (* C_REG_CONFIG = "00000000000011100111100111100100" *) (* C_SEL_WIDTH = "1" *) 
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) 
(* ORIG_REF_NAME = "xbip_dsp48_macro_v3_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mac_xbip_dsp48_macro_v3_0_12
   (CLK,
    CE,
    SCLR,
    SEL,
    CARRYCASCIN,
    CARRYIN,
    PCIN,
    ACIN,
    BCIN,
    A,
    B,
    C,
    D,
    CONCAT,
    ACOUT,
    BCOUT,
    CARRYOUT,
    CARRYCASCOUT,
    PCOUT,
    P,
    CED,
    CED1,
    CED2,
    CED3,
    CEA,
    CEA1,
    CEA2,
    CEA3,
    CEA4,
    CEB,
    CEB1,
    CEB2,
    CEB3,
    CEB4,
    CECONCAT,
    CECONCAT3,
    CECONCAT4,
    CECONCAT5,
    CEC,
    CEC1,
    CEC2,
    CEC3,
    CEC4,
    CEC5,
    CEM,
    CEP,
    CESEL,
    CESEL1,
    CESEL2,
    CESEL3,
    CESEL4,
    CESEL5,
    SCLRD,
    SCLRA,
    SCLRB,
    SCLRCONCAT,
    SCLRC,
    SCLRM,
    SCLRP,
    SCLRSEL);
  input CLK;
  input CE;
  input SCLR;
  input [0:0]SEL;
  input CARRYCASCIN;
  input CARRYIN;
  input [47:0]PCIN;
  input [29:0]ACIN;
  input [17:0]BCIN;
  input [17:0]A;
  input [17:0]B;
  input [47:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [47:0]P;
  input CED;
  input CED1;
  input CED2;
  input CED3;
  input CEA;
  input CEA1;
  input CEA2;
  input CEA3;
  input CEA4;
  input CEB;
  input CEB1;
  input CEB2;
  input CEB3;
  input CEB4;
  input CECONCAT;
  input CECONCAT3;
  input CECONCAT4;
  input CECONCAT5;
  input CEC;
  input CEC1;
  input CEC2;
  input CEC3;
  input CEC4;
  input CEC5;
  input CEM;
  input CEP;
  input CESEL;
  input CESEL1;
  input CESEL2;
  input CESEL3;
  input CESEL4;
  input CESEL5;
  input SCLRD;
  input SCLRA;
  input SCLRB;
  input SCLRCONCAT;
  input SCLRC;
  input SCLRM;
  input SCLRP;
  input SCLRSEL;

  wire [17:0]A;
  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [17:0]B;
  wire [17:0]BCIN;
  wire [17:0]BCOUT;
  wire [47:0]C;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYIN;
  wire CARRYOUT;
  wire CE;
  wire CEA;
  wire CEA1;
  wire CEA2;
  wire CEA3;
  wire CEA4;
  wire CEB;
  wire CEB1;
  wire CEB2;
  wire CEB3;
  wire CEB4;
  wire CEC;
  wire CEC1;
  wire CEC2;
  wire CEC3;
  wire CEC4;
  wire CEC5;
  wire CECONCAT;
  wire CECONCAT3;
  wire CECONCAT4;
  wire CECONCAT5;
  wire CED;
  wire CED1;
  wire CED2;
  wire CED3;
  wire CEM;
  wire CEP;
  wire CESEL;
  wire CESEL1;
  wire CESEL2;
  wire CESEL3;
  wire CESEL4;
  wire CESEL5;
  wire CLK;
  wire [47:0]CONCAT;
  wire [17:0]D;
  wire [47:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;
  wire SCLR;
  wire SCLRA;
  wire SCLRB;
  wire SCLRC;
  wire SCLRCONCAT;
  wire SCLRD;
  wire SCLRM;
  wire SCLRP;
  wire SCLRSEL;
  wire [0:0]SEL;

  (* C_A_WIDTH = "18" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "1" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "-1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000000000011010100000000,000100100011010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000011100111100111100100" *) 
  (* C_SEL_WIDTH = "1" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mac_xbip_dsp48_macro_v3_0_12_viv i_synth
       (.A(A),
        .ACIN(ACIN),
        .ACOUT(ACOUT),
        .B(B),
        .BCIN(BCIN),
        .BCOUT(BCOUT),
        .C(C),
        .CARRYCASCIN(CARRYCASCIN),
        .CARRYCASCOUT(CARRYCASCOUT),
        .CARRYIN(CARRYIN),
        .CARRYOUT(CARRYOUT),
        .CE(CE),
        .CEA(CEA),
        .CEA1(CEA1),
        .CEA2(CEA2),
        .CEA3(CEA3),
        .CEA4(CEA4),
        .CEB(CEB),
        .CEB1(CEB1),
        .CEB2(CEB2),
        .CEB3(CEB3),
        .CEB4(CEB4),
        .CEC(CEC),
        .CEC1(CEC1),
        .CEC2(CEC2),
        .CEC3(CEC3),
        .CEC4(CEC4),
        .CEC5(CEC5),
        .CECONCAT(CECONCAT),
        .CECONCAT3(CECONCAT3),
        .CECONCAT4(CECONCAT4),
        .CECONCAT5(CECONCAT5),
        .CED(CED),
        .CED1(CED1),
        .CED2(CED2),
        .CED3(CED3),
        .CEM(CEM),
        .CEP(CEP),
        .CESEL(CESEL),
        .CESEL1(CESEL1),
        .CESEL2(CESEL2),
        .CESEL3(CESEL3),
        .CESEL4(CESEL4),
        .CESEL5(CESEL5),
        .CLK(CLK),
        .CONCAT(CONCAT),
        .D(D),
        .P(P),
        .PCIN(PCIN),
        .PCOUT(PCOUT),
        .SCLR(SCLR),
        .SCLRA(SCLRA),
        .SCLRB(SCLRB),
        .SCLRC(SCLRC),
        .SCLRCONCAT(SCLRCONCAT),
        .SCLRD(SCLRD),
        .SCLRM(SCLRM),
        .SCLRP(SCLRP),
        .SCLRSEL(SCLRSEL),
        .SEL(SEL));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
IuVM5cUtmUQKgTBX7HKDmAT1YvCAn3gPWTRIcJbentll9fNGh9qKWzclus07vxZbvEZH49G727Hp
K/1Dcy0Gjg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
pjFrFtabU6Ur8yA8axpBAS/6vABn0s5Akgw0WazBdmxD71+6StDGi/Bx4QL0BkkNNKkDFrDazxt3
IlNaTnzFw1zqKupSfp4yd1jSKCOFfeu3Qgm8mU7TtVTlYJBt32eKWxkirwexrxwAbEg2XW3T0Jek
Yn27OCdgcKdq94aZ08k=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
mFBaaqTk6WujK6m41XGuotXsDplj3ilnvg4jovrY5HWjDlNf4lZI6BludVXW6DRreoxTQg2lx7qP
06IyzAzT6wbFa/rwHEtllH/B0yvuB4ZPW223Zp8AK64j61t7+tOuZX3qCDNRUleGw8KqS0WmUjmz
9a4cz/51klcPgO1miwM=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
q1x3d5RSu5KDehhgH7qcvqPLNq5cPlzirHId1/D5ljTL1hlPrGSgakTWd4ukrQFWKjS5CA1/gqbN
3w7XBYdSAtEjz7zhcIvAQqj0awdn++yJqRY9r4q77/tWPDo/dsx7Vi/CSjqcM2CpbdHSieE2Rn8t
T+FtAhbxFntvgt4F+XgzXXZWU3Q8NwmgHCnauQaiY9v1Jmh0j+AzrFymmW9bmMaAzylNmXG6qi1p
jrPRltaCAoUrnasCdszukKo+d+LvaCVLm6+diTsVRBT3vogtqBFDCW13sAouxJM+gvWyPxlTHPil
dt4Py1wP2Php8/2AQ0SAKkMskkajvR5QqiLmQw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FoVq1Zhjl4mDZCIqBHcehAw005mVLHybVZ9u4ZLn8BYCi/MhJPxgZecQYmqVZ8YBtv+U8tA3ZcIF
lExV/c+rp+VM2Q/j8GTBVFSz8yagdCv+2hP+jluejIPCxVsMiVIEqDpLsX1liRdbWzP2TmEOf7HB
gLvh6PIpzoSvS7uUPxfxTioSnXhDLzQhki7HRLDLB1SMZu6VdBEVoxcvOAKCZz3jd2rZHEqEFw9m
v3Ir5YbUyDuVxIUBezHIBgUws6aLHk9QRZ0vfrEfQwkaudLAcPGmjRqMf4frVvWPB6ZHEMlSqS3L
Oxmj2TotaCom0jcmktsDLCx6RNuvC63Lmhn4IQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
b7aqdpotXnkMc4G/M9sdZ8HR6YofY7osQmQe9KNO0CqX4QxV4I0cZ1/m/dS4Tj5OtH2znt7R5Xrn
DXfQSD/hBpwaA87k8AKlhK/sA9/90l5N32YWIaT0qktjHwSJkNCWsF6N56H3mHWA/O+jPz/GYXmQ
WF6WSWMGZ5nYNw7mnYtCpTUJcdqYLvKhmwLBNnzvoXxfXi2ESD/A5OrxRi4XtQ99o0IRQ3oAU/IM
s0maZLuUWpeLZY2T8f0rGGgEGgjM6WqHeFsRNPfpeaxpTzqOxHz8RHi4t5VaVoLLQaNw9s70xOGb
L+VKDYcq2fsmW532WGSy9hqtkJrubwvPYIOTLQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
errhXJjfru70UNTys+qNQrNj9T1ujK1o3aKZLatYB7wkXWaES5gv9wbRSS3niIW4OEyRWKOMV6Af
NTMdnp2VfGUINaJ8V8pO8QY9Hk2EA0F+6h+Uw0uTvFdCZ5cNPnAvn4RvwvL6p4LRSHauw8DpFp11
tjz2tfMIyXzur3i86KteGR4dxQbo/DK6ST9PNGBpifaSlgZSxFXy2gyho14HWCQuqdaF8/bIOI6C
9DSzovbIBGxSRJ9+VuxVnI4Ip0mjZlsCjLb1RubV/K1SmALLgR4PcWMfYObzwR7s6qYZXWHjWjPo
D/0jchTBY0bfZb6I7W1o5vlGi358FZrBo5y2Sg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
FzpPIxOuufDlDsTWB72souLrmmxAZxwB3Dt2ZMEO7Lvg94mUz4rYJpq/GShW1fT2WxqcCUw7vw3O
y//HgPa3l7l8JRlevhm8rBLrFXYXZ8RoKWOoTUAvJnjQerFXuzMTkte7pJgRElA3GLX79DXx0GpO
SGUYBMvHsNMqhm7VAmRFYqgMPyz4AAjg73dWL45PleremmQhDe5D7drR2OfhU2EEbtY7b7q21ydy
e4O6gn/HUO2K1jspfpBECpmt+7BPZW/1pb5EvoEqnrLSLpUMVj4NspsrZsYVKiC24g2y6ADt0gNM
6TT2kMj54MnT7z2yXYylMJ+JYrUH6hjDcA1LGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 62336)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
