// ====================================================================================================================
// Fucnction Description:
// Generally, it is the definition of global constants and global variables. 
//
// Version:
// 0.1 Nov 23th 2011
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// ====================================================================================================================

#ifndef _GLOBAL_DEF_H_
#define _GLOBAL_DEF_H_

#include <list>
#include <vector>
#include <iostream>
#include <fstream>
#include <cstdio>
#include <ctime>
#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

using namespace std;

// Global definition
#define NaN -1
#define INF 600000
#define LINK_FILTER_STANDARD 1
#define MAX_SEARCH_GAP 200
#define WRITE_PORT_NUM 2
#define READ_PORT_NUM 6
#define READ_PORT_OUT 2
#define INSTR_OP_NUM 4
#define MAX_DFG_DEGREE 1000
#define MAX_PE_NEIGHBOR 4
#define DSP_PIPELINE_DEPTH 1
#define MATRIX_M 7
#define MATRIX_N 7
#define MATRIX_P 7
#define DEBUG1(FMT, ARG...) do {fprintf(stderr,"File=%s, Line=%d: "FMT" \n",__FILE__, __LINE__,##ARG); exit(1);} while(0)
#define DEBUG2(FMT, ARG...) do {fprintf(stdout,"File=%s, Line=%d  "FMT" \n",__FILE__, __LINE__,##ARG);} while(0)
#define DEBUG3(FMT, ARG...) do {fprintf(stdout,FMT"/n",##ARG);} while(0)

// Global constant
//InputData, there is actually no operation and simply source data from IO.
//IntermediateData, the data is used merely inner DFG and will release the data memory when the following operations do not need it any more.
//OutputData, The scheduling performance is determined by when the output data is able to be available.
enum VertexType {
    InputData, IntermediateData, OutputData
};

enum VertexType2 {
    BeforeBreakPoint, AtBreakPoint, AfterBreakPoint
};

//DataInOutMem, data stays in out memory, and it must be input data. 
//DataUnavail, it should be intermediate data or output data, and the data has not been calculated.
//DataAvail, the data is now available. If it is input data or intermediate data, it must be in PE data memory.
//If it is output data, it must be stored in out memory. Note that it can still have copy in data memory for further
//computation reference.
enum VertexState {
    DataInOutMem, DataUnavail, DataAvail
};

enum DFGType {
    FFT, Random, MM, VD, CONV, AES
};

enum SchedulingType {
    ListScheduling, ModuloScheduling
};

enum PESelectionFilteringType{
    PhysicalDistanceFiltering, MemoryUtilizationFiltering, DSPutilizationFiltering, WriteMemoryUtilizationFiltering, InputPortUtilizationFiltering, OutputPortUtilizationFiltering, InoutPortUtilizationFiltering
};

enum ExecutionMode{
    Simulation, Implementation, PartialImplementation
};

enum RoutingAlgorithm{
    FullySearch, SpecifiedPath, SimplifiedSearch, SimulatedSearch 
};

enum OutMemDataScheduling{
    IOstoring, RandomlySpreading, OutMemModeling, MultipleCopying
};

// ============================================================================
// Global variables
// ============================================================================
struct GLvar{
    // Print level for debug, the higher the print_level,the more log information is available
    static int print_level;

    // Report level for dump program info, such as reconfiguration instruction.
    static int report_level;

    // Verification level for scheduling self-verification, such as result, activity and reserving infor coherence
    static int verification_level;

    static int CGRA_scale;
    static int maximum_operation_num;
    static int maximum_simulation_time;
    static int maximum_operation_cost;
    static int maximum_operation_type;
    static int minimum_operation_cost;
    static SchedulingType scheduling_type;
    static float average_children_num;
    static float output_operation_proportion;
    static float input_operation_proportion;
    static int output_operation_num;
    static int input_operation_num;
    static int random_seed;
    static int maximum_data_memory_capacity;
    static int maximum_data_memory_addr_width;
    static int inst_memory_delay;
    static int load_PE_id;
    static int store_PE_id;
    static int dfg_degree_adapter;
    static float load_balance_factor;
    static int kernel_repeat_num;
    static int break_point_num;
    static float dep_level1_proportion;
    static float dep_level2_proportion;
    static float dep_level3_proportion;
    static int dep_level1_num;
    static int dep_level2_num;
    static int dep_level3_num;
    static int proportion_switch;
};

void GetOpocdeName(const int &opcode, string &opcode_name);
int GetOpcodeValue(const string &opcode_name);

#endif
