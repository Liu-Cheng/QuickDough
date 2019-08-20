`timescale 1 ns/1 ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:17:41 05/19/2012 
// Design Name: 
// Module Name:    PE 
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

module PE44(
    Clk,
    Resetn,

    PE_In0,
    PE_In1,
    PE_In2,
    PE_In3,

    PE_Out0,
    PE_Out1,
    PE_Out2,
    PE_Out3,
	 
    PE_Array_Busy
);

parameter DWIDTH=32;
parameter AWIDTH=8;
parameter INST_DWIDTH=72; 
parameter INST_AWIDTH=10;

input                     Clk;
input                     Resetn;

input [DWIDTH-1:0]        PE_In0;
input [DWIDTH-1:0]        PE_In1;
input [DWIDTH-1:0]        PE_In2;
input [DWIDTH-1:0]        PE_In3;

output [DWIDTH-1:0]       PE_Out0;
output [DWIDTH-1:0]       PE_Out1;
output [DWIDTH-1:0]       PE_Out2;
output [DWIDTH-1:0]       PE_Out3;

input                     PE_Array_Busy;

//Reg, wire for data path from input to data memory port1
reg  [DWIDTH-1:0]         PE_In0_Reg0;
reg  [DWIDTH-1:0]         PE_In1_Reg0;
reg  [DWIDTH-1:0]         PE_In2_Reg0;
reg  [DWIDTH-1:0]         PE_In3_Reg0;
wire [DWIDTH-1:0]         Data_In_Wire;
reg  [DWIDTH-1:0]         Data_In_Reg;
wire [1:0]                Input_Sel;
wire [DWIDTH-1:0]         Bypass_Data_Wire;
wire [1:0]                Bypass_Sel;
reg  [DWIDTH-1:0]         Bypass_Data_Reg;

//Wires for data path from ALU out to memory in0
wire [DWIDTH-1:0]         ALU_In0;   
wire [DWIDTH-1:0]         ALU_In1;
wire [DWIDTH-1:0]         ALU_In2;
wire [3:0]                Opcode;
wire [DWIDTH-1:0]         ALU_Out;
reg  [DWIDTH-1:0]         ALU_Out_Reg;

//Wires for data memory input
wire [DWIDTH-1:0]         Data_Mem_In0;
wire [DWIDTH-1:0]         Data_Mem_In1;
wire                      Wea;
wire                      Web;   
wire [AWIDTH-1:0]         Data_Mem_Addr0;
wire [AWIDTH-1:0]         Data_Mem_Addr1;
wire [AWIDTH-1:0]         Data_Mem_Addr2;
wire [AWIDTH-1:0]         Data_Mem_Addr3;
wire [AWIDTH-1:0]         Data_Mem_Addr4;
wire [AWIDTH-1:0]         Data_Mem_Addr5;

wire [DWIDTH-1:0]         Data_Mem_Out0;
wire [DWIDTH-1:0]         Data_Mem_Out1;
wire [DWIDTH-1:0]         Data_Mem_Out2;
wire [DWIDTH-1:0]         Data_Mem_Out3;
wire [DWIDTH-1:0]         Data_Mem_Out4;
wire [DWIDTH-1:0]         Data_Mem_Out5;

reg  [DWIDTH-1:0]         Data_Mem_Out0_Reg0;
reg  [DWIDTH-1:0]         Data_Mem_Out1_Reg0;
reg  [DWIDTH-1:0]         Data_Mem_Out2_Reg0;
reg  [DWIDTH-1:0]         Data_Mem_Out3_Reg0;
reg  [DWIDTH-1:0]         Data_Mem_Out4_Reg0;
reg  [DWIDTH-1:0]         Data_Mem_Out5_Reg0;

//Wires for instruction memory output;
reg [INST_DWIDTH-1:0]     Inst_Mem_Out_Reg0;
reg [INST_DWIDTH-1:0]     Inst_Mem_Out_Reg1;
wire [INST_DWIDTH-1:0]    Inst_Mem_Out;

//wires for output port
wire [DWIDTH-1:0]         PE_Out0_Wire;
wire [DWIDTH-1:0]         PE_Out1_Wire;
wire [DWIDTH-1:0]         PE_Out2_Wire;
wire [DWIDTH-1:0]         PE_Out3_Wire;

reg  [DWIDTH-1:0]         PE_Out0;
reg  [DWIDTH-1:0]         PE_Out1;
reg  [DWIDTH-1:0]         PE_Out2;
reg  [DWIDTH-1:0]         PE_Out3;

wire [1:0]                PE_Out0_Sel;
wire [1:0]                PE_Out1_Sel;
wire [1:0]                PE_Out2_Sel;
wire [1:0]                PE_Out3_Sel;

//Data path from input to Data memory input port 1.
always@(posedge Clk or negedge Resetn) begin
    if(Resetn==1'b0) begin
        PE_In0_Reg0<=0;
    end
    else begin
        PE_In0_Reg0<=PE_In0;
    end
end

always@(posedge Clk or negedge Resetn) begin
    if(Resetn==1'b0) begin
        PE_In1_Reg0<=0;
    end
    else begin
        PE_In1_Reg0<=PE_In1;
    end
end

always@(posedge Clk or negedge Resetn) begin
    if(Resetn==1'b0) begin
        PE_In2_Reg0<=0;
    end
    else begin
        PE_In2_Reg0<=PE_In2;
    end
end

always@(posedge Clk or negedge Resetn) begin
    if(Resetn==1'b0) begin
        PE_In3_Reg0<=0;
    end
    else begin
        PE_In3_Reg0<=PE_In3;
    end
end

assign Data_In_Wire=(Input_Sel==2'b00)? PE_In0_Reg0 :
                    (Input_Sel==2'b01)? PE_In1_Reg0 :
                    (Input_Sel==2'b10)? PE_In2_Reg0 : PE_In3_Reg0;

always@(posedge Clk or negedge Resetn) begin
    if(Resetn==1'b0) begin
        Data_In_Reg<=0;
    end
    else begin
        Data_In_Reg<=Data_In_Wire;
    end
end

//Data path from input to bypass output port
assign Bypass_Data_Wire=(Bypass_Sel==2'b00)? PE_In0_Reg0 :
                        (Bypass_Sel==2'b01)? PE_In1_Reg0 :
                        (Bypass_Sel==2'b10)? PE_In2_Reg0 : PE_In3_Reg0;

always@(posedge Clk or negedge Resetn) begin
    if(Resetn==1'b0) begin
        Bypass_Data_Reg<=0;
    end
    else begin
        Bypass_Data_Reg<=Bypass_Data_Wire;
    end
end

//Data path from ALU out to Data Memory in0
ALU #(DWIDTH) ALU(
    .Clk(Clk),
    .Resetn(Resetn),
	 
    .ALU_In0(ALU_In0),
    .ALU_In1(ALU_In1),
    .ALU_In2(ALU_In2),
    .Opcode(Opcode),
    .ALU_Out(ALU_Out)
);

assign ALU_In0=Data_Mem_Out3_Reg0;
assign ALU_In1=Data_Mem_Out4_Reg0;
assign ALU_In2=Data_Mem_Out5_Reg0;

always@(posedge Clk or negedge Resetn) begin
    if(Resetn==1'b0) begin
        ALU_Out_Reg<=0;
    end
    else begin
        ALU_Out_Reg<=ALU_Out;
    end
end

//Data memory 						 
Data_Mem Data_Mem(
    //Input
    .clk(Clk),
    .wea(Wea),
    .web(Web),
    .dina(Data_Mem_In0),                
    .dinb(Data_Mem_In1),			
    .addra0(Data_Mem_Addr0),
    .addrb0(Data_Mem_Addr3),
    .addra1(Data_Mem_Addr1),
    .addrb1(Data_Mem_Addr4),
    .addra2(Data_Mem_Addr2),
    .addrb2(Data_Mem_Addr5),

    //Output
    .douta0(Data_Mem_Out0),
    .doutb0(Data_Mem_Out3),
    .douta1(Data_Mem_Out1),
    .doutb1(Data_Mem_Out4),
    .douta2(Data_Mem_Out2),
    .doutb2(Data_Mem_Out5)	    
);

assign Data_Mem_In0=ALU_Out_Reg;
assign Data_Mem_In1=Data_In_Reg;

always@(posedge Clk or negedge Resetn) begin
    if(!Resetn) begin
        Data_Mem_Out0_Reg0<=0;
    end
    else begin
        Data_Mem_Out0_Reg0<=Data_Mem_Out0;
    end
end

always@(posedge Clk or negedge Resetn) begin
    if(!Resetn) begin
        Data_Mem_Out1_Reg0<=0;
    end
    else begin
        Data_Mem_Out1_Reg0<=Data_Mem_Out1;
    end
end

always@(posedge Clk or negedge Resetn) begin
    if(!Resetn) begin
        Data_Mem_Out2_Reg0<=0;
    end
    else begin
        Data_Mem_Out2_Reg0<=Data_Mem_Out2;
    end
end

always@(posedge Clk or negedge Resetn) begin
    if(!Resetn) begin
        Data_Mem_Out3_Reg0<=0;
    end
    else begin
        Data_Mem_Out3_Reg0<=Data_Mem_Out3;
    end
end

always@(posedge Clk or negedge Resetn) begin
    if(!Resetn) begin
        Data_Mem_Out4_Reg0<=0;
    end
    else begin
        Data_Mem_Out4_Reg0<=Data_Mem_Out4;
    end
end

always@(posedge Clk or negedge Resetn) begin
    if(!Resetn) begin
        Data_Mem_Out5_Reg0<=0;
    end
    else begin
        Data_Mem_Out5_Reg0<=Data_Mem_Out5;
    end
end

//Instruction memory
Inst_Mem44 Inst_Mem44(
    .Clk(Clk),
    .Resetn(Resetn),
    .Inst_Mem_Out(Inst_Mem_Out),
	 .PE_Array_Busy(PE_Array_Busy)
);

always@(posedge Clk or negedge Resetn) begin
    if(!Resetn) begin
        Inst_Mem_Out_Reg0<=0;
    end
    else begin
        Inst_Mem_Out_Reg0<=Inst_Mem_Out;
    end
end

always@(posedge Clk or negedge Resetn) begin
    if(!Resetn) begin
        Inst_Mem_Out_Reg1<=0;
    end
    else begin
        Inst_Mem_Out_Reg1<=Inst_Mem_Out_Reg0;
    end
end

//Output ports
assign PE_Out0_Wire=(PE_Out0_Sel==2'b00)? Data_Mem_Out0_Reg0 :
                    (PE_Out0_Sel==2'b01)? Data_Mem_Out1_Reg0 :
                    (PE_Out0_Sel==2'b10)? Data_Mem_Out2_Reg0 : Bypass_Data_Reg;

assign PE_Out1_Wire=(PE_Out1_Sel==2'b00)? Data_Mem_Out0_Reg0 :
                    (PE_Out1_Sel==2'b01)? Data_Mem_Out1_Reg0 :
                    (PE_Out1_Sel==2'b10)? Data_Mem_Out2_Reg0 : Bypass_Data_Reg;

assign PE_Out2_Wire=(PE_Out2_Sel==2'b00)? Data_Mem_Out0_Reg0 :
                    (PE_Out2_Sel==2'b01)? Data_Mem_Out1_Reg0 :
                    (PE_Out2_Sel==2'b10)? Data_Mem_Out2_Reg0 : Bypass_Data_Reg;

assign PE_Out3_Wire=(PE_Out3_Sel==2'b00)? Data_Mem_Out0_Reg0 :
                    (PE_Out3_Sel==2'b01)? Data_Mem_Out1_Reg0 :
                    (PE_Out3_Sel==2'b10)? Data_Mem_Out2_Reg0 : Bypass_Data_Reg;
							  
always@(posedge Clk or negedge Resetn) begin
    if(!Resetn) begin
        PE_Out0<=0;
    end
    else begin
       PE_Out0<=PE_Out0_Wire;
    end
end

always@(posedge Clk or negedge Resetn) begin
    if(!Resetn) begin
        PE_Out1<=0;
    end
    else begin
       PE_Out1<=PE_Out1_Wire;
    end
end

always@(posedge Clk or negedge Resetn) begin
    if(!Resetn) begin
        PE_Out2<=0;
    end
    else begin
       PE_Out2<=PE_Out2_Wire;
    end
end

always@(posedge Clk or negedge Resetn) begin
    if(!Resetn) begin
        PE_Out3<=0;
    end
    else begin
       PE_Out3<=PE_Out3_Wire;
    end
end

//Connect the instruction with the control lines.
//assign Input_Load_Sel=Inst_Mem_Out_Reg1[68];
assign Input_Sel=Inst_Mem_Out_Reg1[67:66];
assign Bypass_Sel=Inst_Mem_Out_Reg1[65:64];

assign Web=Inst_Mem_Out_Reg1[63];
assign Wea=Inst_Mem_Out_Reg1[62];
assign Data_Mem_Addr3=Inst_Mem_Out_Reg1[61:54];
assign Data_Mem_Addr4=Inst_Mem_Out_Reg1[53:46];
assign Data_Mem_Addr5=Inst_Mem_Out_Reg1[45:38];
assign Data_Mem_Addr0=Inst_Mem_Out_Reg1[37:30];
assign Data_Mem_Addr1=Inst_Mem_Out_Reg1[29:22];
assign Data_Mem_Addr2=Inst_Mem_Out_Reg1[21:14];

assign Opcode=Inst_Mem_Out_Reg1[13:10];
//assign PE_Store_Sel=Inst_Mem_Out_Reg1[9:8];
assign PE_Out0_Sel=Inst_Mem_Out_Reg1[7:6];
assign PE_Out1_Sel=Inst_Mem_Out_Reg1[5:4];
assign PE_Out2_Sel=Inst_Mem_Out_Reg1[3:2];
assign PE_Out3_Sel=Inst_Mem_Out_Reg1[1:0];
            
endmodule
