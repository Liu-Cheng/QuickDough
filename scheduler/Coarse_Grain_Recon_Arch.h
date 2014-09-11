// ============================================================================
// Fucnction Description:
// Describe the CGRA structure and function.
//
// Version:
// Nov 24th 2011, initial version
// Sep 9th 2014, Clean up the code
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com, liucheng@eee.hku.hk
// E.E.E department, The University of Hong Kong
//
// ============================================================================

#ifndef _COARSE_GRAIN_RECON_ARCH_H_
#define _COARSE_GRAIN_RECON_ARCH_H_

#include <iomanip>
#include "Global_Def.h"
#include "PE.h"

class Coarse_Grain_Recon_Arch{

    public:
        int CGRA_Scale;
        int Row;
        int Col;
        int IO_Buffer_Num;
        int Load_PE_ID;
        int Store_PE_ID;
        std::vector<PE*> PE_Array;

        Coarse_Grain_Recon_Arch();
        bool Is_Link_Existed(const int &src, const int &dst);
        int OP_Migration_Time(const int &start_time, const int &src, const int &dst);
        void Dynamic_Routing(const Routing_Alg &CGRA_Routing_Alg, const int &Src_Avail_Time, const int &Src_PE_ID, const int &Dst_PE_ID, std::list<int> &Routing_Path);
        void Static_Dijkstra_Routing(int Src, std::vector<std::list<int> > &Src_Routing_Path, std::vector<int> &Src_Routing_Dist);
        void Static_XY_Routing(int Src, std::vector<std::list<int> > &Src_Routing_Path, std::vector<int> &Src_Routing_Dist);
        void Static_Routing(const Routing_Alg &CGRA_Routing_Alg);
        int Get_Downstream_Index(const int &Src_PE_ID, const int &Dst_PE_ID);
        int Get_Upstream_Index(const int &Src_PE_ID, const int &Dst_PE_ID);
        int Get_Downstream_PE_ID(const int &Current_PE_ID, const int &Output_Mux);
        int Get_Upstream_PE_ID(const int &Current_PE_ID, const int &Input_Mux);
        void Link_Util_Analysis(const int &Start_Time, const int &End_Time);
        void Add_Link(const int &Src, const int &Dst);
        void Remove_Link(const int &Src, const int &Dst);
        ~Coarse_Grain_Recon_Arch();

    private:
        std::vector<std::vector<int> > CGRA_Adjacency_Mat;
        std::vector<std::vector<int> > CGRA_Routing_Dist;
        std::vector<std::vector<std::list<int> > > CGRA_Routing_Path;

        void Load_Parameters();
};

#endif
