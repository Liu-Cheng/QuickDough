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

std::ostream& operator<< (std::ostream &os, OPCODE inst_opcode){
    switch (inst_opcode){
        case MULADD:
            os << "MULADD";
            break;
        case MULSUB:
            os << "MULSUB";
            break;
        case ADDADD:
            os << "ADDADD";
            break;
        case ADDSUB:
            os << "ADDSUB";
            break;
        case SUBSUB:
            os << "SUBSUB";
            break;
        case PHI:
            os << "PHI";
            break;
        case RSFAND:
            os << "RSFAND";
            break;
        case LSFADD:
            os << "LSFADD";
            break;
        case ABS:
            os << "ABS";
            break;
        case GT:
            os << "GT";
            break;
        case LET:
            os << "LET";
            break;
        case ANDAND:
            os << "ANDAND";
            break;
        default:
            os << "UNDEFINED";
            break;
    }
    return os;
}

std::ostream& operator<< (std::ostream &os, OPTYPE op_type){
    switch (op_type){
        case INCONST:
            os << "INCONST";
            break;
        case INVAR:
            os << "INVAR";
            break;
        case UNUSED:
            os << "UNUSED";
            break;
        case OUTVAR:
            os << "OUTVAR";
            break;
        case IM:
            os << "IM";
            break;
        default:
            os << "UNDEFINED";
            break;
    }
    return os;
}

int opcode2int (const OPCODE &inst_opcode){

    int opcode_val=inst_opcode;
    return opcode_val;

}

OPCODE str2opcode(const std::string &opcode_str){
    OPCODE inst_opcode;
    if(opcode_str=="MULADD"){
        inst_opcode = MULADD;
    }
    else if(opcode_str=="MULSUB"){
        inst_opcode = MULSUB;
    }
    else if(opcode_str=="ADDADD"){
        inst_opcode = ADDADD;
    }
    else if(opcode_str=="ADDSUB"){
        inst_opcode = ADDSUB;
    }
    else if(opcode_str=="SUBSUB"){
        inst_opcode = SUBSUB;
    }
    else if(opcode_str=="PHI"){
        inst_opcode = PHI;
    }
    else if(opcode_str=="RSFAND"){
        inst_opcode = RSFAND;
    }
    else if(opcode_str=="LSFADD"){
        inst_opcode = LSFADD;
    }
    else if(opcode_str=="ABS"){
        inst_opcode = ABS;
    }
    else if(opcode_str=="GT"){
        inst_opcode = GT;
    }
    else if(opcode_str=="LET"){
        inst_opcode = LET;
    }
    else if(opcode_str=="ANDAND"){
        inst_opcode = ANDAND;
    }
    else{
        DEBUG1("Unknown instruction opcode!");
    }
    return inst_opcode;
}

int op_compute(const OPCODE &inst_opcode, const int &src_val0, const int &src_val1, const int &src_val2){
    int dst_val;
    switch(inst_opcode){
        case MULADD:
            dst_val = src_val0 * src_val1 + src_val2;
            break;
        case MULSUB:
            dst_val = src_val0 * src_val1 - src_val2;
            break;
        case ADDADD:
            dst_val = src_val0 + src_val1 + src_val2;
            break;
        case ADDSUB:
            dst_val = src_val0 + src_val1 - src_val2;
            break;
        case SUBSUB:
            dst_val = src_val0 - src_val1 -src_val2;
            break;
        case PHI:
            dst_val = src_val0 ? src_val1 : src_val2;
            break;
        case RSFAND:
            dst_val = (src_val0 >> src_val1) & src_val2;
            break;
        case LSFADD:
            dst_val = (src_val0 << src_val1) + src_val2;
            break;
        case ABS:
            dst_val = abs(src_val0);
            break;
        case GT:
            dst_val = (src_val0 > src_val1) ? 1 : 0;
            break;
        case LET:
            dst_val = (src_val0 <= src_val1) ? 1: 0;
            break;
        case ANDAND:
            dst_val = (src_val0!=0) && (src_val1!=0) && (src_val2!=0);
            break;
        default:
            dst_val=0;
            break;
    }
    return dst_val;
}
