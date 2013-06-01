// ====================================================================================================================
// Algorithm Description:
// Implementation of the algorithm
//
// Version:
// 0.1      Dec 28th 2011
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// ====================================================================================================================

#include "PE.h"

using namespace std;

PE::PE(int _PE_id){
    PE_id=_PE_id;
    maximum_active_time=0;
    input_degree=4;
    output_degree=4;
    component_trace.resize(GLvar::maximum_simulation_time);
    for(int i=0; i<GLvar::maximum_simulation_time; i++){
        component_trace[i]=new ComponentState;
    }
    LoadParameter();
}

void PE::LoadParameter(){}

void PE::ComponentActivityReport(const int &report_level){}

float PE::MemoryUtilization(const int &begin_time, const int &end_time){
    float data_memory_utilization;
    float read_memory_utilization;
    float write_memory_utilization;
    read_memory_utilization=ReadMemoryUtilization(begin_time, end_time);
    write_memory_utilization=WriteMemoryUtilization(begin_time, end_time);
    data_memory_utilization=(read_memory_utilization+write_memory_utilization)/2;
    return data_memory_utilization;
}

float PE::WriteMemoryUtilization(const int &begin_time, const int &end_time){
    float write_memory_utilization;
    int write_memory_counter=0;
    for(int i=begin_time; i<=end_time; i++){
        for(int j=0; j<WRITE_PORT_NUM; j++){
            if(component_trace[i]->component_reserved->memory_write_reserved[j]){
                write_memory_counter++;
            }
        }
    }

    write_memory_utilization=1.0*write_memory_counter/(WRITE_PORT_NUM*(end_time-begin_time+1));
    return write_memory_utilization;
}

float PE::DSPutilization(const int &begin_time, const int &end_time){
    float dsp_utilization;
    int dsp_counter=0;
    for(int i=begin_time; i<=end_time; i++){
        if(component_trace[i]->component_reserved->dsp_pipeline_reserved){
            dsp_counter++;
        }
    }

    dsp_utilization=1.0*dsp_counter/(end_time-begin_time+1);
    return dsp_utilization;
}

float PE::ReadMemoryUtilization(const int &begin_time, const int &end_time){
    float read_memory_utilization;
    int read_memory_counter=0;

    for(int i=begin_time; i<=end_time; i++){
        for(int j=0; j<4; j++){
            if(component_trace[i]->component_reserved->memory_read_reserved[j]){
                read_memory_counter++;
            }
        }
    }
    read_memory_utilization=1.0*read_memory_counter/((end_time-begin_time+1)*4);
    return read_memory_utilization;
}

float PE::OutputPortUtilization(const int &begin_time, const int &end_time){
    float output_port_utilization;
    int output_port_counter=0;
    for(int i=begin_time; i<=end_time; i++){
        for(int j=0; j<output_degree; j++){
            if(component_trace[i]->component_reserved->PE_output_reserved[j]){
                output_port_counter++;
            }
        }
    }

    output_port_utilization=1.0*output_port_counter/((end_time-begin_time+1)*output_degree);
    return output_port_utilization;
}

void PE::ConfigurantionInstrReport(const int &report_level){}

PE::~PE(){
    for(int i=0; i<GLvar::maximum_simulation_time; i++){
        delete component_trace[i];
    }
}
