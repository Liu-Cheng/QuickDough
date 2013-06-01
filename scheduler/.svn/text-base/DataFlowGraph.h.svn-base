// ============================================================================
// Fucnction Description:
// Directional graph implemented with adjacency list
// Provide better support for reading DFG which can be dumped from LLVM
//
// Version:
// 0.1      Nov 23th 2011
// 0.2      May 30th 2012
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// ============================================================================

#ifndef _DATA_FLOW_GRAPH_H_
#define _DATA_FLOW_GRAPH_H_

#include "Edge.h"
#include "Vertex.h"
#include "GlobalDef.h"
#include <cstdlib>
#include <map>

using namespace std;

class DataFlowGraph{
    public:
        int vertex_num;
        int input_vertex_num;
        int output_vertex_num;
        int inter_vertex_num;
        int edge_num;

        int min_input_degree;
        int max_input_degree;
        float average_input_degree;

        int min_output_degree;
        int max_output_degree;
        float average_output_degree;

        int min_vertex_priority;
        int max_vertex_priority;
        float average_vertex_priority;

        DFGType DFG_type;
        vector<Vertex*> DFG_vertex;
        vector<Edge*> DFG_edge;

        DataFlowGraph();    
        void ParentSet(const int &target_operation_id, vector<int> &source_operation_ids);
        void DFGCalculation(vector<int> &operation_result);

    private:
        void LoadParameter();
        void InstFormat();
        void DFGConstruct();
        bool IsVertexInDFG(const int &operation_id);
        bool IsEdgeInDFG(const int &src, const int &dst);
        void DFGScaleRefresh();
        void AverageDegree();
        void DFGGen();
        void RandomInstGen();
        void MatrixMultiplyInstGen(int m, int n, int p);
        void VertexPriorityAllocation();
        void VertexPriorityAnalysis();
        void OutputDegreeAnalysis();
        void InputDegreeAnalysis();
        int DFGExpand(string &DFG_inst_file, const int &kernel_size, const int &kernel_op_num);
};

#endif
