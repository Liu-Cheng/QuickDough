#include "fir.h"

DFG::DFG(){
    ioInit();

    // More initialization can be added here.
    std::cout << "DFG is initialized." << std::endl;
}

void DFG::ioInit(){

    for(int i = 0; i < N+L-1; i++){
        in[i] = (rand()%100)/100.0;
    }

    for(int i = 0; i < N; i++){
        coeff[i] = (rand()%100)/100.0;
    }

    for(int i = 0; i < L; i++){
        out[i] = 0; 
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
    for(int i = 0; i < N+L-1; i++){
        int idx = GL::getIdx();
        Opcode op = MULADD; // meaningless
        VertexType type = IN;
        Vertex* vptr = new Vertex(idx, op, type);
        vptr->val = in[i];
        vertices.push_back(vptr);
        int inIdx = i;
        inIdxToVidx[inIdx] = idx;
    }

    for(int i = 0; i < N; i++){
        int idx = GL::getIdx();
        Opcode op = MULADD;
        VertexType type = IN;
        Vertex* vptr = new Vertex(idx, op, type);
        vptr->val = coeff[i];
        vertices.push_back(vptr);
        int coeffIdx = i;
        coeffIdxToVidx[coeffIdx] = idx;
    }

    for(int i = 0; i < L; i++){
        Vertex* v0 = vertices[inIdxToVidx[i+N-1]];
        Vertex* v1 = vertices[coeffIdxToVidx[0]];
        Vertex* vptr = createVertex(v0, v1, NULL, MUL, IM);
        vertices.push_back(vptr);

        Vertex* vtmp = new Vertex(false);
        for(int j = 1; j < N; j++){
            v0 = vertices[inIdxToVidx[i+N-1-j]];
            v1 = vertices[coeffIdxToVidx[j]];
            Vertex* vmul = createVertex(v0, v1, NULL, MUL, IM);
            vertices.push_back(vmul);

            // Create output vertices
            if(j == N -1){
                Vertex* vout = createVertex(vmul, vtmp, NULL, ADD, OUT);
                vout->val = out[i];
                vertices.push_back(vout);
                outIdxToVidx[i] = vout->idx;
            }
            else if(j == 1){
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
    fhandle << "int in[" << N + L - 1 << "];" << std::endl;
    fhandle << "int coeff[" << N << "];" << std::endl;
    fhandle << "int out[" << L << "];" << std::endl;

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

    double computedOut[L];
    double expectedOut[L];
    for(int i = 0; i < L; i++){
        int vidx = outIdxToVidx[i];
        computedOut[i] = vertices[vidx]->val;
    }

    for(int i = 0; i < L; i++){
        expectedOut[i] = 0;
        for(int j = 0; j < N; j++){
            expectedOut[i] += in[i+N-1-j] * coeff[j];
        }
    }

    for(int i=0; i < L; i++){
        if(expectedOut[i] != computedOut[i]){
            HERE;
            std::cout << "DFG computation is wrong!" << std::endl;
            std::cout << "expectedOut[" << i << "] = " << expectedOut[i] << " ";
            std::cout << "computedOut[" << i << "] = " << computedOut[i] << " ";
            std::cout << std::endl;
            exit(EXIT_FAILURE);
        }
    }

    std::cout << "DFG verification passed!" << std::endl;

}

void DFG::dump(){

    // Dump io data buffer address.
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
    for(int i = 0; i < N+L-1; i++){
        std::ostringstream oss;
        oss << "in[" << i << "]";
        int inIdx = i;
        int vidx = inIdxToVidx[inIdx];
        idToLabel[vidx] = oss.str();
    }

    for(int i = 0; i < N; i++){
        std::ostringstream oss;
        oss << "coeff[" << i << "]";
        int coeffIdx = i;
        int vidx = coeffIdxToVidx[coeffIdx];
        idToLabel[vidx] = oss.str();
    }

    for(int i = 0; i < L; i++){
        std::ostringstream oss;
        oss << "out[" << i << "]";
        int outIdx = i;
        int vidx = outIdxToVidx[outIdx];
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

