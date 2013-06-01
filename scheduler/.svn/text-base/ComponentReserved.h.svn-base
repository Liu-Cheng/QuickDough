// ====================================================================================================================
// Fucnction Description:
// The class is used to describe the resource that is able to be shared by multipe operation.
// 
//
// Version:
// 0.1      Jan 1st 2012
// 0.2      May 29th 2012
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// ====================================================================================================================

#ifndef _COMPONENT_RESERVED_H_
#define _COMPONENT_RESERVED_H_

#include "GlobalDef.h"

using namespace std;

class ComponentReserved {
    public:
        bool memory_write_reserved[2];
        bool memory_read_reserved[6];
        bool dsp_pipeline_reserved;
        bool PE_output_reserved[4];
        bool PE_input_reserved;
        bool PE_bypass_reserved;
        bool load_path_reserved;
        bool store_path_reserved;

        ComponentReserved();
};

#endif
