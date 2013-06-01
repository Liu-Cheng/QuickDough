// ====================================================================================================================
// Algorithm Description:
// Initialization of global variables
//
// Version:
// 0.1      Dec 30th 2011
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// ====================================================================================================================

#include "GlobalDef.h"

int GLvar::print_level=0;
int GLvar::report_level=0;
int GLvar::verification_level=0;
int GLvar::CGRA_scale=16;
int GLvar::maximum_operation_num=8000;
int GLvar::maximum_simulation_time=8000;
int GLvar::maximum_operation_cost=1;
int GLvar::minimum_operation_cost=1;
float GLvar::input_operation_proportion=0.4;
float GLvar::output_operation_proportion=0.05;
int GLvar::input_operation_num=10;
int GLvar::output_operation_num=10;
int GLvar::maximum_operation_type=8;
int GLvar::random_seed=0;
int GLvar::maximum_data_memory_capacity=256;
int GLvar::maximum_data_memory_addr_width=8;
int GLvar::inst_memory_delay=3;
int GLvar::load_PE_id=0;
int GLvar::store_PE_id=15;
int GLvar::dfg_degree_adapter=2;
float GLvar::load_balance_factor=1;
int GLvar::kernel_repeat_num=1;
int GLvar::break_point_num=15;
float GLvar::dep_level1_proportion=0.3;
float GLvar::dep_level2_proportion=0.3;
float GLvar::dep_level3_proportion=0.3;
int GLvar::dep_level1_num=5;
int GLvar::dep_level2_num=5;
int GLvar::dep_level3_num=5;
int GLvar::proportion_switch=1;
SchedulingType scheduling_type=ListScheduling;

int GetOpcodeValue(const string &opcode_name){
    if(opcode_name=="MulAdd"){
        return 0;
    }
    else if(opcode_name=="Mul"){
        return 1;
    }
    else{
        return -1;
    }
}

void GetOpcodeName(const int &opcode, string &opcode_name){
    if(opcode==0){
        opcode_name="MulAdd";
    }
    else if(opcode==1){
        opcode_name="Mul";
    }
    else{
        opcode_name=" ";
    }
}
