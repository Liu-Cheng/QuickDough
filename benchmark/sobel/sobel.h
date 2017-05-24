#ifndef __SOBEL_H__
#define __SOBEL_H__

#include "vertex.h"
#include "common.h"
#include <fstream>
#include <map>
#include <cstdlib>

#define R 8
#define C 16

class DFG{
    public:
        std::vector<Vertex*> vertices;

        // The mappers are used to enusre each input/output 
        // corresponds to only a single vertex in the graph.
        std::map<int, int> figInIdxToVidx;
        std::map<int, int> figOutIdxToVidx;
        std::map<int, int> gxIdxToVidx;
        std::map<int, int> gyIdxToVidx;
        std::map<int, int> constToVidx;

        void dump();
        void dumpDot(const std::string &fname);
        void verify();
        void compute();
        void kernelToDFG();

        DFG();

    private:
        unsigned char figIn[R][C];
        int gx[3][3] = {{1, 0 , -1}, {2, 0, -2}, {1, 0, -1}};
        int gy[3][3] = {{1, 2, 1}, {0, 0, 0}, {-1, -2, -1}};
        int consts[] = {0, 255};
        unsigned char figOut[R][C];
        unsigned char goldOut[R][C];

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
