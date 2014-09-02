// ============================================================================
// Fucnction Description:
// Implement the list scheduling algorithm, provide statistics of the scheduling
// and dump scheduling result for the SCGRA bitstream generation. 
//
// Version:
// 0.1     Nov 25th 2011
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// ============================================================================
#ifndef _SCHEDULER_H_
#define _SCHEDULER_H_

#include "GlobalDef.h"
#include "DataFlowGraph.h"
#include "CoarseGrainReconArch.h"
#include <sstream>
#include <iomanip>
#include <map>

using namespace std;

class Scheduler{
    public:
        DataFlowGraph* DFG;
        CoarseGrainReconArch* CGRA;
        OutMemDataScheduling out_mem_data_scheduling;

        Scheduler(DataFlowGraph* init_DFG, CoarseGrainReconArch* init_CGRA);
        void Scheduling();
        bool OperationResultCheck();
        ofstream fTrace;
        int last_op_store_time;

    private:
        void LoadParameter();
        void InputOperationScheduling();
        void SchedulerInit(DataFlowGraph* init_DFG, CoarseGrainReconArch* init_CGRA);
        void ListSchedulingAlgorithmOPFirst();
        void ListSchedulingAlgorithmPEFirst();
        int StaticOperationSelection();
        int DynamicOperationSelection();
        int PESelection(const int &target_operation_id, const vector<int> &src_operation_ids, vector<list<int> > &source_routing_paths, vector<int> &source_operation_ready_time);
        int NearestAttachedPE(const int &src_operation_id,const int &target_PE_id, int &src_start_time);
        void FetchSourceOperation(const int &target_PE_id, const vector<int> &src_operation_ids, const vector<list<int> > &source_routing_paths, const vector<int> &source_start_time, vector<int> &source_ready_time);
        int OperationTransmission(const int &start_time, const int &src_operation_id, const list<int> &routing_path, const ExecutionMode &mode);
        int OperationExecution(const int &target_operation_id, const vector<int> &src_operation_ids, const int &target_PE_id, const vector<int> &arrival_time, const ExecutionMode &mode);
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
        int LoadDataFromOutMem(const int &operation_id, const ExecutionMode &mode);
        void StoreDataInOutMem(const int &operation_id);
        void FromDSTToOutMem(const int &operation_id, const int &start_time);
        int DistCal(const int &src_op, const int &dst_op);
        int LeastActivePESelection(const list<int> &candidates);
        void OPReadySetInitialization(list<int> &op_ready_set);
        void OPReadySetUpdate(list<int> &op_ready_set, const int &selected_op_id);
        int LeastCostOPSelection(const int &selected_PE_id, const list<int> &op_ready_set);
        void PEOPPairSelection(int &selected_PE_id, int &selected_op_id, const list<int> &candidates, const list<int> &op_ready_set);
        void ListSchedulingAlgorithmPEOPTogether();
        int FetchOP(const int &src_op_id, const int &target_PE_id, const ExecutionMode &mode); 
        void LoadBalancePEFilter(list<int> &candidates, const vector<int> &executed_op_num);
        void ActivePEFilter(list<int> &candidates);
        int LeastReadyOpAttachedPESelection(const list<int> &candidates, const list<int> &op_ready_set);
        void Bin2Mif(const string &BinFileName, const string &HexFileName, const int &DataWidth);
        void Bin2HeadFile(const string &BinFileName, const string &HeadFileName, const string &ArrayName, const int &DataWidth);
        int FileLineCount(const string &FileName);
        void LoadIOMapping(std::vector<int> &raw_data, int &row, int &col);
        char Bin2Hex(char* BinVec);
        void AddrBufferDumpMem();
};

#endif

