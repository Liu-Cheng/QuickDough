// ====================================================================================================================
// Algorithm Description:
// Implementation of the algorithm
//
// Version:
// Dec 28th 2011, initial version
// Sep 8th 2014, Update coding style
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com, liucheng@eee.hku.hk
// E.E.E department, The University of Hong Kong
//
// ====================================================================================================================

#include "PE.h"

int PE::Inst_Mem_Depth = 1024;
int PE::Inst_Mem_Width = 72;

PE::PE(int _PE_ID){

    PE_ID =_PE_ID;
    Max_Active_Time = 0;
    Exe_OP_Num = 0;
    Load_Parameters();

}

void PE::Load_Parameters(){

    std::string Config_fName = "config/configure.txt";
    std::ifstream Config_fHandle;
    Config_fHandle.open(Config_fName.c_str());
    if(!Config_fHandle.is_open()){
        ERROR("Failed to open the configure.txt!");
    }

    while(!Config_fHandle.eof()){

        std::string Config_Item_Key;
        Config_fHandle >> Config_Item_Key;

        if(Config_Item_Key == "Data_Mem_WR_Port_Num"){
            Config_fHandle >> Data_Mem_WR_Port_Num;
        }
        else if(Config_Item_Key == "Data_Mem_RD_Port_Num"){
            Config_fHandle >> Data_Mem_RD_Port_Num;
        }
        else if(Config_Item_Key == "Input_Degree"){
            Config_fHandle >> Input_Degree;
        }
        else if(Config_Item_Key == "Output_Degree"){
            Config_fHandle >> Output_Degree;
        }
        else if(Config_Item_Key == "Inst_Mem_Depth"){
            Config_fHandle >> PE::Inst_Mem_Depth;
        }
        else if(Config_Item_Key == "Inst_Mem_Width"){
            Config_fHandle >> PE::Inst_Mem_Width;
        }
    }

    Config_fHandle.close();

}
float PE::Get_Data_Mem_Util(const int &Start_Time, const int &End_Time){
    float Data_Mem_Util = Get_Data_Mem_RD_Util(Start_Time, End_Time);
    Data_Mem_Util += Get_Data_Mem_WR_Util(Start_Time, End_Time);
    return Data_Mem_Util/2;
}

float PE::Get_Data_Mem_WR_Util(const int &Start_Time, const int &End_Time){

    float Data_Mem_WR_Util = 0;
    int Data_Mem_WR_Active_Cnt = 0;
    for(int i=Start_Time; i<=End_Time; i++){
        for(int j=0; j<Data_Mem_WR_Port_Num; j++){
            if(Component_Trace[i]->PE_Component_Reserved->Data_Mem_WR_Reserved[j]){
                Data_Mem_WR_Active_Cnt++;
            }
        }
    }

    Data_Mem_WR_Util = 1.0*Data_Mem_WR_Active_Cnt/(Data_Mem_WR_Port_Num*(End_Time-Start_Time+1));
    return Data_Mem_WR_Util;

}

float PE::Get_ALU_Util(const int &Start_Time, const int &End_Time){

    float ALU_Util = 0;
    int ALU_Active_Cnt = 0;
    for(int i=Start_Time; i<=End_Time; i++){
        if(Component_Trace[i]->PE_Component_Reserved->ALU_Input_Reserved){
            ALU_Active_Cnt++;
        }
    }

    ALU_Util = 1.0*ALU_Active_Cnt/(End_Time-Start_Time+1);
    return ALU_Util;

}

float PE::Get_Data_Mem_RD_Util(const int &Start_Time, const int &End_Time){
    float Data_Mem_RD_Util = 0;
    int Data_Mem_RD_Active_Cnt = 0;

    for(int i=Start_Time; i<=End_Time; i++){
        for(int j=0; j<4; j++){
            if(Component_Trace[i]->PE_Component_Reserved->Data_Mem_RD_Reserved[j]){
                Data_Mem_RD_Active_Cnt++;
            }
        }
    }
    Data_Mem_RD_Util = 1.0*Data_Mem_RD_Active_Cnt/((End_Time-Start_Time+1)*6);
    return Data_Mem_RD_Util;
}

float PE::Get_Output_Port_Util(const int &Start_Time, const int &End_Time){

    float Output_Port_Util = 0;
    int Output_Port_Active_Cnt = 0;
    for(int i=Start_Time; i<=End_Time; i++){
        for(int j=0; j<Output_Degree; j++){
            if(Component_Trace[i]->PE_Component_Reserved->PE_Output_Reserved[j]){
                Output_Port_Active_Cnt++;
            }
        }
    }

    Output_Port_Util = 1.0*Output_Port_Active_Cnt/((End_Time-Start_Time+1)*Output_Degree);
    return Output_Port_Util;

}

PE::~PE(){

    Component_Trace.clear();

}
