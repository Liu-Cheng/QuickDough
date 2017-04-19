#ifndef __MMM_H__
#define __MMM_H__

#include "vertex.h"
#include "common.h"
#include <fstream>
#include <map>

#define N 8
#define L 16

class DFG{
    public:
        std::vector<Vertex*> vertices;

        // The mappers are used to enusre each input/output 
        // corresponds to only a single vertex in the graph.
        std::map<int, int> inIdxToVidx;
        std::map<int, int> coeffIdxToVidx;
        std::map<int, int> outIdxToVidx;

        void dump();
        void dumpDot(const std::string &fname);
        void verify();
        void compute();
        void kernelToDFG();

        DFG();

    private:
        double in[N+L-1];
        double coeff[N];
        double out[L];

        Vertex* createVertex(
                Vertex* v0, 
                Vertex* v1, 
                Vertex* v2, 
                Opcode op, 
                VertexType type
                );

        double getAvgDegree();
        int getInNum();
        int getImNum();
        int getOutNum();
        void iodump();
        void ioInit();
        void createLabelMap(std::map<int, std::string> &idToLabel);
};

#endif
