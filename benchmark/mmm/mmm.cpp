#include "mmm.h"

DFG::DFG(){
    ioInit();

    // More initialization can be added here.
    std::cout << "DFG is initialized." << std::endl;
}

void DFG::ioInit(){

    for(int i = 0; i < M; i++){
        for(int j = 0; j < N; j++){
            aIn[i][j] = (rand()%100)/100.0;
        }
    }

    for(int i = 0; i < N; i++){
        for(int j = 0; j < P; j++){
            bIn[j][i] = (rand()%100)/100.0;
        }
    }

    for(int i = 0; i < M; i++){
        for(int j = 0; j < P; j++){
            cOut[i][j] = 0; 
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
    // Create input vertices of DFG.
    for(int i = 0; i < M; i++){
        for(int j = 0; j < N; j++){
            int idx = GL::getIdx();
            Opcode op = MULADD; // meaningless
            VertexType type = IN;
            Vertex* vptr = new Vertex(idx, op, type);
            vptr->val = aIn[i][j];
            vertices.push_back(vptr);
            int aInIdx = i * N + j;
            aInIdxToVidx[aInIdx] = idx;
        }
    }

    for(int i = 0; i < N; i++){
        for(int j = 0; j < P; j++){
            int idx = GL::getIdx();
            Opcode op = MULADD;
            VertexType type = IN;
            Vertex* vptr = new Vertex(idx, op, type);
            vptr->val = bIn[i][j];
            vertices.push_back(vptr);
            int bInIdx = i * P + j;
            bInIdxToVidx[bInIdx] = idx;
        }
    }

    for(int i = 0; i < M; i++){
        for(int j = 0; j < P; j++){
            Vertex* v0 = vertices[aInIdxToVidx[i*N]];
            Vertex* v1 = vertices[bInIdxToVidx[j]];
            Vertex* vptr = createVertex(v0, v1, NULL, MUL, IM);
            vertices.push_back(vptr);

            Vertex* vtmp = new Vertex(false);
            for(int k = 1; k < N; k++){
                v0 = vertices[aInIdxToVidx[i*N+k]];
                v1 = vertices[bInIdxToVidx[k*P+j]];
                Vertex* vmul = createVertex(v0, v1, NULL, MUL, IM);
                vertices.push_back(vmul);
                
                // Create output vertices
                if(k == N -1){
                    Vertex* vout = createVertex(vmul, vtmp, NULL, ADD, OUT);
                    vout->val = cOut[i][j];
                    vertices.push_back(vout);
                    cOutIdxToVidx[i*P+j] = vout->idx;
                }
                else if(k == 1){
                    vtmp = createVertex(vptr, vmul, NULL, ADD, IM);
                    vertices.push_back(vtmp);
                }
                else{
                    vtmp = createVertex(vtmp, vmul, NULL, ADD, IM);
                    vertices.push_back(vtmp);
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
    fhandle << "int aIn[" << M << "][" << N << "];" << std::endl;
    fhandle << "int bIn[" << N << "][" << P << "];" << std::endl;
    fhandle << "int cOut[" << M << "][" << P << "];" << std::endl;

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

}


void DFG::verify(){

    double computedCout[M][M];
    double expectedCout[M][M];
    for(int i = 0; i < M; i++){
        for(int j = 0; j < P; j++){
            int vidx = cOutIdxToVidx[i*P+j];
            computedCout[i][j] = vertices[vidx]->val;
        }
    }

    for(int i = 0; i < M; i++){
        for(int j = 0; j < P; j++){
            expectedCout[i][j] = 0;
            for(int k = 0; k < N; k++){
                expectedCout[i][j] += aIn[i][k] * bIn[k][j];
            }
        }
    }

    for(int i=0; i < M; i++){
        for(int j=0; j < P; j++){
            if(expectedCout[i][j] != computedCout[i][j]){
                HERE;
                std::cout << "DFG computation is wrong!" << std::endl;
                std::cout << "expectedCout[" << i << "][" << j <<"] = " << expectedCout[i][j] << " ";
                std::cout << "computedCout[" << i << "][" << j <<"] = " << computedCout[i][j] << " ";
                std::cout << std::endl;
                exit(EXIT_FAILURE);
            }
        }
    }

    std::cout << "DFG verification passed!" << std::endl;

}

void DFG::dump(){

    // Dump io data buffer address.
    std::ostringstream oss;
    oss << "./dump/io-buffer-addr.txt";
    std::ofstream fhandle;
    fhandle.open(oss.str().c_str());
    if(!fhandle.is_open()){
        std::cout << "Failed to open " << oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    // bufferAddr - vertxIdx - bufferTag
    for(auto it = aInIdxToVidx.begin(); it != aInIdxToVidx.end(); it++){
        fhandle << it->first << " " << it->second << " aIn " << std::endl;
    }
    for(auto it = bInIdxToVidx.begin(); it != bInIdxToVidx.end(); it++){
        fhandle << it->first << " " << it->second << " bIn " << std::endl;
    }
    for(auto it = cOutIdxToVidx.begin(); it != cOutIdxToVidx.end(); it++){
        fhandle << it->first << " " << it->second << " cOut " << std::endl;
    }
    fhandle.close();

    // Dump DFG
    oss.clear();
    oss.str("");
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
            fhandle << (*it)->type << " ";
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

    std::ofstream fhandle(fname.c_str());
    if(!fhandle.is_open()){
        HERE;
        std::cout << "Failed to open " << fname.c_str() << "." << std::endl;
        exit(EXIT_FAILURE);
    }

    // created directed graph
    fhandle << "digraph G {" << std::endl;
    for(auto it = vertices.begin(); it != vertices.end(); it++){
        if((*it)->inNgb[0] != -1){
            fhandle << "  V" << (*it)->inNgb[0] << " -> "; 
            fhandle << "V" << (*it)->idx << ";" << std::endl;
        }

        if((*it)->inNgb[1] != -1){
            fhandle << " V" << (*it)->inNgb[1] << " -> ";
            fhandle << "V" << (*it)->idx << ";" << std::endl;
        }

        if((*it)->inNgb[2] != -1){
            fhandle << " V" << (*it)->inNgb[2] << " -> ";
            fhandle << "V" << (*it)->idx << ";" << std::endl;
        }
    }

    fhandle << "}" << std::endl;

    fhandle.close();

}


