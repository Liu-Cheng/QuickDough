// ============================================================================
// Algorithm Description:
// Implementation of the data flow graph
//
// Version:
// 0.1      Dec 1th 2011
// 0.2      Oct 29th 2012   Add new vertex type
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// ============================================================================

#include "Data_Flow_Graph.h"

Data_Flow_Graph::Data_Flow_Graph(){

    Load_Parameters();
    DFG_Construct();
    DFG_Stat();
    DFG_Pri_Allocation();
    DFG_Pri_Analysis();

}

void Data_Flow_Graph::Load_Parameters(){

    std::string Config_fName = "config/configure.txt";
    std::ifstream Config_fHandle;
    Config_fHandle.open(Config_fName.c_str());
    if(!Config_fHandle.is_open()){
        ERROR("Failed to open the configure.txt!");
    }

    while(!Config_fHandle.eof()){
        std::string Config_Item_Key;
        Config_fHandle >> Config_Item_Key;
        if(Config_Item_Key == "DFG_Name"){
            Config_fHandle >> DFG_Name;
        }
        else if(Config_Item_Key == "Max_Src_OP_Num"){
            Config_fHandle >> Max_Src_OP_Num;
        }
        else if(Config_Item_Key == "DFG_Pri_Allocation_Scheme"){
            std::string Config_Item_Val;
            Config_fHandle >> Config_Item_Val;
            if(Config_Item_Val == "ASAP"){
                DFG_Pri_Allocation_Scheme = ASAP;
            }
            else if(Config_Item_Val == "ALAP"){
                DFG_Pri_Allocation_Scheme = ALAP;
            }
            else if(Config_Item_Val == "My_ASAP"){
                DFG_Pri_Allocation_Scheme = My_ASAP;
            }
            else if(Config_Item_Val == "Min_Slack"){
                DFG_Pri_Allocation_Scheme = Min_Slack;
            }
            else{
                ERROR("Unknown DFG priority allocation scheme!\n");
            }
        }
    }
    Config_fHandle.close();

}

