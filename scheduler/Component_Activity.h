// ====================================================================================================================
// Fucnction Description:
// Whenever PE structure is changed, the activity will be changed accordingly, because it is directly
// related with instruction generation. Idealy, we may get the instruction by simply dump each filed of
// the class.
//
// Version:
// Jan 1st 2012, Initial version
// May 29th 2012, Add load/store path
// Sep 8th 2014, Update coding style
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// ====================================================================================================================
#ifndef _COMPONENT_ACTIVITY_H_
#define _COMPONENT_ACTIVITY_H_

#include "Global_Def.h"

class Component_Activity{

    public:
        int PE_Input_Mux;  //0->W 1->N, 2->E, 3->S
        int Load_Mux;      //0->PE input 1->out memory load
        int PE_Bypass_Mux; //0->W, 1->N, 2->E, 3->S
        int Data_Mem_WR_Ena[2]; //1->write enable, 0->read enable
        int Data_Mem_Addr[6];
        int PE_Output_Mux[4]; //0->memory port0, 1->memory port1, 2->memory port2, 3->bypass
        int Store_Mux;
        int ALU_Output_Mux;
        Opcode ALU_Opcode;

        // It indicates input operation id that will be written into data memory.
        // Similarly, it also represents the output operation id that will be read. 
        // So it is basically corresponding to the memory address.
        int Data_Mem_Port_OP[6];
        int Load_OP;
        int Store_OP;

        Component_Activity();
        ~Component_Activity(){};

};

#endif
