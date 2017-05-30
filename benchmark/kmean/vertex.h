#ifndef __VERTEX_H__
#define __VERTEX_H__

#include "common.h"
#include <vector>

struct Vertex{

    public:
        bool valid;
        int idx;
        Opcode op;
        float val;
        VertexType type;
        int inNgb[MAX_IN_DEG];
        void compute(const std::vector<Vertex*> &vertices);

        Vertex(int _idx, Opcode _op, VertexType _type);
        Vertex(bool _valid);

};

#endif
