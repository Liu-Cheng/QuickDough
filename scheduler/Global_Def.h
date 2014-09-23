// =============================================================================
// Fucnction Description:
// Generally, it is the definition of global constants and global variables. 
//
// Version:
// Nov 23th 2011, initil version
// Sep 5th 2014, Clean up the coding style  
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// =============================================================================

#ifndef _GLOBAL_DEF_H_
#define _GLOBAL_DEF_H_

#include <list>
#include <vector>
#include <iostream>
#include <fstream>
#include <cstdio>
#include <ctime>
#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include <sstream>
#include <cmath>

// Global definition
#define NaN -1
#define ERROR(FMT, ARG...) do {fprintf(stderr,"File=%s, Line=%d: "FMT" \n",__FILE__, __LINE__,##ARG); exit(1);} while(0)
#define PRINT(FMT, ARG...) do {fprintf(stdout,"File=%s, Line=%d  "FMT" \n",__FILE__, __LINE__,##ARG);} while(0)

/*-----------------------------------------------------------------------------
 In_Outside_Buffer: Data stays in data buffers and it can be 'Input', 'IM_Output' 
 or 'Output' data. In addition, it means there is no copy in PE data memory.

 Unavail: Data can be 'IM', 'IM_Output' or 'Output' data and it has not been 
 computed.

 Avail: Data is available. If it is 'Input' data or 'IM' data, it must 
 be in PE data memory. If it is 'Output' or 'IM_Output' data, it must have 
 a copy in data memory.
 ----------------------------------------------------------------------------*/
enum Topology{
    Torus, Mesh, Full_Connect, Customized
};

enum Operand_State {
    In_IO_Buffer, Unavail, Avail
};

enum PE_Sel_Filter_Type{
    Dist_Filter, Mem_Util_Filter, DSP_Util_Filter, Write_Mem_Util_Filter, Input_Port_Util_Filter, Output_Port_Util_Filter, Inout_Port_Util_Filter
};

enum PE_Selection{
    Least_Recent_Used, Least_Ready_OP_Attached
};

enum Exe_Mode{
    Sim, Impl, Partial_Impl
};

enum Routing_Alg{
    Dynamic_Dijkstra, Dynamic_XY, Static_XY, Static_Dijkstra 
};

enum IO_Placement{
    Sequential_Placement, Interleaving_Placement
};

enum Scheduling_Strategy{
    PE_Pref, OP_Pref, PE_OP_Together
};

enum Opcode{
    NC, MULADD, MULSUB, ADDADD, ADDSUB, SUBSUB, PHI, RSFAND, LSFADD, ABS, GT, LET, ANDAND
};

enum Operand_Type{
    INCONST, INVAR, UNUSED, OUTVAR, IM, IMOUT
};

std::ostream& operator<< (std::ostream &os, Opcode Inst_Opcode);
std::ostream& operator<< (std::ostream &os, Operand_Type OP_Type);

// ============================================================================
// Global variables
// ============================================================================
struct GL_Var{
    static int Print_Level;
    static int Verify_On;
    static int Random_Seed;
};

int Opcode_To_Int(const Opcode &Inst_Opcode);
Opcode Str_To_Opcode(const std::string &Opcode_Str);
int OP_Compute(const Opcode &Inst_Opcode, const int &Src_Val0, const int &Src_Val1, const int &Src_Val2);

#endif
