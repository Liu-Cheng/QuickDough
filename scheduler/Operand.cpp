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
    Initially_Attached_PE_ID = NaN;
    OP_Attribute.OP_Cost = 1;
    OP_Attribute.OP_Opcode = NC;
    OP_Attribute.Exe_PE_ID = NaN;
    OP_Attribute.Scheduling_Pri = NaN;
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
    Initially_Attached_PE_ID = NaN;
    OP_Attribute.OP_Cost = 1;
    OP_Attribute.OP_Opcode = NC;
    OP_Attribute.Exe_PE_ID = NaN;
    OP_Attribute.Scheduling_Pri = NaN;
    OP_Attribute.OP_Avail_Time = NaN;
    OP_Attribute.OP_LD_Time = NaN;
    OP_Attribute.OP_ST_Time = NaN;
    OP_Attribute.OP_State = Unavail;
    Load_Parameters();
}

// It can only be reset when Exe_PE_ID is NaN.
void Operand::Reset_Exe_PE_ID(const int &PE_ID){
    if (OP_Attribute.Exe_PE_ID == NaN){
        OP_Attribute.Exe_PE_ID = PE_ID;
    }
}

void Operand::Reset_Init_PE_ID(const int &PE_ID){
    if(Initially_Attached_PE_ID == NaN){
        Initially_Attached_PE_ID = PE_ID;
    }
}

bool Operand::Is_Input(){
    return (OP_Type == INVAR || OP_Type == INCONST);
}

bool Operand::Is_Output(){
    return (OP_Type == OUTVAR || OP_Type == IMOUT);
}

bool Operand::Is_IM(){
    return (OP_Type == IM);
}

void Operand::Load_Parameters(){}

bool Operand::Is_OP_Scheduled(){
    return OP_Attribute.OP_State == Avail;
}
