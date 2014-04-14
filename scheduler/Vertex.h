// ============================================================================
// Fucnction Description:
// This is the vertex of the graph. 
//
// Version:
// 0.1 Nov 23th 2011
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// ============================================================================
#ifndef _VERTEX_H_
#define _VERTEX_H_

#include "GlobalDef.h"

using namespace std;

struct VertexAttribute{
    int vertex_cost;
    OPCODE opcode;
    int scheduling_priority;
    int execution_PE_id;
    int operation_avail_time;
    VertexState vertex_state;
};

struct AttachHistory{
    int attached_PE_id;
    int attached_time;
};

struct Vertex{
    public:
        int vertex_id;
        int vertex_value;
        int vertex_bram_addr;
        int vertex_bram_id;
        vector<Vertex*> parents;
        vector<Vertex*> children;
        VertexType vertex_type;
        VertexType2 vertex_type2;
        VertexAttribute vertex_attribute;
        list<AttachHistory> attach_history;

        Vertex(int _vertex_id);
        Vertex();
        bool IsVertexAssigned();
        ~Vertex(){};

    private:
        void LoadParameter();
};

#endif
