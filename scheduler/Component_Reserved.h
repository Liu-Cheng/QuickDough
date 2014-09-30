// ====================================================================================================================
// Fucnction Description:
// The class is used to describe the resource that is able to be shared by multipe operation.
// 
//
// Version:
// Jan 1st 2012, Initial version
// May 29th 2012, Add load/store component
// Sep 8th 2014, Update coding style
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// ====================================================================================================================

#ifndef _COMPONENT_RESERVED_H_
#define _COMPONENT_RESERVED_H_

#include "Global_Def.h"

class Component_Reserved {
    public:
        bool Data_Mem_WR_Reserved[2];
        bool Data_Mem_RD_Reserved[6];
        bool ALU_Input_Reserved;
        bool ALU_Output_Reserved;
        bool PE_Output_Reserved[4];
        bool PE_Input_Reserved;
        bool PE_Bypass_Reserved;
        bool Load_Path_Reserved;
        bool Store_Path_Reserved;

        Component_Reserved();
        ~Component_Reserved(){};
};

#endif
