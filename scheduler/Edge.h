// ============================================================================
// Fucnction Description:
// This is the edge of the graph, and you can add additional attributes to the 
// Edge attribute.
//
// Version:
// 0.1      Nov 23th 2011
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// ============================================================================
#ifndef _EDGE_H_
#define _EDGE_H_

#include "GlobalDef.h"

using namespace std;

struct EdgeAttribute{
    int edge_cost;
};

struct Edge{
    public:
        int edge_id;
        int edge_src;
        int edge_dst;
        EdgeAttribute edge_attribute;
        Edge(const int &_edge_id);

    private:
        void LoadParameter();
    };

#endif