void Data_Flow_Graph::DFG_Construct(){

    std::string DFG_OP_File;
    std::ostringstream oss;
    oss << "./config/kernel-operand.txt";
    DFG_OP_File = oss.str();

    std::ifstream DFG_OP_Handle;
    DFG_OP_Handle.open(DFG_OP_File.c_str());
    if(!DFG_OP_Handle.is_open()){
        ERROR("DFG IO file open error!");
    }

    while(!DFG_OP_Handle.eof()){

        int _OP_ID;
        int _IO_Buffer_Addr;
        int _OP_Val;
        int _IO_Buffer_ID;
        std::string _OP_Type_Str;

        DFG_OP_Handle >> _OP_ID;
        DFG_OP_Handle >> _IO_Buffer_Addr;
        DFG_OP_Handle >> _OP_Val;
        DFG_OP_Handle >> _IO_Buffer_ID;
        DFG_OP_Handle >> _OP_Type_Str;

        if(DFG_OP_Handle.fail()){
            break;
        }

        Operand* OP_Ptr = new Operand();
        OP_Array.push_back(OP_Ptr);
        OP_Ptr->OP_ID = _OP_ID;
        OP_Ptr->OP_Val = _OP_Val;
        OP_Ptr->IO_Buffer_Addr = _IO_Buffer_Addr;
        OP_Ptr->IO_Buffer_ID = _IO_Buffer_ID;

        if(_OP_Type_Str == "INCONST"){
            OP_Ptr->OP_Type = INCONST; 
            OP_Ptr->OP_Attribute.OP_Cost = 0;

            // Operand 0 is a constant and it is available on each PE initially.
            if(OP_Ptr->OP_ID == 0){
                OP_Ptr->OP_Attribute.OP_State = Avail;
            }
            else{
                OP_Ptr->OP_Attribute.OP_State = In_IO_Buffer;
            }
        }
        else if(_OP_Type_Str == "INVAR"){
            OP_Ptr->OP_Type = INVAR;
            OP_Ptr->OP_Attribute.OP_State = In_IO_Buffer;
        }
        else if(_OP_Type_Str == "IM"){
            OP_Ptr->OP_Type = IM;
            OP_Ptr->OP_Attribute.OP_State = Unavail;
        }
        else if(_OP_Type_Str == "OUTVAR"){
            OP_Ptr->OP_Type = OUTVAR;
            OP_Ptr->OP_Attribute.OP_State = Unavail;
        }
        else if(_OP_Type_Str == "IMOUT"){
            OP_Ptr->OP_Type = IMOUT;
            OP_Ptr->OP_Attribute.OP_State = Unavail;
        }
        else{
            ERROR("Unresolved OP type in operand.txt file");
        }
    }
    DFG_OP_Handle.close();

    // Build the connection between different operands using kernel.s file
    std::string DFG_Inst_File;
    std::ifstream DFG_Inst_Handle;
    oss.str(std::string());
    oss.clear();
    oss << "./config/dfg.s";
    DFG_Inst_File = oss.str();
    DFG_Inst_Handle.open(DFG_Inst_File.c_str());
    if(!DFG_Inst_Handle.is_open()){
        ERROR("DFG instruction file open error!");
    }

    // Instruction format: dst--opcode--src0--src1--src2
    while(!DFG_Inst_Handle.eof()){
        int Dst_OP_ID;
        std::string Inst_Opcode_Str;
        int Src_OP0_ID;
        int Src_OP1_ID;
        int Src_OP2_ID;

        DFG_Inst_Handle >> Dst_OP_ID;
        DFG_Inst_Handle >> Inst_Opcode_Str;
        DFG_Inst_Handle >> Src_OP0_ID;
        DFG_Inst_Handle >> Src_OP1_ID;
        DFG_Inst_Handle >> Src_OP2_ID;

        if(DFG_Inst_Handle.fail()){
            break;
        }

        Operand* Dst_OP_Ptr = OP_Array[Dst_OP_ID];
        Operand* Src_OP0_Ptr = OP_Array[Src_OP0_ID];
        Operand* Src_OP1_Ptr = OP_Array[Src_OP1_ID];
        Operand* Src_OP2_Ptr = OP_Array[Src_OP2_ID];
        Dst_OP_Ptr->OP_Attribute.OP_Opcode = Str_To_Opcode(Inst_Opcode_Str);
        Dst_OP_Ptr->OP_Attribute.OP_Cost = Get_Opcode_Cost(Str_To_Opcode(Inst_Opcode_Str));
        Dst_OP_Ptr->OP_Parents.push_back(Src_OP0_Ptr);
        Dst_OP_Ptr->OP_Parents.push_back(Src_OP1_Ptr);
        Dst_OP_Ptr->OP_Parents.push_back(Src_OP2_Ptr);
        Src_OP0_Ptr->OP_Children.push_back(Dst_OP_Ptr);
        Src_OP1_Ptr->OP_Children.push_back(Dst_OP_Ptr);
        Src_OP2_Ptr->OP_Children.push_back(Dst_OP_Ptr);
        
    }
    DFG_Inst_Handle.close();

}

void Data_Flow_Graph::DFG_Stat(){

    OP_Num = 0;
    Input_OP_Num = 0;
    Output_OP_Num = 0;
    IM_OP_Num = 0;
    IMOUT_OP_Num = 0;

    int Total_Degree = 0;
    std::vector<Operand*>::iterator Vec_It;
    for(Vec_It = OP_Array.begin(); Vec_It != OP_Array.end(); Vec_It++){
        if((*Vec_It)->OP_ID == NaN){
            ERROR("Uninitialized Operand is found in DFG!");
        }
        else{
            OP_Num++;
            if((*Vec_It)->OP_Children.size() == 0 && (*Vec_It)->OP_Parents.size() == 0){
                if((*Vec_It)->OP_ID!=0){
                    PRINT("Unused Operand %d appears!", (*Vec_It)->OP_ID);
                }
            }
            else if((*Vec_It)->OP_Type == INCONST || (*Vec_It)->OP_Type == INVAR){
                Input_OP_Num++;
            }
            else if((*Vec_It)->OP_Type == OUTVAR){
                Output_OP_Num++;
                Total_Degree += (*Vec_It)->OP_Parents.size();
            }
            else if((*Vec_It)->OP_Type == IMOUT){
                IMOUT_OP_Num++;
                Total_Degree += (*Vec_It)->OP_Parents.size();
            }
            else{
                IM_OP_Num++;
                Total_Degree += (*Vec_It)->OP_Parents.size();
            }
        }
    }

    // OP 0 is available in each PE initially, so it will not bring in any overhead.
    Total_Degree = Total_Degree - OP_Array[0]->OP_Children.size();
    Avg_Input_Degree = Total_Degree*1.0/(IM_OP_Num + Output_OP_Num + IMOUT_OP_Num);
    Avg_Output_Degree = Total_Degree*1.0/(Input_OP_Num + IM_OP_Num + IMOUT_OP_Num);
    if(GL_Var::Print_Level == 1){
        GL_Var::fTrace << "OP_Num " << OP_Num << std::endl;
        GL_Var::fTrace << "Input_OP_Num " << Input_OP_Num << std::endl;
        GL_Var::fTrace << "Output_OP_Num " << Output_OP_Num << std::endl;
        GL_Var::fTrace << "IM_OP_Num " << IM_OP_Num << std::endl; 
        GL_Var::fTrace << "IMOUT_OP_Num " << IMOUT_OP_Num << std::endl;
        GL_Var::fTrace << "Average_Input_Degree " << Avg_Input_Degree << std::endl;
        GL_Var::fTrace << "Average_Output_Degree " << Avg_Output_Degree << std::endl;
    }

}

