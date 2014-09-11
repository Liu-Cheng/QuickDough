// ====================================================================================================================
// Algorithm Description:
// 
//
// Version:
// Jan 1st 2012, initial version
// Sep 8th 2014, update coding style
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com, liucheng@eee.hku.hk
// E.E.E department, The University of Hong Kong
//
// ====================================================================================================================

#include "Component_Activity.h"

Component_Activity::Component_Activity(){

    PE_Input_Mux = 0; 
    PE_Bypass_Mux = 0;
    ALU_Opcode = NC;
    Load_Mux = 0;
    Store_Mux = 0;

    for(int i=0; i<2; i++){
        Data_Memory_WR_Ena[i] = 0;
    }

    for(int i=0; i<6; i++){
        Data_Mem_Addr[i] = NaN;
        Data_Mem_Port_OP[i] = NaN;
    }

    for(int i=0; i<4; i++){
        PE_Output_Mux[i] = 0;
    }

    Load_OP = NaN;
    Store_OP = NaN;
}

