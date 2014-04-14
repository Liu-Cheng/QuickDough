// ============================================================================
// Fucnction Description:
// Describe the CGRA structure and function.
//
// Version:
// 0.1      Nov 24th 2011
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com, liucheng@eee.hku.hk
// E.E.E department, The University of Hong Kong
//
// ============================================================================

#ifndef _COARSE_GRAIN_RECON_ARCH_H_
#define _COARSE_GRAIN_RECON_ARCH_H_

#include "GlobalDef.h"
#include "PE.h"
#include <iomanip>

using namespace std;

class CoarseGrainReconArch{
    public:
        RoutingAlgorithm routing_algorithm;
        vector<PE*> PE_array;
        vector<vector<int> > PE_pair_distance;
        vector<vector<list<int> > > PE_pair_path;
        int row;
        int col;

        CoarseGrainReconArch();
        int AverageDegree();
        void AddLink(const int &src, const int &dst);
        void RemoveLink(const int &src, const int &dst);
        void PEPairInfo();
        bool IsLinkExisted(const int &src, const int &dst);
        int OperationMigrationTime(const int &start_time, const int &src, const int &dst);
        void PossiblePath(const int &start_time, const int &src, const int &dst, list<int> &routing_path);
        void ReadPathFile(const int &src, const int &dst, list<int> &routing_path);
        void MeshPath(const int &src, const int &dst, list<int> &routing_path);
        void DijkstraPath(const int &src, const int &dst, list<int> &routing_path);
        void SimulationPath(const int &start_time, const int &src, const int &dst, list<int> &routing_path);
        int GetChildID(const int &src, const int &dst);
        int GetParentID(const int &src, const int &dst);
        int GetChildPEID(const int &PE_id, const int &mux_output);
        int GetParentPEID(const int &PE_id, const int &mux_input);
        void LinkUtilizationAnalysis(const int &begin_time, const int &end_time);
        ~CoarseGrainReconArch();

    private:
        vector<vector<int> > adjacency_matrix;
        void LoadParameter();
        void InoutDegreeRefresh();
};

#endif
