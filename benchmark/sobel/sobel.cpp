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
            goldOut[i][j] = 0;
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
            vptr->val = (int)(figIn[i][j]);
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
            vptr->val = gx[i][j];
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
            vptr->val = gy[i][j];
            vertices.push_back(vptr);
            int gyIdx = i * 3 + j;
            gyIdxToVidx[gyIdx] = idx;
        }
    }

    // const
    for(auto c : consts){
        int idx = GL::getIdx();
        Opcode op = MULADD;
        VertexType type = IN;
        Vertex* vptr = new Vertex(idx, op, type);
        vptr->val = c;
        vertices.push_back(vptr);
        constsToVidx[c] = idx;
    }
    
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
                        Vertex* v2 = vertices[gyIdxToVidx[(p+1)*3+q+1]];
                        if(p == -1 && q== -1){
                            sumx = createVertex(v0, v1, NULL, MUL, IM);
                            sumy = createVertex(v0, v2, NULL, MUL, IM);
                            vertices.push_back(sumx);
                            vertices.push_back(sumy);
                        }
                        else{
                            Vertex* mulx = createVertex(v0, v1, NULL, MUL, IM);
                            Vertex* muly = createVertex(v0, v2, NULL, MUL, IM);
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
                Vertex* c255 = vertices[constsToVidx[255]];
                Vertex* c0 = vertices[constsToVidx[0]];
                Vertex* sum_compl = createVertex(c255, sum, NULL, SUB, IM);
                Vertex* cp = createVertex(sum, c255, NULL, GT, IM);
                vertices.push_back(absSumx);
                vertices.push_back(absSumy);
                vertices.push_back(sum);
                vertices.push_back(sum_compl);
                vertices.push_back(cp);
                Vertex* out = createVertex(cp, c0, sum_compl, PHI, OUT);
                vertices.push_back(out);
                figOutIdxToVidx[i*C+j] = out->idx;
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
    fhandle << "unsigned char figIn[" << R << "][" << C << "];" << std::endl;
    fhandle << "int gx[3][3];" << std::endl;
    fhandle << "int gy[3][3];" << std::endl;
    fhandle << "unsigned char figOut[" << R << "][" << C << "];" << std::endl;
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

    for(int i = 0; i < R; i++){
        for(int j = 0; j < C; j++){
            if(i == 0 || j == 0 || i == R - 1 || j == C - 1) continue;
            int idx = figOutIdxToVidx[i * C + j];
            figOut[i][j] = (unsigned char)(vertices[idx]->val);
        }
    }

}


void DFG::verify(){

    // calculate the standard sobel output
    standardSobel();

    // Compare the result.
    for(int i = 0; i < R; i++){
        for(int j = 0; j < C; j++){
            if(i == 0 || j == 0 || i == R -1 || j == C -1){
                continue;
            }
            else if(goldOut[i][j] != figOut[i][j]){
                HERE;
                std::cout << "DFG computation is wrong!" << std::endl;
                std::cout << "expectedOut[" << i << "][" << j << "] = " << (int)(goldOut[i][j]) << " ";
                std::cout << "computedOut[" << i << "][" << j << "] = " << (int)(figOut[i][j]) << " ";
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
    for(int i = 0; i < R; i++){
        for(int j = 0; j < C; j++){
            std::ostringstream oss;
            oss << "figIn[" << i << "][" << j << "]";
            int figInIdx = i * C + j;
            int vidx = figInIdxToVidx[figInIdx];
            idToLabel[vidx] = oss.str();
        }
    }

    for(int i = 0; i < 3; i++){
        for(int j = 0; j < 3; j++){
            std::ostringstream oss;
            oss << "gx[" << i << "][" << j << "]";
            int gxIdx = i * 3 + j;
            int vidx = gxIdxToVidx[gxIdx];
            idToLabel[vidx] = oss.str();
        }
    }

    for(int i = 0; i < 3; i++){
        for(int j = 0; j < 3; j++){
            std::ostringstream oss;
            oss << "gy[" << i << "][" << j <<"]";
            int gyIdx = i * 3 + j;
            int vidx = gyIdxToVidx[gyIdx];
            idToLabel[vidx] = oss.str();
        }
    }

    for(int i = 0; i < R; i++){
        for(int j = 0; j < C; j++){
            std::ostringstream oss;
            oss << "figOut[" << i << "][" << j << "]";
            int figOutIdx = i * C + j;
            int vidx = figOutIdxToVidx[figOutIdx];
            idToLabel[vidx] = oss.str();
        }
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
                        sumx += (int)figIn[i+p][j+q] * gx[p+1][q+1];
                        sumy += (int)figIn[i+p][j+q] * gy[p+1][q+1];
                    }
                }

                int sum=abs(sumx) + abs(sumy);
                if(sum > 255){
                    goldOut[i][j] = 0;
                }
                else{
                    goldOut[i][j] = (unsigned char)(255-sum);
                }
            }
        }
    }
}
