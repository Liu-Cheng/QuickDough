// =============================================================================
// Fucnction Description:
// Generally, it is the definition of global constants and global variables. 
//
// Version:
// Nov 23th 2011, initil version
// Sep 5th 2014, Clean up the coding style  
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// =============================================================================

#ifndef _GLOBAL_DEF_H_
#define _GLOBAL_DEF_H_

#include <map>
#include <list>
#include <vector>
#include <iostream>
#include <fstream>
#include <cstdio>
#include <ctime>
#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include <sstream>
#include <cmath>

// Global definition
#define NaN -1

#define ERROR(FMT, ARG...) do {fprintf(stderr,"File=%s, Line=%d: \
        "FMT" \n",__FILE__, __LINE__,##ARG); exit(1);} while(0)

#define PRINT(FMT, ARG...) do {fprintf(stdout,"File=%s, Line=%d  \
        "FMT" \n",__FILE__, __LINE__,##ARG);} while(0)

enum Topology{
    Torus, Mesh, Full_Connect, Customized
};

enum Operand_State {
    In_IO_Buffer, Unavail, Avail
};

enum PE_Sel_Filter_Type{
    Dist_Filter, Mem_Util_Filter, DSP_Util_Filter, \
    Write_Mem_Util_Filter, Input_Port_Util_Filter, \
    Output_Port_Util_Filter, Inout_Port_Util_Filter
};

enum PE_Selection{
    Least_Recent_Used, Least_Ready_OP_Attached
};

enum Exe_Mode{
    Sim, Impl 
};

// High frequency, Less high frequency, Medium frequency, Low frequency
enum Pipeline_Intensity{
    OLD, LF, MF, LHF, HF
};

enum Routing_Alg{
    Dynamic_Dijkstra, Dynamic_XY, Static_XY, Static_Dijkstra 
};

enum IO_Placement{
    Sequential_Placement, Interleaving_Placement, Pre_Placement, On_Demand_Placement
};

enum Scheduling_Strategy{
    PE_Pref, OP_Pref, PE_OP_Together
};

enum Pri_Allocation_Scheme{
    ASAP, ALAP, Min_Slack, My_ASAP 
};

enum Opcode{
    NC, MULADD, MULSUB, ADDADD, ADDSUB, SUBSUB, PHI, RSFAND, LSFADD, ABS, GT, LET, ANDAND
};

enum Operand_Type{
    INCONST, INVAR, UNUSED, OUTVAR, IM, IMOUT
};

std::ostream& operator<< (std::ostream &os, Opcode Inst_Opcode);
std::ostream& operator<< (std::ostream &os, Operand_Type OP_Type);

// ============================================================================
// Global variables
// ============================================================================
struct GL_Var{
    static int Print_Level;
    static int Verify_On;
    static int Random_Seed;
    static int Impl_Or_Sim;
    static const std::map<Opcode, int> Opcode_To_Cost;
    static std::ofstream fTrace;
    static void Print2DInt(const std::vector<std::vector<int> > &Array){
        std::vector<std::vector<int> >::const_iterator cit2;
        std::vector<int>::const_iterator cit1;
        for(cit2=Array.begin(); cit2!=Array.end(); cit2++){
            for(cit1=cit2->begin(); cit1!=cit2->end(); cit1++){
                std::cout << *cit1 << "  ";
            }
            std::cout << std::endl;
        }
    }

    static void Print1DInt(const std::vector<int> &Array){
        std::vector<int>::const_iterator cit;
        for(cit=Array.begin(); cit!=Array.end(); cit++){
            std::cout << *cit << "  ";
        }
        std::cout << std::endl;
    }

    static std::map<Opcode, int> Create_Map(){
        Pipeline_Intensity Pipeline;
        std::string Config_Name = "./config/configure.txt";
        std::ifstream Config_Handle;
        Config_Handle.open(Config_Name.c_str());
        if(!Config_Handle.is_open()){
            ERROR("Failed to open %s!\n", Config_Name.c_str());
        }
        std::string Item_Key;
        while(!Config_Handle.eof()){
            std::string Item_Val;
            Config_Handle >> Item_Key;
            Config_Handle >> Item_Val;
            if(Item_Key == "Pipeline_Intensity"){
                if(Item_Val == "OLD"){
                    Pipeline = OLD;
                }
                else if(Item_Val == "LF"){
                    Pipeline = LF;
                }
                else if(Item_Val == "MF"){
                    Pipeline = MF;
                }
                else if(Item_Val == "LHF"){
                    Pipeline = LHF;
                }
                else if(Item_Val == "HF"){
                    Pipeline = HF;
                }
                else{
                    ERROR("Unknown pipeline intensity configuration!\n");
                }
            }
        }
        Config_Handle.close();

        std::map<Opcode, int> Local_Map;
        std::string fName = "./config/opcode.txt";
        std::ifstream fHandle;
        fHandle.open(fName.c_str());
        if(!fHandle.is_open()){
            ERROR("Failed to open %s! \n", fName.c_str());
        }

        while(!fHandle.eof()){
            int Item_Val[5];
            fHandle >> Item_Key;
            for(int i=0; i<5; i++){
                fHandle >> Item_Val[i];
            }
            int ID = (int)(Pipeline);

            if(Item_Key == "MULADD"){
                Local_Map[MULADD] = Item_Val[ID];
            }
            else if(Item_Key == "MULSUB"){
                Local_Map[MULSUB] = Item_Val[ID];
            }
            else if(Item_Key == "ADDADD"){
                Local_Map[ADDADD] = Item_Val[ID];
            }
            else if(Item_Key == "ADDSUB"){
                Local_Map[ADDSUB] = Item_Val[ID];
            }
            else if(Item_Key == "SUBSUB"){
                Local_Map[SUBSUB] = Item_Val[ID];
            }
            else if(Item_Key == "PHI"){
                Local_Map[PHI] = Item_Val[ID];
            }
            else if(Item_Key == "RSFAND"){
                Local_Map[RSFAND] = Item_Val[ID];
            }
            else if(Item_Key == "LSFADD"){
                Local_Map[LSFADD] = Item_Val[ID];
            }
            else if(Item_Key == "ABS"){
                Local_Map[ABS] = Item_Val[ID];
            }
            else if(Item_Key == "GT"){
                Local_Map[GT] = Item_Val[ID];
            }
            else if(Item_Key == "LET"){
                Local_Map[LET] = Item_Val[ID];
            }
            else if(Item_Key == "ANDAND"){
                Local_Map[ANDAND] = Item_Val[ID];
            }
            else{
                ERROR("Unknown opcode in %s!\n", fName.c_str());
            }
        }
        fHandle.close();
        return Local_Map;
    }
};

int Opcode_To_Int(const Opcode &Inst_Opcode);
Opcode Str_To_Opcode(const std::string &Opcode_Str);
int OP_Compute(const Opcode &Inst_Opcode, const int &Src_Val0, const int &Src_Val1, const int &Src_Val2);
int Get_Opcode_Cost(const Opcode &Inst_Opcode);

#endif
