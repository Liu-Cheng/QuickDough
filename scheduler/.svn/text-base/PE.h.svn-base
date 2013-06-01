// ====================================================================================================================
// Fucnction Description:
// PE of CGRA 
//
// Version:
// 0.1      Nov 24th 2011
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// ====================================================================================================================

#ifndef _PE_H_
#define _PE_H_

#include "ComponentState.h"

using namespace std;

class PE{
    public:
        int PE_id;
        int input_degree;
        int output_degree;
        int maximum_active_time; //The maximum timestamp that PE reaches at the moment.
        vector<ComponentState*> component_trace; 

        PE(int _PE_id);
        void ComponentActivityReport(const int &report_level);
        float MemoryUtilization(const int &begin_time, const int &end_time);
        float DSPutilization(const int &begin_time, const int &end_time);
        float WriteMemoryUtilization(const int &begin_time, const int &end_time);
        float ReadMemoryUtilization(const int &begin_time, const int &end_time);
        float OutputPortUtilization(const int &begin_time, const int &end_time);
        void ConfigurantionInstrReport(const int &report_level);
        int OperationAvailTime(const int &operation_id);
        ~PE();

    private:
        void LoadParameter();
};

#endif
