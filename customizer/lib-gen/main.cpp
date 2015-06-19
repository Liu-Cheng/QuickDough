#include <iostream>
#include <vector>
#include <fstream>
#include <stdlib.h>
#include <iterator>
#include <sstream>
#include <map>
#include <cmath>

float budget = 140;
//float instMemInc = 1; 
//float ioBufInc = 0;
int gap = 1;
std::map<int, float> accImplTime;
std::vector<std::vector<float> > accConfigSet;
bool feasibleTest(const int &row, const int &col, const float &instMem);
bool isFeasible(const int &row, const int &col, const float &instMem);
void dump();
void init();

int main(){
    int row = 2;
    int col = 2;
    float instMem = 0;

    init();

    while(true){
        instMem = 1;
        row = col;
        if(!feasibleTest(row, col, instMem)){
            break;
        }
        for(row=col; row<=(col+gap); row++){ 
            instMem = 1;
            if(!feasibleTest(row, col, instMem)){
                break;
            }
            int id = 0;
            while(true){
                if(!isFeasible(row, col, instMem)){
                    break;
                }
                id++;
                instMem = pow(2, id);
            }
        }
        col++;
    }

    dump();
}

void init(){
    accImplTime[4] = 4.1;
    accImplTime[6] = 8.2;
    accImplTime[9] = 8.7;
    accImplTime[12] = 9.3;
    accImplTime[16] = 10.8;
    accImplTime[20] = 14.4;
    accImplTime[25] = 17.4;
    accImplTime[30] = 19.5;
    accImplTime[36] = 23.5;
    accImplTime[42] = 28.7;
    accImplTime[49] = 30.8;
    accImplTime[56] = 34.1;
    accImplTime[64] = 38.2;
    accImplTime[72] = 46.3;
    accImplTime[81] = 49.1;
    accImplTime[90] = 56.5;
    accImplTime[100] = 60.6;
}

void dump(){
    std::ofstream fHandle;
    std::ostringstream os;
    float totalImplTime = 0;
    os << "dump-" << budget <<".txt";
    std::string fName = os.str();
    fHandle.open(fName.c_str());
    if(!fHandle.is_open()){
        std::cout << "Failed to open the dump.txt!";
        exit(1);
    }

    std::vector<float>::iterator it1;
    std::vector<std::vector<float> >::iterator it2;
    for(it2 = accConfigSet.begin(); it2 != accConfigSet.end(); it2++){
        int tmp = (*it2)[0] * (*it2)[1];
        totalImplTime += accImplTime[tmp];
        for(it1 = it2->begin(); it1 != it2->end(); it1++){
            fHandle << *(it1) << "     ";
        }
        fHandle << std::endl;
    }

    std::cout << "The number of accelerator configurations in the library is " 
        << accConfigSet.size() << "." << std::endl;
    std::cout << "Total implementation time " << totalImplTime << "min." << std::endl;
}

bool isFeasible(const int &row, const int &col, const float &instMem){
   float ioBuf = (budget - (row * col) * (3 + instMem * 2))/4;
   if(ioBuf < 1){
       return false;
   }
   if(instMem != 0){
       float tmp = 0; 
       while(pow(2, tmp) <= ioBuf){
           std::vector<float> config;
           config.push_back(row);
           config.push_back(col);
           config.push_back(instMem);
           config.push_back(pow(2, tmp));
           accConfigSet.push_back(config);
           tmp++;
       }
   }

   return true;
}

bool feasibleTest(const int &row, const int &col, const float &instMem){
   float ioBuf = (budget - (row * col) * (3 + instMem * 2))/4;
   if(ioBuf < 1){
       return false;
   }
   return true;
}
