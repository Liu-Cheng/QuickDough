#include "kmean.h"

DFG::DFG(){
    ioInit();
    std::cout << "DFG is initialized." << std::endl;
}

void DFG::ioInit(){

    consts[0] = 0;
    consts[1] = 1;

    // input data set
    for(int i = 0; i < S; i++){
        for(int j = 0; j < D; j++){
            samples[i][j] = (rand()%100)/10.0;
        }
    }

    // Choose the first few nodes as initial centroids
    for(int i = 0; i < N; i++){
        for(int j = 0; j < D; j++){
            initCentroids[i][j] = samples[i][j];
        }
    }

    // centroidNum and centroidSum
    for(int j = 0; j < N; j++){
        centroidNum[j] = 0;
        goldCentroidNum[j] = 0;
        for(int k = 0; k < D; k++){
            centroidSum[j][k] = 0;
            goldCentroidSum[j][k] = 0;
        }
    }

}

Vertex* DFG::createVertex(
        Vertex* v0, 
        Vertex* v1, 
        Vertex* v2, 
        Opcode op, 
        VertexType type)
{
    int idx = GL::getIdx();
    Vertex* vptr = new Vertex(idx, op, type);

    if(v0 != NULL){
        vptr->inNgb[0] = v0->idx;
    }
    if(v1 != NULL){
        vptr->inNgb[1] = v1->idx;
    }
    if(v2 != NULL){
        vptr->inNgb[2] = v2->idx;
    }

    return vptr;
}

