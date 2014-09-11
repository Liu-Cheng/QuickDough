// ============================================================================
// Fucnction Description:
// Directional graph implemented with adjacency list
// Provide better support for reading DFG which can be dumped from LLVM
//
// Version:
// Nov 23th 2011
// May 30th 2012
// Sep 5th 2014, Clean up the code
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E Department, The University of Hong Kong
//
// ============================================================================

#ifndef _DATA_FLOW_GRAPH_H_
#define _DATA_FLOW_GRAPH_H_

#include <cstdlib>
#include <map>
#include <sstream>
#include "Operand.h"
#include "Global_Def.h"

class Data_Flow_Graph{

    public:
        int OP_Num;
        int Input_OP_Num;
        int Output_OP_Num;
        int IM_OP_Num;
        int IM_Output_OP_Num;
        float Avg_Output_Degree;
        float Avg_Input_Degree;
        float Avg_OP_Priority;
        int Max_OP_Priority;
        int Priority_Level;
        std::string DFG_Name;
        std::vector<Operand*> OP_Array;

        Data_Flow_Graph();
        void DFG_Calculation(vector<int> &OP_Result);

    private:
        void Load_Parameters();
        void DFG_Construct();
        void DFG_Stat();
        void DFG_Priority_Allocation();
        void DFG_Priority_Analysis();
};

#endif
