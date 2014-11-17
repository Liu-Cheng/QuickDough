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
    Resize_Len = 1000;
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

int PE::Get_Trace_Size(){

    return Component_Trace.size();

}

void PE::Trace_Size_Test(const int &Time_Point){
    int Trace_Size = Component_Trace.size();
    if(Trace_Size < Time_Point+1){
        Component_Trace.resize(Trace_Size + Resize_Len);
        for(int i=0; i<Resize_Len; i++){
            Component_Trace[Trace_Size + i] = new Component_State();
        }
    }
}

bool PE::Is_Store_Path_Avail(const int &Time_Point){
    return Component_Trace[Time_Point]->PE_Component_Reserved->Store_Path_Reserved == false;
}

void PE::Reserve_Store_Path(const int &Time_Point){
    Component_Trace[Time_Point]->PE_Component_Reserved->Store_Path_Reserved = true;
}

bool PE::Is_Load_Path_Avail(const int &Time_Point){
    return  Component_Trace[Time_Point]->PE_Component_Reserved->Load_Path_Reserved == false;
}

void PE::Reserve_Load_Path(const int &Time_Point){
    Component_Trace[Time_Point]->PE_Component_Reserved->Load_Path_Reserved = true;
}

bool PE::Is_WR_Port_Avail(const int &Time_Point, const int &Port_ID){
    return Component_Trace[Time_Point]->PE_Component_Reserved->Data_Mem_WR_Reserved[Port_ID] == false;

}

void PE::Reserve_WR_Port(const int &Time_Point, const int &Port_ID){
    Component_Trace[Time_Point]->PE_Component_Reserved->Data_Mem_WR_Reserved[Port_ID] = true;
}

bool PE::Is_RD_Port_Avail(const int &Time_Point, const int &Port_ID){
    return Component_Trace[Time_Point]->PE_Component_Reserved->Data_Mem_RD_Reserved[Port_ID] == false;
}

void PE::Reserve_RD_Port(const int &Time_Point, const int &Port_ID){
    Component_Trace[Time_Point]->PE_Component_Reserved->Data_Mem_RD_Reserved[Port_ID] = true;
}

void PE::Set_Store_OP(const int &Time_Point, const int &OP_ID){
    Component_Trace[Time_Point]->PE_Component_Activity->Store_OP = OP_ID;
}

int PE::Get_Store_OP(const int &Time_Point){
    return Component_Trace[Time_Point]->PE_Component_Activity->Store_OP;
}

void PE::Set_Load_OP(const int &Time_Point, const int &OP_ID){
    Component_Trace[Time_Point]->PE_Component_Activity->Load_OP = OP_ID;
}

int PE::Get_Load_OP(const int &Time_Point){
    return Component_Trace[Time_Point]->PE_Component_Activity->Load_OP;
}

void PE::Set_Store_Mux(const int &Time_Point, const int &Store_Mux){
    Component_Trace[Time_Point]->PE_Component_Activity->Store_Mux = Store_Mux;
}

int PE::Get_Store_Mux(const int &Time_Point){
    return Component_Trace[Time_Point]->PE_Component_Activity->Store_Mux;
}

void PE::Set_Load_Mux(const int &Time_Point, const int &Load_Mux){
    Component_Trace[Time_Point]->PE_Component_Activity->Load_Mux = Load_Mux;
}

int PE::Get_Load_Mux(const int &Time_Point){
    return Component_Trace[Time_Point]->PE_Component_Activity->Load_Mux;
}

void PE::Set_WR_Ena(const int &Time_Point, const int &Port_ID, const int &Ena){
    Component_Trace[Time_Point]->PE_Component_Activity->Data_Mem_WR_Ena[Port_ID] = Ena;
}

int PE::Get_WR_Ena(const int &Time_Point, const int &Port_ID){
    return Component_Trace[Time_Point]->PE_Component_Activity->Data_Mem_WR_Ena[Port_ID];
}

void PE::Set_Mem_Port(const int &Time_Point, const int &Port_ID, const int &OP_ID){
    Component_Trace[Time_Point]->PE_Component_Activity->Data_Mem_Port_OP[Port_ID] = OP_ID;
}