void DFG::kernelToDFG(){

    // samples[S][D]
    for(int i = 0; i < S; i++){
        for(int j = 0; j < D; j++){
            int idx = GL::getIdx();
            Opcode op = MULADD; 
            VertexType type = IN;
            Vertex* vptr = new Vertex(idx, op, type);
            vptr->val = samples[i][j];
            vertices.push_back(vptr);
            int samplesIdx = i * D + j;
            samplesIdxToVidx[samplesIdx] = idx;
        }
    }

    // initCentroid
    for(int i = 0; i < N; i++){
        for(int j = 0; j < D; j++){
            int idx = GL::getIdx();
            Opcode op = MULADD;
            VertexType type = IN;
            Vertex* vptr = new Vertex(idx, op, type);
            vptr->val = initCentroids[i][j];
            vertices.push_back(vptr);
            int initIdx = i * D + j;
            initIdxToVidx[initIdx] = idx;
        }
    }

    // consts
    for(auto c : consts){
        int idx = GL::getIdx();
        Opcode op = MULADD;
        VertexType type = IN;
        Vertex* vptr = new Vertex(idx, op, type);
        vptr->val = c;
        vertices.push_back(vptr);
        constsToVidx[c] = idx;
    }
    
    // Explore all the data and assign each item to a centroid
    Vertex* sum[N][D];
    Vertex* num[N];
    for(int i = 0; i < S; i++){

        std::map<int, int> distIdxToVidx;
        for(int j = 0; j < N; j++){
            Vertex* vsample = vertices[samplesIdxToVidx[i * D + 0]];
            Vertex* vinit = vertices[initIdxToVidx[j * D + 0]];
            Vertex* vsub = createVertex(vsample, vinit, NULL, SUB, IM);
            vertices.push_back(vsub);
            Vertex* vacc = createVertex(vsub, vsub, NULL, MUL, IM);
            vertices.push_back(vacc);
            for(int k = 1; k < D; k++){
                Vertex* vsk = vertices[samplesIdxToVidx[i * D + k]];
                Vertex* vik = vertices[initIdxToVidx[j * D + k]];
                Vertex* vsubTmp = createVertex(vsk, vik, NULL, SUB, IM);
                vertices.push_back(vsubTmp);
                Vertex* vmulTmp = createVertex(vsubTmp, vsubTmp, NULL, MUL, IM);
                vertices.push_back(vmulTmp);
                vacc = createVertex(vacc, vmulTmp, NULL, ADD, IM);
                vertices.push_back(vacc);
                if(k == D - 1){
                    distIdxToVidx[j] = vacc->idx;
                }
            }
        }

        // analyze max bitmap
        Vertex* cp[N][N-1];
        for(int x = 0; x < N; x++){
            for(int y = 0; y < N; y++){
                if(x == y) continue;
                Vertex* vx = vertices[distIdxToVidx[x]];
                Vertex* vy = vertices[distIdxToVidx[y]];
                if(x < y){
                    cp[x][y-1] = createVertex(vx, vy, NULL, GET, IM);
                    vertices.push_back(cp[x][y-1]);
                }
                else{
                    cp[x][y] = createVertex(vx, vy, NULL, GT, IM);
                    vertices.push_back(cp[x][y]);
                }
            }
        }

        std::map<int, int> isMaxIdxToVidx;
        for(int x = 0; x < N; x++){
            Vertex* tmp1 = cp[x][0];
            for(int y = 1; y < N -1; y++){
                Vertex* tmp2 = cp[x][y];
                tmp1 = createVertex(tmp1, tmp2, NULL, AND, IM);
                vertices.push_back(tmp1);
                if(y == N-2){
                    isMaxIdxToVidx[x] = tmp1->idx;
                }
            }
        }

        // Update the number of data assigned to each centroid
        for(int j = 0; j < N; j++){
            Vertex* sel = vertices[isMaxIdxToVidx[j]];
            Vertex* c1 = vertices[constsToVidx[1]];
            Vertex* c0 = vertices[constsToVidx[0]];
            Vertex* addNum = createVertex(sel, c1, c0, PHI, IM);
            vertices.push_back(addNum);
            if(i == 0){
                num[j] = addNum; 
            }
            else if(i < S-1){
                num[j] = createVertex(addNum, num[j], NULL, ADD, IM);
                vertices.push_back(num[j]);
            }
            else{
                num[j] = createVertex(addNum, num[j], NULL, ADD, OUT);
                vertices.push_back(num[j]);
                numIdxToVidx[j] = num[j]->idx;
            }
        }

        // Accumulate the data assigned to each centroid
        for(int j = 0; j < N; j++){
            Vertex* sel = vertices[isMaxIdxToVidx[j]];
            for(int k = 0; k < D; k++){
                Vertex* data = vertices[samplesIdxToVidx[i * D + k]];
                Vertex* c0 = vertices[constsToVidx[0]];
                Vertex* toBeAdded = createVertex(sel, data, c0, PHI, IM);
                vertices.push_back(toBeAdded);
                if(i == 0){
                    sum[j][k] = toBeAdded;
                }
                else if(i < S-1){
                    sum[j][k] = createVertex(sum[j][k], toBeAdded, NULL, ADD, IM);
                    vertices.push_back(sum[j][k]);
                }
                else{
                    sum[j][k] = createVertex(sum[j][k], toBeAdded, NULL, ADD, OUT);
                    vertices.push_back(sum[j][k]);
                    sumIdxToVidx[j * D + k] = sum[j][k]->idx;
                }
            }
        }
    }
}

void DFG::iodump(){

    std::string fName = "./dump/io.h";
    std::ofstream fhandle;
    fhandle.open(fName.c_str());
    if(!fhandle.is_open()){
        std::cout << fName << "open error!" << std::endl;
        exit(EXIT_FAILURE);
    }

    fhandle << "#ifndef _IO_H_" << std::endl;
    fhandle << "#define _IO_H_" << std::endl << std::endl;
    fhandle << "float samples[" << S << "][" << D << "];" << std::endl;
    fhandle << "float initCentroids[" << N << "][" << D << "];" << std::endl;

    fhandle << "int centroidNum[" << N << "];" << std::endl;
    fhandle << "float centroidSum[" << N << "][" << D << "];" << std::endl;
    fhandle << std::endl << "#endif" << std::endl;
    fhandle.close();

}

