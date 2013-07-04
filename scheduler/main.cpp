// ============================================================================
// Fucnction Description:
// CGRA mapping and scheduling.
//
// Version:
// 0.1      Nov 25th 2011
// 0.3      June 30th 2013
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com, liucheng@eee.hku.hk
// E.E.E department, The University of Hong Kong
//
// ============================================================================

#include "GlobalDef.h"
#include "DataFlowGraph.h"
#include "CoarseGrainReconArch.h"
#include "Scheduler.h"
#include <cstdlib>

using namespace std;

void LoadParameter();
int main(){
    cout << endl << "\t\t\t CGRA Scheduling" << endl;
    cout << "\t(C) E.E.E Department, The University of Hong Kong"<< endl << endl;
    
    LoadParameter();
    srand(GLvar::random_seed);
    CoarseGrainReconArch* CGRA = new CoarseGrainReconArch();
    DataFlowGraph* DFG = new DataFlowGraph();
    Scheduler* current_scheduler = new Scheduler(DFG, CGRA);
    current_scheduler->Scheduling();

    if(GLvar::verification_level==8){
        CGRA->ActivityCheck();
    }

    if(GLvar::verification_level==5){
        current_scheduler->OperationResultCheck();
    }
}

void LoadParameter(){
    string configure_file_name = "config/configure.txt";
    ifstream configure_file_handle;
    configure_file_handle.open(configure_file_name.c_str());
    if(!configure_file_handle.is_open()){
        DEBUG1("Failed to open the configure.txt!");
    }

    while(!configure_file_handle.eof()){
        string configure_item_key;
        configure_file_handle >> configure_item_key;

        if(configure_item_key=="print_level"){
            configure_file_handle >> GLvar::print_level;
        }

        else if(configure_item_key=="report_level"){
            configure_file_handle >> GLvar::report_level;
        }

        else if(configure_item_key=="verification_level"){
            configure_file_handle >> GLvar::verification_level;
        }

        else if(configure_item_key=="CGRA_scale"){
            configure_file_handle >> GLvar::CGRA_scale;
        }

        else if(configure_item_key=="maximum_operation_num"){
            configure_file_handle >> GLvar::maximum_operation_num;
        }

        else if(configure_item_key=="maximum_simulation_time"){
            configure_file_handle >> GLvar::maximum_simulation_time;
        }

        else if(configure_item_key=="random_seed"){
            configure_file_handle >> GLvar::random_seed;
        }

        else if(configure_item_key=="load_PE_id"){
            configure_file_handle >> GLvar::load_PE_id;
        }

        else if(configure_item_key=="store_PE_id"){
            configure_file_handle >> GLvar::store_PE_id;
        }

        else if(configure_item_key=="inst_memory_delay"){
            configure_file_handle >> GLvar::inst_memory_delay;
        }

        else if(configure_item_key=="dfg_degree_adapter"){
            configure_file_handle >> GLvar::dfg_degree_adapter;
        }

        else if(configure_item_key=="maximum_data_memory_addr_width"){
            configure_file_handle >> GLvar::maximum_data_memory_addr_width;
        }

        else if(configure_item_key=="load_balance_factor"){
            configure_file_handle >> GLvar::load_balance_factor;
        }
    }

    configure_file_handle.close();
}

