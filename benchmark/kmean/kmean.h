#ifndef __SOBEL_H__
#define __SOBEL_H__

#include "vertex.h"
#include "common.h"
#include <fstream>
#include <map>
#include <cstdlib>

#define S 16 // # of data tuples
#define N 4  // # of centroids 
#define D 4  // # of data dimension

class DFG{
    public:
        std::vector<Vertex*> vertices;

        // The mappers are used to enusre each input/output 
        // corresponds to only a single vertex in the graph.
        std::map<int, int> samplesIdxToVidx;
        std::map<int, int> initIdxToVidx;
        std::map<int, int> sumIdxToVidx;
        std::map<int, int> numIdxToVidx;
        std::map<int, int> constsToVidx;

        void dump();
        void dumpDot(const std::string &fname);
        void verify();
        void compute();
        void kernelToDFG();
        void standardKmean();

        DFG();

    private:
        // input
        float consts[2];
        float samples[S][D];
        float initCentroids[N][D];

        // output
        float centroidSum[N][D];
        float centroidNum[N];
        float goldCentroidSum[N][D];
        float goldCentroidNum[N];

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
