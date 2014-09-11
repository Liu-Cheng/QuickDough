// ====================================================================================================================
// Algorithm Description:
// 
//
// Version:
// Nov 1st 2012, Initial version
// Sep 8th 2014, Update coding style
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// ====================================================================================================================

#include "Component_Reserved.h"

Component_Reserved::Component_Reserved(){

    for(int i=0; i<2; i++){
        Data_Mem_WR_Reserved[i] = false;
    }

    for(int i=0; i<6; i++){
        Data_Mem_RD_Reserved[i] = false;
    }

    ALU_Input_Reserved = false;
    ALU_Output_Reserved = false;

    for(int i=0; i<4; i++){
        PE_Output_Reserved[i] = false;
    }

    PE_Input_Reserved = false;
    PE_Bypass_Reserved = false;
    Load_Path_Reserved = false;
    Store_Path_Reserved = false;

}

