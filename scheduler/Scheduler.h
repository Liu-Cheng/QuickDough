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

#include <sstream>
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
        ofstream fTrace;

        Scheduler(Data_Flow_Graph* _DFG, Coarse_Grain_Recon_Arch* _CGRA);
        void Scheduling();
        bool Operation_Result_Check();

    private:
        float Load_Balance_Factor;

        void Load_Parameters();
        void Init(Data_Flow_Graph* _DFG, Coarse_Grain_Recon_Arch* _CGRA);
        void OP_Ready_Set_Init(std::list<int> &OP_Ready_Set);
        void Load_Balance_Filter(std::list<int> &Candidates);
        void Recent_Busy_Filter(std::list<int> &Candidates);
        int Least_Recent_Used_Sel(const std::list<int> &Candidates);
        int Least_Ready_OP_Attached_Sel(const std::list<int> &Candidates, const std::list<int> &OP_Ready_Set);
        int Least_Cost_OP_Sel(const int &Sel_PE_ID, const std::list<int> &OP_Ready_Set);
        void List_Scheduling_OP_Pref();
        void List_Scheduling_PE_Pref();
        void List_Scheduling_PE_OP_Combined();
        int Nearest_Attached_PE(const int &Src_OP_ID, const int &Target_PE_ID, int &Src_Ready_Time);
        int Fetch_OP(const int &Src_OP_ID, const int &Target_PE_ID, const Exe_Mode &Fun_Mode); 
        int Load_From_IO_Buffer(const int &OP_ID, const Exe_Mode &Fun_Mode);

        void InputOperationScheduling();
        int Static_OP_Sel();
        int Dynamic_OP_Sel();
        int PE_Sel(const int &Target_OP_ID, const std::vector<int> &Src_OP_IDs, std::vector<std::list<int> > &Src_OP_Routing_Paths, vector<int> &Src_OP_Ready_Time);
        void FetchSourceOperation(const int &target_PE_id, const vector<int> &src_operation_ids, const vector<list<int> > &source_routing_paths, const vector<int> &source_start_time, vector<int> &source_ready_time);
        int OP_Transmission(const int &Start_Time, const int &Src_OP_ID, const std::list<int> &Routing_Path, const ExecutionMode &mode);
        int OP_Execution(const int &target_operation_id, const vector<int> &src_operation_ids, const int &target_PE_id, const vector<int> &arrival_time, const ExecutionMode &mode);
        void PEonPathRefresh(const int &src_operation_id, const int &start_time, const vector<int> &routing_paths);
        void TargetPERefresh(const vector<int> &src_operation_ids, const int &target_operation_id, const int &start_time, const int &target_PE_id);
        void TargetOperationRefresh(const vector<int> &src_operation_ids, const int &target_operation_id, const int &target_PE_id, const int &execution_time);
        void PESelectionFilter(vector<int> &candidate_PE_id, const int &target_operation_id, const vector<int> &src_operation_ids, const PESelectionFilteringType &filtering_type);
        void UtilizationFilter(vector<int> &candidate_PE_id, const vector<float> &utilization_per_PE, const float &acceptible_percentile);
        void SchedulingResultCollection(vector<int> &operation_result);
        void AddrGen(const vector<int> &birth_time, const vector<int> &die_time, const int &memCapacity, const int &PE_id);
        int SchedulingStat();
        bool SchedulingIsCompleted();
        void InstructionDumpCoe(int final_execution_time);
        void InstructionDumpMem();
        void OutsideAddrMemoryDumpCoe(int final_execution_time);
        void DataMemoryAnalysis();
        void DataMemoryDumpMem();
        void SchedulingResultDump();
        void DataMemoryInit(map<int, int> &OpToAddr, const int &PE_id, const int &memory_capacity); 
        void StoreDataInOutMem(const int &operation_id);
        void FromDSTToOutMem(const int &operation_id, const int &start_time);
        int DistCal(const int &src_op, const int &dst_op);
        void OPReadySetUpdate(list<int> &op_ready_set, const int &selected_op_id);
        void PEOPPairSelection(int &selected_PE_id, int &selected_op_id, const list<int> &candidates, const list<int> &op_ready_set);
        void ListSchedulingAlgorithmPEOPTogether();
        void Bin2Mif(const string &BinFileName, const string &HexFileName, const int &DataWidth);
        void Bin2HeadFile(const string &BinFileName, const string &HeadFileName, const string &ArrayName, const int &DataWidth);
        int FileLineCount(const string &FileName);
        void LoadIOMapping(std::vector<int> &raw_data, int &row, int &col);
        char Bin2Hex(char* BinVec);
        std::string Dec_To_Bin_Str(const int &Dec_Data, const int &Data_Width);
        void AddrBufferDumpMem();
};

#endif