// As the vertices are sequentially generated, the vertices created will 
// not depend on any vertices created latter. Thus we can sequentially explore 
// the array for computing directly.
void DFG::compute(){

    for(auto it = vertices.begin(); it != vertices.end(); it++){
        if((*it)->type != IN){
            (*it)->compute(vertices);
        }
    }

    for(int i = 0; i < N; i++){
        for(int j = 0; j < D; j++){
            int idx = sumIdxToVidx[i * D + j];
            centroidSum[i][j] = vertices[idx]->val;
        }
    }

    for(int i = 0; i < N; i++){
        int idx = numIdxToVidx[i];
        centroidNum[i] = vertices[idx]->val;
    }

}


void DFG::verify(){

    // calculate the standard sobel output
    standardKmean();

    // Compare the result.
    for(int i = 0; i < N; i++){
        if(goldCentroidNum[i] != centroidNum[i]){
            HERE;
            std::cout << "DFG computation is wrong!" << std::endl;
            std::cout << "expectedOut[" << i << "] = " << goldCentroidNum[i] << " ";
            std::cout << "computedOut[" << i << "] = " << centroidNum[i] << " ";
            std::cout << std::endl;
            exit(EXIT_FAILURE);
        }
        for(int j = 0; j < D; j++){
            if(goldCentroidSum[i][j] != centroidSum[i][j]){
                HERE;
                std::cout << "DFG computation is wrong!" << std::endl;
                std::cout << "expectedOut[" << i << "][" << j << "] = " << goldCentroidSum[i][j] << " ";
                std::cout << "computedOut[" << i << "][" << j << "] = " << centroidSum[i][j] << " ";
                std::cout << std::endl;
                exit(EXIT_FAILURE);
            }
        }
    }

    std::cout << "DFG verification passed!" << std::endl;

}