void Data_Flow_Graph::DFG_Pri_Allocation(){

    if(DFG_Pri_Allocation_Scheme == My_ASAP){
        My_ASAP_Pri_Allocation();
    }
    else if(DFG_Pri_Allocation_Scheme == ASAP){
        ASAP_Pri_Allocation();
    }
    else if(DFG_Pri_Allocation_Scheme == ALAP){
        ALAP_Pri_Allocation();
    }
    else if(DFG_Pri_Allocation_Scheme == Min_Slack){
        Min_Slack_Pri_Allocation();
    }
    else{
        ERROR("Unknown DFG priority allocation scheme!\n");
    }
    
}

void Data_Flow_Graph::ASAP_Pri_Allocation(){
    ERROR("To be added soon!\n");
}

void Data_Flow_Graph::ALAP_Pri_Allocation(){
    ERROR("To be added soon!\n");
}

void Data_Flow_Graph::Min_Slack_Pri_Allocation(){
    ERROR("To be added soon!\n");
}


/* -------------------------------------------------------------------- 
  When all the children of an operand are assigned priorities, the 
  maximum children priority added with current operand cost is set 
  to be current operand priority. Output operand has no children 
  operands, and operand cost is considered to be its priority. 
  Finally, the node with highest priority indicates the earliest 
  execution time. Note that operand cost here represents execution 
  time of the operand.
  ------------------------------------------------------------------*/
void Data_Flow_Graph::My_ASAP_Pri_Allocation(){

    std::vector<bool> OP_Pri_Allocated;
    OP_Pri_Allocated.resize(OP_Num);
    for(int i=0; i<OP_Num; i++){
        OP_Pri_Allocated[i] = false;
        if(OP_Array[i]->OP_Children.size() == 0){
            OP_Array[i]->OP_Attribute.Scheduling_Pri = OP_Array[i]->OP_Attribute.OP_Cost;
            OP_Pri_Allocated[i] = true;
        }
    }

    bool Pri_Allocation_Completed = false;
    while(!Pri_Allocation_Completed){
        for(int i=0; i<OP_Num; i++){
            if(OP_Pri_Allocated[i] == false){
                int Max_Child_Pri = 0;
                bool Children_Pri_Allocated = true;
                std::vector<Operand*>::iterator Vec_It;
                for(Vec_It = OP_Array[i]->OP_Children.begin(); Vec_It != OP_Array[i]->OP_Children.end(); Vec_It++){
                    Children_Pri_Allocated &= OP_Pri_Allocated[(*Vec_It)->OP_ID];
                    if((*Vec_It)->OP_Attribute.Scheduling_Pri > Max_Child_Pri){
                        Max_Child_Pri = (*Vec_It)->OP_Attribute.Scheduling_Pri;
                    }
                }

                if(Children_Pri_Allocated == true){
                    int Current_OP_Cost = OP_Array[i]->OP_Attribute.OP_Cost;
                    OP_Array[i]->OP_Attribute.Scheduling_Pri = Max_Child_Pri + Current_OP_Cost;
                    OP_Pri_Allocated[i] = true;
                }
            }
        }

        Pri_Allocation_Completed = true;
        for(int i=0; i<OP_Num; i++){
            if(!OP_Pri_Allocated[i]){
                Pri_Allocation_Completed = false;
                break;
            }
        }
    }

}

