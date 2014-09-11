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
    OP_IO_Buffer_Addr = NaN;
    OP_IO_Buffer_ID = NaN;
    OP_Type = IN_VAR;
    OP_Attribute.OP_Cost = 1;
    OP_Attribute.OP_Opcode = NC;
    OP_Attribute.OP_Exe_PE_ID = NaN;
    OP_Attribute.OP_Scheduling_Priority = NaN;
    OP_Attribute.OP_Avail_Time = NaN;
    OP_Attribute.OP_State = Unavail;
    Load_Parameters();
}

Operand::Operand(){
    OP_ID = NaN;
    OP_Val = NaN;
    OP_IO_Buffer_Addr = NaN;
    OP_IO_Buffer_ID = NaN;
    OP_Type = IN_VAR;
    OP_Attribute.OP_Cost = 1;
    OP_Attribute.OP_Opcode = NC;
    OP_Attribute.OP_Exe_PE_id = NaN;
    OP_Attribute.OP_Scheduling_Priority = NaN;
    OP_Attribute.OP_Avail_Time = NaN;
    OP_Attribute.OP_State = Unavail;
    Load_Parameters();
}

void Operand::Load_Parameters(){}

bool Operand::Is_Operand_Scheduled(){
    return OP_Attribute.OP_State == Avail;
}
