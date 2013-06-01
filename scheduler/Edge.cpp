// ============================================================================
// Algorithm Description:
// Edge initalization and future extension
//
// Version:
// 0.1  Dec 3rd 2011
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// ============================================================================

#include "Edge.h"

using namespace std;

Edge::Edge(const int &_edge_id){
    edge_id=_edge_id;
    edge_src=NaN;
    edge_dst=NaN;
    edge_attribute.edge_cost=1;
    LoadParameter();
}

void Edge::LoadParameter() {}