bool PE::Is_Output_Port_Avail(const int &Time_Point, const int &Index){
    return Component_Trace[Time_Point]->PE_Component_Reserved->PE_Output_Reserved[Index] == false;
}

bool PE::Is_Input_Port_Avail(const int &Time_Point){
    return Component_Trace[Time_Point]->PE_Component_Reserved->PE_Input_Reserved == false;
}

bool PE::Is_Bypass_Avail(const int &Time_Point){
    return Component_Trace[Time_Point]->PE_Component_Reserved->PE_Bypass_Reserved == false;
}

void PE::Set_Output_Mux(const int &Time_Point, const int &Index, const int &Output_Mux){
    Component_Trace[Time_Point]->PE_Component_Activity->PE_Output_Mux[Index] = Output_Mux;
}

int PE::Get_Output_Mux(const int &Time_Point, const int &Index){
    return Component_Trace[Time_Point]->PE_Component_Activity->PE_Output_Mux[Index];
}

void PE::Reserve_Output_Port(const int &Time_Point, const int &Index){
    Component_Trace[Time_Point]->PE_Component_Reserved->PE_Output_Reserved[Index] = true;
}

void PE::Reserve_Bypass(const int &Time_Point){
    Component_Trace[Time_Point]->PE_Component_Reserved->PE_Bypass_Reserved = true;   
}

void PE::Set_Bypass_Mux(const int &Time_Point, const int &Bypass_Mux){
    Component_Trace[Time_Point]->PE_Component_Activity->PE_Bypass_Mux = Bypass_Mux;
}

int PE::Get_Bypass_Mux(const int &Time_Point){
    return Component_Trace[Time_Point]->PE_Component_Activity->PE_Bypass_Mux;
}

void PE::Reserve_Input_Port(const int &Time_Point){
    Component_Trace[Time_Point]->PE_Component_Reserved->PE_Input_Reserved = true;
}

void PE::Set_Input_Mux(const int &Time_Point, const int &Input_Mux){
    Component_Trace[Time_Point]->PE_Component_Activity->PE_Input_Mux = Input_Mux;
}

int PE::Get_Input_Mux(const int &Time_Point){
    return Component_Trace[Time_Point]->PE_Component_Activity->PE_Input_Mux;
}

bool PE::Is_ALU_Input_Avail(const int &Time_Point){
    return Component_Trace[Time_Point]->PE_Component_Reserved->ALU_Input_Reserved == false;
}

bool PE::Is_ALU_Output_Avail(const int &Time_Point){
    return Component_Trace[Time_Point]->PE_Component_Reserved->ALU_Output_Reserved == false;
}

void PE::Set_ALU_Output_Mux(const int &Time_Point, Opcode &Opcode_Tmp ){
    Component_Trace[Time_Point]->PE_Component_Activity->ALU_Output_Mux = Opcode_Tmp;
}

void PE::Set_ALU_Opcode(const int &Time_Point, Opcode &Opcode_Tmp){
    Component_Trace[Time_Point]->PE_Component_Activity->ALU_Opcode = Opcode_Tmp;
}

Opcode PE::Get_ALU_Opcode(const int &Time_Point){
    return Component_Trace[Time_Point]->PE_Component_Activity->ALU_Opcode;
}

void PE::Reserve_ALU_Output(const int &Time_Point){
    Component_Trace[Time_Point]->PE_Component_Reserved->ALU_Output_Reserved = true;
}

void PE::Reserve_ALU_Input(const int &Time_Point){
    Component_Trace[Time_Point]->PE_Component_Reserved->ALU_Input_Reserved = true;
}

int PE::Get_OP_Of_Mem_Port(const int &Time_Point, const int &Port_ID){
    return Component_Trace[Time_Point]->PE_Component_Activity->Data_Mem_Port_OP[Port_ID];
}

void PE::Set_Mem_Port_Addr(const int &Time_Point, const int &Port_ID, int Addr){
    Component_Trace[Time_Point]->PE_Component_Activity->Data_Mem_Addr[Port_ID] = Addr;
}

int PE::Get_Mem_Port_Addr(const int &Time_Point, const int &Port_ID){
    return Component_Trace[Time_Point]->PE_Component_Activity->Data_Mem_Addr[Port_ID];
}

PE::~PE(){

    Component_Trace.clear();

}
