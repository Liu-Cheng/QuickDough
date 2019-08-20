//-----------------------------------------------------------------------------
// base_sys_cgra5x5_0_wrapper.v
//-----------------------------------------------------------------------------

module base_sys_cgra5x5_0_wrapper
  (
    Clk,
    LowClk,
    Resetn,
    Port0_Clk,
    Port0_Rst,
    Port0_En,
    Port0_Wen,
    Port0_Addr,
    Port0_Data_To_Bram,
    Port0_Data_From_Bram,
    Port1_Clk,
    Port1_Rst,
    Port1_En,
    Port1_Wen,
    Port1_Addr,
    Port1_Data_To_Bram,
    Port1_Data_From_Bram,
    Port2_Clk,
    Port2_Rst,
    Port2_En,
    Port2_Wen,
    Port2_Addr,
    Port2_Data_To_Bram,
    Port2_Data_From_Bram,
    Port3_Clk,
    Port3_Rst,
    Port3_En,
    Port3_Wen,
    Port3_Addr,
    Port3_Data_To_Bram,
    Port3_Data_From_Bram,
    Computation_Start,
    Computation_Done
  );
  input Clk;
  input LowClk;
  input Resetn;
  output Port0_Clk;
  output Port0_Rst;
  output Port0_En;
  output [3:0] Port0_Wen;
  output [31:0] Port0_Addr;
  output [31:0] Port0_Data_To_Bram;
  input [31:0] Port0_Data_From_Bram;
  output Port1_Clk;
  output Port1_Rst;
  output Port1_En;
  output [3:0] Port1_Wen;
  output [31:0] Port1_Addr;
  output [31:0] Port1_Data_To_Bram;
  input [31:0] Port1_Data_From_Bram;
  output Port2_Clk;
  output Port2_Rst;
  output Port2_En;
  output [3:0] Port2_Wen;
  output [31:0] Port2_Addr;
  output [31:0] Port2_Data_To_Bram;
  input [31:0] Port2_Data_From_Bram;
  output Port3_Clk;
  output Port3_Rst;
  output Port3_En;
  output [3:0] Port3_Wen;
  output [31:0] Port3_Addr;
  output [31:0] Port3_Data_To_Bram;
  input [31:0] Port3_Data_From_Bram;
  input Computation_Start;
  output Computation_Done;

  cgra5x5
    #(
      .SYS_DWIDTH ( 'h00000020 ),
      .BYTE_LEN ( 'h00000004 ),
      .DWIDTH ( 'h00000020 )
    )
    cgra5x5_0 (
      .Clk ( Clk ),
      .LowClk ( LowClk ),
      .Resetn ( Resetn ),
      .Port0_Clk ( Port0_Clk ),
      .Port0_Rst ( Port0_Rst ),
      .Port0_En ( Port0_En ),
      .Port0_Wen ( Port0_Wen ),
      .Port0_Addr ( Port0_Addr ),
      .Port0_Data_To_Bram ( Port0_Data_To_Bram ),
      .Port0_Data_From_Bram ( Port0_Data_From_Bram ),
      .Port1_Clk ( Port1_Clk ),
      .Port1_Rst ( Port1_Rst ),
      .Port1_En ( Port1_En ),
      .Port1_Wen ( Port1_Wen ),
      .Port1_Addr ( Port1_Addr ),
      .Port1_Data_To_Bram ( Port1_Data_To_Bram ),
      .Port1_Data_From_Bram ( Port1_Data_From_Bram ),
      .Port2_Clk ( Port2_Clk ),
      .Port2_Rst ( Port2_Rst ),
      .Port2_En ( Port2_En ),
      .Port2_Wen ( Port2_Wen ),
      .Port2_Addr ( Port2_Addr ),
      .Port2_Data_To_Bram ( Port2_Data_To_Bram ),
      .Port2_Data_From_Bram ( Port2_Data_From_Bram ),
      .Port3_Clk ( Port3_Clk ),
      .Port3_Rst ( Port3_Rst ),
      .Port3_En ( Port3_En ),
      .Port3_Wen ( Port3_Wen ),
      .Port3_Addr ( Port3_Addr ),
      .Port3_Data_To_Bram ( Port3_Data_To_Bram ),
      .Port3_Data_From_Bram ( Port3_Data_From_Bram ),
      .Computation_Start ( Computation_Start ),
      .Computation_Done ( Computation_Done )
    );

endmodule

