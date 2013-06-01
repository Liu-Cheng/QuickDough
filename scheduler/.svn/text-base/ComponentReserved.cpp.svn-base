// ====================================================================================================================
// Algorithm Description:
// 
//
// Version:
// 0.1      Nov 1st 2012
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// ====================================================================================================================

#include "ComponentReserved.h"

using namespace std;

ComponentReserved::ComponentReserved(){
    for(int i=0; i<2; i++){
        memory_write_reserved[i]=false;
    }

    for(int i=0; i<6; i++){
        memory_read_reserved[i]=false;
    }

    dsp_pipeline_reserved=false;

    for(int i=0; i<4; i++){
        PE_output_reserved[i]=false;
    }

    PE_input_reserved=false;
    PE_bypass_reserved=false;
    load_path_reserved=false;
    store_path_reserved=false;
}

