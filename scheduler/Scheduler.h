// ============================================================================
//
// Fucnction Description:
// Implement the list scheduling algorithm, provide statistics of the scheduling
// and dump scheduling result for the SCGRA bitstream generation. 
//
// Version:
// Nov 25th 2011, initial version
// Sep 8th 2014, Clean up the code and rewrite with better coding style
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// ============================================================================

#ifndef _SCHEDULER_H_
#define _SCHEDULER_H_

#include <iomanip>
#include <map>
#include "Global_Def.h"
#include "Data_Flow_Graph.h"
#include "Coarse_Grain_Recon_Arch.h"

class Scheduler{
    public:
        Data_Flow_Graph* DFG;
        Coarse_Grain_Recon_Arch* CGRA;
        IO_Placement IO_Placement_Scheme;
        PE_Selection PE_Sel_Strategy;
        Scheduling_Strategy List_Scheduling_Strategy; 
        int Scheduling_Complete_Time;

        Scheduler(Data_Flow_Graph* _DFG, Coarse_Grain_Recon_Arch* _CGRA);
        void Scheduling();
        bool OP_Computation_Check();

    private:
        float Load_Balance_Factor;

        void Load_Parameters();
        void IO_Placing();
        void Init(Data_Flow_Graph* _DFG, Coarse_Grain_Recon_Arch* _CGRA);
        void OP_Ready_Set_Init(std::list<int> &OP_Ready_Set);
        void Load_Balance_Filter(std::list<int> &Candidates);
        void Recent_Busy_Filter(std::list<int> &Candidates);
        int Fetch_OP(const int &Src_OP_ID, const int &Target_PE_ID, const Exe_Mode &Mode);
        int Least_Recent_Used_Sel(const std::list<int> &Candidates);
        int Least_Ready_OP_Attached_Sel(const std::list<int> &Candidates, const std::list<int> &OP_Ready_Set);
        int Least_Cost_OP_Sel(const int &Sel_PE_ID, const std::list<int> &OP_Ready_Set);
        void List_Scheduling_OP_Pref();
        void List_Scheduling_PE_Pref();
        void List_Scheduling_PE_OP_Together();
        int Nearest_Attached_PE(const int &Src_OP_ID, const int &Target_PE_ID, int &Src_Ready_Time);
        int Load_From_IO_Buffer(const int &OP_ID, const Exe_Mode &Fun_Mode);
        int OP_Migration(const int &Start_Time, const int &Src_OP_ID, const std::list<int> &Routing_Path, const Exe_Mode &Mode);
        int OP_Exe(const int &Target_OP_ID, const std::vector<int> &Src_OP_IDs, const int &Target_PE_ID, const std::vector<int> &Arrival_Time, const Exe_Mode &Mode);
        void Target_PE_Refresh(const std::vector<int> &Src_OP_IDs, const int &Target_OP_ID, const int &Start_Time, const int &Target_PE_ID);
        void Target_OP_Refresh(const std::vector<int> &Src_OP_IDs, const int &Target_OP_ID, const int &Target_PE_ID, const int &Exe_Time);
        void Computation_Result_Dump();
        void OP_Ready_Set_Update(std::list<int> &OP_Ready_Set, const int &Sel_OP_ID);
        void PE_OP_Sel(int &Sel_PE_ID, int &Sel_OP_ID, const std::list<int> &Candidates, const std::list<int> &OP_Ready_Set);
        void Store_In_IO_Buffer(const int &OP_ID);
        void WR_To_IO_Buffer(const int &OP_ID, const int &Start_Time);
        bool Is_Scheduling_Completed();
        void Scheduling_Stat();
        void Data_Mem_Analysis();
        void Data_Mem_Addr_Gen(const std::vector<int> &Create_Time, const std::vector<int> &Destroy_Time, const int &Data_Mem_Capacity, const int &PE_ID);
        void Inst_Mem_Dump_Coe();
        void IO_Buffer_Dump_Coe();
        void Addr_Buffer_Dump_Mem();
        void Inst_Mem_Dump_Mem();
        void Load_IO_Mapping(std::vector<int> &Raw_Data, int &Row, int &Col);
        void Addr_Buffer_Dump_Coe();
        char Bin_To_Hex(char* Bin_Vec);
        int File_Line_Cnt(const std::string &fName);
        void Dec_To_Bin_Str(const int &Dec_Data, const int &Data_Width, std::string &Bin_Str);
        int Get_IO_Attached_PE_ID(const int &OP_ID);
        void Resize_Trace_Vector();

};

#endif

