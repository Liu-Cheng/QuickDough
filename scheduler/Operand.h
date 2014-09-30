// ============================================================================
// Fucnction Description:
// This is the vertex of the graph. 
//
// Version:
// Nov 23th 2011, initial version
// Sep 18th 2014, Update the coding style
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// ============================================================================
#ifndef _OPERAND_H_
#define _OPERAND_H_

#include "Global_Def.h"

struct Operand_Attribute{
    int OP_Cost;
    Opcode OP_Opcode;
    int Scheduling_Priority;
    int Exe_PE_ID;
    int OP_Avail_Time;
    Operand_State OP_State;
};

struct Attach_History{
    int Attached_PE_ID;
    int Attached_Time;
};

struct Operand{
    public:
        int OP_ID;
        int OP_Val;
        int IO_Buffer_Addr;
        int IO_Buffer_ID;
        std::vector<Operand*> OP_Parents;
        std::vector<Operand*> OP_Children;
        Operand_Type OP_Type;
        Operand_Attribute OP_Attribute;
        std::list<Attach_History> OP_Attach_History;

        Operand(int _OP_ID);
        Operand();
        bool Is_OP_Scheduled();

    private:
        void Load_Parameters();

};

#endif

