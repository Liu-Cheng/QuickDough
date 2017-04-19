#ifndef __MMM_H__
#define __MMM_H__

#include "vertex.h"
#include "common.h"
#include <fstream>
#include <map>

#define M 8
#define N 4

class DFG{
    public:
        std::vector<Vertex*> vertices;

        // The mappers are used to enusre each input/output 
        // corresponds to only a single vertex in the graph.
        std::map<int, int> aInIdxToVidx;
        std::map<int, int> bInIdxToVidx;
        std::map<int, int> cOutIdxToVidx;

        void dump();
        void dumpDot(const std::string &fname);
        void verify();
        void compute();
        void kernelToDFG();

        DFG();

    private:
        double aIn[M][N];
        double bIn[N];
        double cOut[M];

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
