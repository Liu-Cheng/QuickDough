// ====================================================================================================================
// Fucnction Description:
// Whenever PE structure is changed, the activity will be changed accordingly, because it is directly
// related with instruction generation. Idealy, we may get the instruction by simply dump each filed of
// the class.
//
// Version:
// 0.1      Jan 1st 2012
// 0.2      My 29TH 2012 
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// ====================================================================================================================
#ifndef _COMPONENT_ACTIVITY_H_
#define _COMPONENT_ACTIVITY_H_

#include "GlobalDef.h"

using namespace std;

class ComponentActivity{
    public:
        int PE_input_mux;  //0->W 1->N, 2->E, 3->S
        int load_mux;      //0->PE input 1->out memory load
        int PE_bypass_mux; //0->W, 1->N, 2->E, 3->S
        int memory_wr_ena[2]; //1->write enable, 0->read enable
        int memory_addr[6];
        OPCODE dsp_opcode;

        //0->memory port0, 1->memory port1, 2->memory port2, 3->bypass
        int PE_output_mux[4]; 
        int store_mux;

        //Fileds for analysis. It indicates input operation id that will be written into data memory.
        //Similarly, it also represents the output operation id that will be read. So it is basically
        //corresponding to the memory address.
        int memory_port_op[6];
        int load_op;
        int store_op;

        ComponentActivity();
};

#endif
