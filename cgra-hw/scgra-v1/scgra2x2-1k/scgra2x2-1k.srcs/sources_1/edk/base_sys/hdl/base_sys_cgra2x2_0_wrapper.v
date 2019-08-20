//-----------------------------------------------------------------------------
// base_sys_cgra2x2_0_wrapper.v
//-----------------------------------------------------------------------------

module base_sys_cgra2x2_0_wrapper
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
  input Computation_Start;
  output Computation_Done;

  cgra2x2
    #(
      .SYS_DWIDTH ( 'h00000020 ),
      .BYTE_LEN ( 'h00000004 ),
      .DWIDTH ( 'h00000020 )
    )
    cgra2x2_0 (
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
      .Computation_Start ( Computation_Start ),
      .Computation_Done ( Computation_Done )
    );

endmodule

