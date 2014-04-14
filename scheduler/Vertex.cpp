// ============================================================================
// Algorithm Description:
// Initalization of vertex
//
// Version:
// 0.1      Dec 2nd 2011
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// ============================================================================

#include "Vertex.h"

using namespace std;

Vertex::Vertex(int _vertex_id){
    vertex_id=_vertex_id;
    vertex_value=NaN;
    vertex_bram_addr=NaN;
    vertex_bram_id=NaN;
    vertex_type=InputData;
    vertex_type2=BeforeBreakPoint;
    vertex_attribute.vertex_cost=1;
    vertex_attribute.opcode=NC;
    vertex_attribute.execution_PE_id=NaN;
    vertex_attribute.scheduling_priority=NaN;
    vertex_attribute.operation_avail_time=NaN;
    vertex_attribute.vertex_state=DataUnavail;
    LoadParameter();
}

Vertex::Vertex(){
    vertex_id=NaN;
    vertex_value=NaN;
    vertex_bram_addr=NaN;
    vertex_bram_id=NaN;
    vertex_type=InputData;
    vertex_type2=BeforeBreakPoint;
    vertex_attribute.vertex_cost=1;
    vertex_attribute.opcode=NC;
    vertex_attribute.execution_PE_id=NaN;
    vertex_attribute.scheduling_priority=NaN;
    vertex_attribute.operation_avail_time=NaN;
    vertex_attribute.vertex_state=DataUnavail;
    LoadParameter();
}

void Vertex::LoadParameter(){}

bool Vertex::IsVertexAssigned(){
    return vertex_attribute.vertex_state==DataAvail;
}
