// ====================================================================================================================
// Algorithm Description:
// 
//
// Version:
// 0.1      Jan 1st 2012
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// ====================================================================================================================

#include "ComponentActivity.h"

using namespace std;

ComponentActivity::ComponentActivity(){
    PE_input_mux=0; 
    PE_bypass_mux=0;
    dsp_opcode=NC;
    load_mux=0;
    store_mux=0;

    for(int i=0; i<2; i++){
        memory_wr_ena[i]=0;
    }

    for(int i=0; i<6; i++){
        memory_addr[i]=NaN;
        memory_port_op[i]=NaN;
    }

    for(int i=0; i<4; i++){
        PE_output_mux[i]=0;
    }

    load_op=NaN;
    store_op=NaN;
}