void DFG::dump(){

    // Dump DFG
    std::ostringstream oss;
    std::ofstream fhandle;
    oss << "./dump/dfg.s";
    fhandle.open(oss.str().c_str());
    if(!fhandle.is_open()){
        std::cout << "Failed to open" << oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    std::map<Opcode, int> opStat;
    for(auto it = vertices.begin(); it != vertices.end(); it++){
        if((*it)->type != IN){
            fhandle << (*it)->idx << " ";
            fhandle << (*it)->op << " ";
            if((*it)->inNgb[0] != -1){
                fhandle << (*it)->inNgb[0] << " ";
            }

            if((*it)->inNgb[1] != -1){
                fhandle << (*it)->inNgb[1] << " ";
            }

            if((*it)->inNgb[2] != -1){
                fhandle << (*it)->inNgb[2] << " ";
            }
            fhandle << std::endl;

            Opcode op = (*it)->op;
            if(opStat.find(op) == opStat.end()){
                opStat[op] = 1;
            }
            else{
                opStat[op] += 1;
            }
        }
    }
    fhandle.close();

    // Dump opcode Statistic information
    oss.clear();
    oss.str("");
    oss << "./dump/opcode.txt";
    fhandle.open(oss.str().c_str());
    if(!fhandle.is_open()){
        std::cout << "Failed to open" << oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    for(auto it = opStat.begin(); it != opStat.end(); it++){
        fhandle << it->first << std::endl;;
    }
    fhandle.close();

    // Dump DFG statistic information
    oss.clear();
    oss.str("");
    oss << "./dump/Stat.txt";
     fhandle.open(oss.str().c_str());
    if(!fhandle.is_open()){
        std::cout << "Failed to open" <<oss.str() << "\n";
        exit(EXIT_FAILURE);
    }
    
    fhandle << "DFG Statistic:" << std::endl;
    fhandle << "vertexNum: " << vertices.size() << std::endl;
    fhandle << "inNum " << getInNum() << std::endl;
    fhandle << "outNum " << getOutNum() << std::endl;
    fhandle << "imNum " << getImNum() << std::endl;
    fhandle << "avgDegree " << getAvgDegree() << std::endl;
    fhandle.close();

    // io dump
    iodump();

}

int DFG::getInNum(){
    int num = 0;
    for(auto it = vertices.begin(); it != vertices.end(); it++){
        if((*it)->type == IN){
            num++;
        }
    }
    return num;
}

int DFG::getOutNum(){
    int num = 0;
    for(auto it = vertices.begin(); it != vertices.end(); it++){
        if((*it)->type == OUT){
            num++;
        }
    }
    return num;
}

int DFG::getImNum(){
    int num = 0;
    for(auto it = vertices.begin(); it != vertices.end(); it++){
        if((*it)->type == IM){
            num++;
        }
    }
    return num;
}

double DFG::getAvgDegree(){
    int sum = 0;
    for(auto it = vertices.begin(); it != vertices.end(); it++){
        if((*it)->inNgb[0] != -1){
            sum++;
        }

        if((*it)->inNgb[1] != -1){
            sum++;
        }

        if((*it)->inNgb[2] != -1){
            sum++;
        }
    }
    
    double avgDegree = 1.0 * sum/(getImNum() + getOutNum());

    return avgDegree;
}


void DFG::dumpDot(const std::string& fname){

    std::map<int, std::string> idToLabel;
    createLabelMap(idToLabel);

    std::ofstream fhandle(fname.c_str());
    if(!fhandle.is_open()){
        HERE;
        std::cout << "Failed to open " << fname.c_str() << "." << std::endl;
        exit(EXIT_FAILURE);
    }

    // created directed graph
    fhandle << "digraph G {" << std::endl;
    for(auto it = vertices.begin(); it != vertices.end(); it++){
        fhandle << (*it)->idx << "[label=\"" << idToLabel[(*it)->idx] << "\"];" << std::endl;
    }
    for(auto it = vertices.begin(); it != vertices.end(); it++){
        if((*it)->inNgb[0] != -1){
            fhandle << (*it)->inNgb[0] << " -> "; 
            fhandle << (*it)->idx << ";" << std::endl;
        }

        if((*it)->inNgb[1] != -1){
            fhandle << (*it)->inNgb[1] << " -> ";
            fhandle << (*it)->idx << ";" << std::endl;
        }

        if((*it)->inNgb[2] != -1){
            fhandle << (*it)->inNgb[2] << " -> ";
            fhandle << (*it)->idx << ";" << std::endl;
        }
    }

    fhandle << "}" << std::endl;

    fhandle.close();

}

void DFG::createLabelMap(std::map<int, std::string> &idToLabel){
    for(int i = 0; i < S; i++){
        for(int j = 0; j < D; j++){
            std::ostringstream oss;
            oss << "samples[" << i << "][" << j << "]";
            int idx = i * D + j;
            int vidx = samplesIdxToVidx[idx];
            idToLabel[vidx] = oss.str();
        }
    }

    for(int i = 0; i < N; i++){
        for(int j = 0; j < D; j++){
            std::ostringstream oss;
            oss << "initCentroids[" << i << "][" << j << "]";
            int idx = i * D + j;
            int vidx = initIdxToVidx[idx];
            idToLabel[vidx] = oss.str();
        }
    }

    for(int i = 0; i < N; i++){
        for(int j = 0; j < D; j++){
            std::ostringstream oss;
            oss << "centroidSum[" << i << "][" << j <<"]";
            int idx = i * D + j;
            int vidx = sumIdxToVidx[idx];
            idToLabel[vidx] = oss.str();
        }
    }

    for(int i = 0; i < N; i++){
        std::ostringstream oss;
        oss << "centroidNum[" << i << "]";
        int vidx = numIdxToVidx[i];
        idToLabel[vidx] = oss.str();
    }
    
    for(int i = 0; i < 2; i++){
        std::ostringstream oss;
        oss << consts[i];
        int vidx = constsToVidx[consts[i]];
        idToLabel[vidx] = oss.str();
    }

    for(auto it = vertices.begin(); it!= vertices.end(); it++){
        if((*it)->type == IM){
            std::ostringstream oss;
            oss << (*it)->op;
            idToLabel[(*it)->idx] = oss.str();
        }
    }

}

void DFG::standardKmean(){

    // Explore all the data and assign each item to a centroid
    for(int i = 0; i < S; i++){

        float dist[N];
        for(int j = 0; j < N; j++){
            dist[j] = 0;
            for(int k = 0; k < D; k++){
                dist[j] += (samples[i][k] - initCentroids[j][k]) * (samples[i][k] - initCentroids[j][k]);
            }
        }

        // analyze max bitmap
        bool isMax[N];
        if(N == 2){
            isMax[0] = (dist[0] >= dist[1]);
            isMax[1] = (dist[1] > dist[0]);
        }
        else if(N == 3){
            isMax[0] = (dist[0] >= dist[1]) && (dist[0] >= dist[2]);
            isMax[1] = (dist[1] > dist[0]) && (dist[1] >= dist[2]);
            isMax[2] = (dist[2] > dist[0]) && (dist[2] > dist[1]);
        }
        else if(N == 4){
            isMax[0] = (dist[0] >= dist[1]) && (dist[0] >= dist[2]) && (dist[0] >= dist[3]);
            isMax[1] = (dist[1] > dist[0]) && (dist[1] >= dist[2]) && (dist[1] >= dist[3]);
            isMax[2] = (dist[2] > dist[0]) && (dist[2] > dist[1]) && (dist[2] >= dist[3]);
            isMax[3] = (dist[3] > dist[0]) && (dist[3] > dist[1]) && (dist[3] > dist[2]);

        }
        else if(N == 5){
            isMax[0] = (dist[0] >= dist[1]) && (dist[0] >= dist[2]) && (dist[0] >= dist[3]) && (dist[0] >= dist[4]);
            isMax[1] = (dist[1] > dist[0]) && (dist[1] >= dist[2]) && (dist[1] >= dist[3]) && (dist[1] >= dist[4]);
            isMax[2] = (dist[2] > dist[0]) && (dist[2] > dist[1]) && (dist[2] >= dist[3]) && (dist[2] >= dist[4]);
            isMax[3] = (dist[3] > dist[0]) && (dist[3] > dist[1]) && (dist[3] > dist[2]) && (dist[3] >= dist[4]);
            isMax[4] = (dist[4] > dist[0]) && (dist[4] > dist[1]) && (dist[4] > dist[2]) && (dist[4] > dist[3]);
        }
        else if(N == 6){
            isMax[0] = (dist[0] >= dist[1]) && (dist[0] >= dist[2]) && (dist[0] >= dist[3]) && (dist[0] >= dist[4]) && (dist[0] >= dist[5]);
            isMax[1] = (dist[1] > dist[0]) && (dist[1] >= dist[2]) && (dist[1] >= dist[3]) && (dist[1] >= dist[4]) && (dist[1] >= dist[5]);
            isMax[2] = (dist[2] > dist[0]) && (dist[2] > dist[1]) && (dist[2] >= dist[3]) && (dist[2] >= dist[4]) && (dist[2] >= dist[5]);
            isMax[3] = (dist[3] > dist[0]) && (dist[3] > dist[1]) && (dist[3] > dist[2]) && (dist[3] >= dist[4]) && (dist[3] >= dist[5]);
            isMax[4] = (dist[4] > dist[0]) && (dist[4] > dist[1]) && (dist[4] > dist[2]) && (dist[4] > dist[3]) && (dist[4] >= dist[5]);
            isMax[5] = (dist[5] > dist[0]) && (dist[5] > dist[1]) && (dist[5] > dist[2]) && (dist[5] > dist[3]) && (dist[5] > dist[4]);
        }
        else{
            HERE;
            std::cout << "N is not supported." << std::endl;
        }
        
        // Update the number of data assigned to each centroid
        for(int j = 0; j < N; j++){
            if(isMax[j]){
                goldCentroidNum[j] += 1;
            }
            else{
                goldCentroidNum[j] += 0;
            }
        }

        // Accumulate the data assigned to each centroid
        for(int j = 0; j < N; j++){
            for(int k = 0; k < D; k++){
                if(isMax[j]){
                    goldCentroidSum[j][k] += samples[i][k];
                }
                else{
                    goldCentroidSum[j][k] += 0;
                }
            }
        }

    }
}
