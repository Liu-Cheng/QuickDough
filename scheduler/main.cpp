// ============================================================================
//
// Fucnction Description:
// CGRA mapping and scheduling.
//
// Version:
// 0.1      Nov 25th 2011
// 0.3      June 30th 2013
// 0.4      Mar 5th 2014
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com, liucheng@eee.hku.hk
// E.E.E Department, The University of Hong Kong
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

    cout << endl << "\t\tFully Pipelined Soft-CGRA Scheduling" << endl;
    cout << "\t(C) E.E.E Department, The University of Hong Kong" << endl << endl;
    
    LoadParameter();

    srand(GLvar::random_seed);

    CoarseGrainReconArch* CGRA = new CoarseGrainReconArch();

    DataFlowGraph* DFG = new DataFlowGraph();

    Scheduler* current_scheduler = new Scheduler(DFG, CGRA);

    current_scheduler->Scheduling();

    current_scheduler->OperationResultCheck();

}

void LoadParameter(){

    string Config_fName = "config/configure.txt";
    ifstream Config_fHandle;
    Config_fHandle.open(Config_fName.c_str());
    if(!Config_fHandle.is_open()){
        DEBUG1("Failed to open the configure.txt!");
    }

    while(!Config_fHandle.eof()){
        string configure_item_key;
        Config_fHandle >> configure_item_key;

        if(configure_item_key=="print_level"){
            Config_fHandle >> GLvar::print_level;
        }

        else if(configure_item_key=="report_level"){
            Config_fHandle >> GLvar::report_level;
        }

        else if(configure_item_key=="verification_level"){
            Config_fHandle >> GLvar::verification_level;
        }

        else if(configure_item_key=="CGRA_scale"){
            Config_fHandle >> GLvar::CGRA_scale;
        }

        else if(configure_item_key=="maximum_operation_num"){
            Config_fHandle >> GLvar::maximum_operation_num;
        }

        else if(configure_item_key=="maximum_simulation_time"){
            Config_fHandle >> GLvar::maximum_simulation_time;
        }

        else if(configure_item_key=="random_seed"){
            Config_fHandle >> GLvar::random_seed;
        }

        else if(configure_item_key=="load_PE_id"){
            Config_fHandle >> GLvar::load_PE_id;
        }

        else if(configure_item_key=="store_PE_id"){
            Config_fHandle >> GLvar::store_PE_id;
        }

        else if(configure_item_key=="inst_memory_delay"){
            Config_fHandle >> GLvar::inst_memory_delay;
        }

        else if(configure_item_key=="dfg_degree_adapter"){
            Config_fHandle >> GLvar::dfg_degree_adapter;
        }

        else if(configure_item_key=="maximum_data_memory_addr_width"){
            Config_fHandle >> GLvar::maximum_data_memory_addr_width;
        }

        else if(configure_item_key=="load_balance_factor"){
            Config_fHandle >> GLvar::load_balance_factor;
        }
    }

    Config_fHandle.close();
}

