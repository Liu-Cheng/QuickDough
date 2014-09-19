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

#include <cstdlib>
#include "Global_Def.h"
#include "Data_Flow_Graph.h"
#include "Coarse_Grain_Recon_Arch.h"
#include "Scheduler.h"

void Load_Parameters();

int main(){

    std::cout << std::endl << "\t\tFully Pipelined Soft-CGRA Scheduling" << std::endl;
    std::cout << "\t(C) E.E.E Department, The University of Hong Kong" << std::endl << std::endl;
    
    Load_Parameters();
    srand(GL_Var::Random_Seed);
    Coarse_Grain_Recon_Arch* CGRA = new Coarse_Grain_Recon_Arch();
    Data_Flow_Graph* DFG = new Data_Flow_Graph();
    Scheduler* Current_Scheduler = new Scheduler(DFG, CGRA);
    Current_Scheduler->Scheduling();
    Current_Scheduler->OP_Computation_Check();

}

void Load_Parameters(){

    std::string Config_fName = "config/configure.txt";
    std::ifstream Config_fHandle;
    Config_fHandle.open(Config_fName.c_str());
    if(!Config_fHandle.is_open()){
        ERROR("Failed to open the configure.txt!");
    }

    while(!Config_fHandle.eof()){

        std::string Config_Item_Key;
        Config_fHandle >> Config_Item_Key;

        if(Config_Item_Key == "Print_Level"){
            Config_fHandle >> GL_Var::Print_Level;
        }
        else if(Config_Item_Key=="Verify_On"){
            Config_fHandle >> GL_Var::Verify_On;
        }
        else if(Config_Item_Key=="Random_Seed"){
            Config_fHandle >> GL_Var::Random_Seed;
        }
    }

    Config_fHandle.close();

}

