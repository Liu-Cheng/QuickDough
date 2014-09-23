// ============================================================================
// Algorithm Description:
// Initalization of vertex
//
// Version:
// Dec 2nd 2011, Initial version
// Sep 5th 2014, Clean up the code
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// ============================================================================

#include "Operand.h"

Operand::Operand(int _OP_ID){
    OP_ID = _OP_ID;
    OP_Val = NaN;
    IO_Buffer_Addr = NaN;
    IO_Buffer_ID = NaN;
    OP_Type = INVAR;
    OP_Attribute.OP_Cost = 1;
    OP_Attribute.OP_Opcode = NC;
    OP_Attribute.Exe_PE_ID = NaN;
    OP_Attribute.Scheduling_Priority = NaN;
    OP_Attribute.OP_Avail_Time = NaN;
    OP_Attribute.OP_State = Unavail;
    Load_Parameters();
}

Operand::Operand(){
    OP_ID = NaN;
    OP_Val = NaN;
    IO_Buffer_Addr = NaN;
    IO_Buffer_ID = NaN;
    OP_Type = INVAR;
    OP_Attribute.OP_Cost = 1;
    OP_Attribute.OP_Opcode = NC;
    OP_Attribute.Exe_PE_ID = NaN;
    OP_Attribute.Scheduling_Priority = NaN;
    OP_Attribute.OP_Avail_Time = NaN;
    OP_Attribute.OP_State = Unavail;
    Load_Parameters();
}

void Operand::Load_Parameters(){}

bool Operand::Is_OP_Scheduled(){
    return OP_Attribute.OP_State == Avail;
}
