#include <iostream>
#include <fstream>
#include <stdlib.h>
#include <sstream>
#include <cstdint>
#include <stdint.h>
#include <vector>
#include <cmath>

void genHexFile(const std::string &fname, const std::vector<float> &fVec);
int main(int argc, char* argv[]) {

    int num = 128;
    std::vector<float> iVec;
    std::vector<float> normExp;
    std::vector<float> oProab;
    std::vector<float> zeros;
    float sum;



    //init iVec and get max of iVec
    float data = 0;
    float scale = 0;
    for(int i=0; i<num; i++){
        zeros.push_back(0.0);
        data += 0.1;
        iVec.push_back(data);
        if(scale < data){
            scale = data;
        }
    }
    genHexFile("zeros.txt", zeros);
    genHexFile("init.txt", iVec);

    if(1){
        std::ostringstream oss;
        union {float fval; uint32_t ival;};
        fval = scale;
        oss << std::hex << std::uppercase << ival;
        std::cout << "scale = " << oss.str() << std::endl;
    }


    //Norm, exp and sum
    sum = 0;
    for(int i=0; i<num; i++){
        data = exp(iVec[i] - scale);
        normExp.push_back(data);
        sum += data;
    }
    genHexFile("normexp.txt", normExp);
    if(1){
        std::ostringstream oss;
        union {float fval; uint32_t ival;};
        fval = sum;
        oss << std::hex << std::uppercase << ival;
        std::cout << "sum = " << oss.str() << std::endl;
    }

    // Proability calculation
    for(int i=0; i<num; i++){
        data = normExp[i]/sum;
        oProab.push_back(data);
    }
    genHexFile("proab.txt", oProab);

}


void genHexFile(const std::string &fname, const std::vector<float> &fVec){

    std::ofstream fhandle (fname.c_str());
    std::vector<float>::const_iterator cit;
    if(fhandle.is_open()){
        for (cit = fVec.begin(); cit != fVec.end(); cit++){
            union {float fval; uint32_t ival;};
            fval = *cit;

            std::ostringstream oss;
            oss << std::hex << std::uppercase << ival;
            fhandle << oss.str() << "    "; 
        }
    }
    fhandle.close();

}