void Data_Flow_Graph::DFG_Pri_Analysis(){    

    // Find out the operand with maximum priority
    Max_OP_Pri = 0;
    Pri_Level = 0;
    int Pri_Sum = 0;
    for(int i=0; i<OP_Num; i++){
        Pri_Sum += OP_Array[i]->OP_Attribute.Scheduling_Pri;
        if(OP_Array[i]->OP_Type == INVAR || OP_Array[i]->OP_Type == INCONST){
            if(Max_OP_Pri < OP_Array[i]->OP_Attribute.Scheduling_Pri){
                Max_OP_Pri = OP_Array[i]->OP_Attribute.Scheduling_Pri;
            }
        }
    }

    //Average OP priority of the DFG
    Avg_OP_Pri = 1.0*Pri_Sum/OP_Num;

    //DFG priority distribution
    std::vector<int> DFG_Pri_Dist;
    DFG_Pri_Dist.resize(Max_OP_Pri+1);
    for(int i=0; i<Max_OP_Pri+1; i++){
        DFG_Pri_Dist[i] = NaN;
    }

    for(int i=0; i<OP_Num; i++){
        int Current_OP_Pri = OP_Array[i]->OP_Attribute.Scheduling_Pri;
        if(DFG_Pri_Dist[Current_OP_Pri] == NaN){
            DFG_Pri_Dist[Current_OP_Pri] =  1;
        }
        else{
            DFG_Pri_Dist[Current_OP_Pri]++;
        }
    }

    for(int i=0; i<Max_OP_Pri+1; i++){
        if(DFG_Pri_Dist[i] != NaN){
            Pri_Level++;
        }
    }

    //Dump vertex priority information
    GL_Var::fTrace << "Avg_OP_Pri " << Avg_OP_Pri << std::endl;
    GL_Var::fTrace << "Pri_Level " << Pri_Level << std::endl;
    GL_Var::fTrace << "Pri_Distr ";
    for(int i=0; i<Max_OP_Pri+1; i++){
        if(DFG_Pri_Dist[i] != NaN){
            GL_Var::fTrace << DFG_Pri_Dist[i] << " ";
        }
    }
    GL_Var::fTrace << std::endl;

}

void Data_Flow_Graph::DFG_Calculation(std::vector<int> &OP_Result){

    int Result;
    std::vector<Operand*>::iterator Vec_It;
    for(Vec_It = OP_Array.begin(); Vec_It != OP_Array.end(); Vec_It++){
        if((*Vec_It)->OP_Parents.size()>0){
           int Src_Val0 = (*Vec_It)->OP_Parents[0]->OP_Val;
           int Src_Val1 = (*Vec_It)->OP_Parents[1]->OP_Val;
           int Src_Val2 = (*Vec_It)->OP_Parents[2]->OP_Val;
           Opcode Inst_Opcode = (*Vec_It)->OP_Attribute.OP_Opcode;
           Result = OP_Compute(Inst_Opcode, Src_Val0, Src_Val1, Src_Val2);
           (*Vec_It)->OP_Val = Result;
        }
        else{
            Result = (*Vec_It)->OP_Val;
        }
        OP_Result.push_back(Result);
    }

}

/*---------------------------------------------------------------------
 * Assume all the input/output are stored in two unified RAM blocks 
 * separately, and each data has an logic address. Note that the logic
 * addresses are not necessarily the same with their corresponding 
 * physical addresses which mainly depends on how the RAM block are
 * partitioned. Also here we just look at the IO of the DFG instead of
 * the block on the SCGRA accelerator.
 * ------------------------------------------------------------------*/
int Data_Flow_Graph::Get_IO_Logic_Addr(const int &OP_ID){
    if(OP_Array[OP_ID]->OP_Type == INCONST || OP_Array[OP_ID]->OP_Type == INVAR){
        return (OP_ID - 1);
    }
    else if(OP_Array[OP_ID]->OP_Type == IMOUT || OP_Array[OP_ID]->OP_Type == OUTVAR){
        return (OP_ID - 1 - Input_OP_Num - Output_OP_Num);
    }
    else{
        ERROR(" OP %d is not stored in IO buffer.\n", OP_ID);
    }
}
