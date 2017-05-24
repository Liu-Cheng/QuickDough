#include "sobel.h"

DFG::DFG(){
    ioInit();
    std::cout << "DFG is initialized." << std::endl;
}

void DFG::ioInit(){
    for(int i = 0; i < R; i++){
        for(int j = 0; j < C; j++){
            figIn[i][j] = rand()%256;
            figOut[i][j] = 0;
            goldFigOut[i][j] = 0;
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

    // figIn[R][C]
    for(int i = 0; i < R; i++){
        for(int j = 0; j < C; j++){
            int idx = GL::getIdx();
            Opcode op = MULADD; // meaningless
            VertexType type = IN;
            Vertex* vptr = new Vertex(idx, op, type);
            vptr->val = figIn[i][j];
            vertices.push_back(vptr);
            int figInIdx = i * C + j;
            figInIdxToVidx[figInIdx] = idx;
        }
    }

    // gx
    for(int i = 0; i < 3; i++){
        for(int j = 0; j < 3; j++){
            int idx = GL::getIdx();
            Opcode op = MULADD;
            VertexType type = IN;
            Vertex* vptr = new Vertex(idx, op, type);
            vptr->val = gx[i];
            vertices.push_back(vptr);
            int gxIdx = i * 3 + j;
            gxIdxToVidx[gxIdx] = idx;
        }
    }

    // gy
    for(int i = 0; i < 3; i++){
        for(int j = 0; j < 3; j++){
            int idx = GL::getIdx();
            Opcode op = MULADD;
            VertexType type = IN;
            Vertex* vptr = new Vertex(idx, op, type);
            vptr->val = gy[i];
            vertices.push_back(vptr);
            int gyIdx = i * 3 + j;
            gyIdxToVidx[gyIdx] = idx;
        }
    }

    // const
    for(auto c : consts){
        int idx = GL::getIdx();
        Opcode op = MULADD;
        VertexType = IN;
        Vertex* vptr = new Vertex(idx, op, type);
        vptr->val = c;
        vertices.push_back(vptr);
        constsToVidx[c] = idx;
    }
    

    Vertex* v0 = vertices[aInIdxToVidx[i*N]];
    Vertex* v1 = vertices[bInIdxToVidx[0]];
    Vertex* vptr = createVertex(v0, v1, NULL, MUL, IM);
    vertices.push_back(vptr);
    Vertex* vtmp = new Vertex(false);

    for(int i = 0; i < R; i++){
        for(int j = 0; j < C; j++){
            if(i == 0 || j == 0 || i == R-1 || j == C-1){
                continue;
            }
            else {
                Vertex* sumx;
                Vertex* sumy;
                for(int p = -1; p <= 1; p++){
                    for(int q = -1; q <= 1; q++){
                        Vertex* v0 = vertices[figInIdxToVidx[(i+p)*C+(j+q)]];
                        Vertex* v1 = vertices[gxIdxToVidx[(p+1)*3+q+1]];
                        Vertex* v2 = vertices[figInIdxToVidx[(i+p)*C+(j+q)]];
                        Vertex* v3 = vertices[gyIdxToVidx[(p+1)*3+q+1]];
                        if(p == -1 && q== -1){
                            Vertex* sumx = createVertex(v0, v1, NULL, MUL, IM);
                            Vertex* sumy = createVertex(v2, v3, NULL, MUL, IM);
                            vertices.push_back(sumx);
                            vertices.push_back(sumy);
                        }
                        else{
                            Vertex* mulx = createVertex(v0, v1, NULL, MUL, IM);
                            Vertex* muly = createVertex(v2, v3, NULL, MUL, IM);
                            sumx = createVertex(mulx, sumx, NULL, ADD, IM);
                            sumy = createVertex(muly, sumy, NULL, ADD, IM);
                            vertices.push_back(mulx);
                            vertices.push_back(muly);
                            vertices.push_back(sumx);
                            vertices.push_back(sumy);
                        }
                    }
                }
                Vertex* absSumx = createVertex(sumx, NULL, NULL, ABS, IM);
                Vertex* absSumy = createVertex(sumy, NULL, NULL, ABS, IM);
                Vertex* sum = createVertex(absSumx, absSumy, NULL, ADD, IM);
                Vertex* c255 = vertices[constToVidx[255]];
                Vertex* c0 = vertices[constToVidx[0]];
                Vertex* sum_compl = createVertex(c255, sum, NULL, SUB, IM);
                Vertex* cp = createVertex(sum, c255, NULL, GT, IM);
                vertices.push_back(absSumx);
                vertices.push_back(absSumy);
                vertices.push_back(sum);
                vertices.push_back(sum_comp1);
                vertices.push_back(cp);
                Vertex* out = createVertex(cp, c0, sum_compl, PHI, OUT);
                vertices.push_back(out);
                figOutIdxToVidx[i*C+j] = out->vidx;
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
    fhandle << "int bIn[" << N << "];" << std::endl;
    fhandle << "int cOut[" << M << "];" << std::endl;

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

    double computedCout[M];
    double expectedCout[M];
    for(int i = 0; i < M; i++){
        int vidx = cOutIdxToVidx[i];
        computedCout[i] = vertices[vidx]->val;
    }

    for(int i = 0; i < M; i++){
        expectedCout[i] = 0;
        for(int j = 0; j < N; j++){
            expectedCout[i] += aIn[i][j] * bIn[j];
        }
    }

    for(int i=0; i < M; i++){
        if(expectedCout[i] != computedCout[i]){
            HERE;
            std::cout << "DFG computation is wrong!" << std::endl;
            std::cout << "expectedCout[" << i << "] = " << expectedCout[i] << " ";
            std::cout << "computedCout[" << i << "] = " << computedCout[i] << " ";
            std::cout << std::endl;
            exit(EXIT_FAILURE);
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
    for(int i = 0; i < M; i++){
        for(int j = 0; j < N; j++){
            std::ostringstream oss;
            oss << "aIn[" << i << "][" << j << "]";
            int aInIdx = i * N + j;
            int vidx = aInIdxToVidx[aInIdx];
            idToLabel[vidx] = oss.str();
        }
    }

    for(int i = 0; i < N; i++){
        std::ostringstream oss;
        oss << "bIn[" << i << "]";
        int bInIdx = i;
        int vidx = bInIdxToVidx[bInIdx];
        idToLabel[vidx] = oss.str();
    }

    for(int i = 0; i < M; i++){
        std::ostringstream oss;
        oss << "cOut[" << i << "]";
        int cOutIdx = i;
        int vidx = cOutIdxToVidx[cOutIdx];
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

void DFG::standardSobel(){

    for(int i = 0; i < R; i++){
        for(int j = 0; j < C; j++){
            int sumx = 0;
            int sumy = 0;

            // Ignore the data on the edge of the figure
            if(i == 0 || j == 0 || i == R-1 || j == C-1){
                continue;
            }
            else{
                for(int p = -1; p <= 1; p++){
                    for(int q = -1; q <= 1; q++){
                        sumx += figIn[(i+p)*C+(j+q)]*gx[p+1][q+1];
                        sumy += figIn[(i+p)*C+(j+q)]*gy[p+1][q+1];
                    }
                }

                int sum=abs(sumx) + abs(sumy);

                if(sum > 255){
                    goldFigOut[i][j] = 0;
                }
                else{
                    goldFigOut[i][j] = 255-sum;
                }
            }
        }
    }
}
