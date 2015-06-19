#include <iostream>
#include <vector>
#include <fstream>
#include <stdlib.h>
#include <iterator>
#include <sstream>
#include <map>
#include <cmath>
#include "App.h"
#include "Accel.h"

float getLinearAppro(const float &x1, const float &y1, const float x2, const float &y2, const float &x);
float getPerf(const App &app, const Accel &accel);
float getComm(const int commAm);
int getSchedule(const std::string &name, const int &row, const int &col);
float getImplFreq(const int &row, const int &col, const int &IOBuf, const int &instBuf);
float getCompu(const App &app, const Accel &accel);

int main(){
    std::vector<Accel> accelLib;

    int i;
    int j;
    int p;
    int q;
    for(j=2; j<=5; j++){
        for(i=j; i<=j+1 && i<=5; i++){
            for(p=1; p<=4; p=p*2){
                for(q=1; 1<=16; q=q*2){
                    Accel accel(i, j, 2*q, q, p);
                    accelLib.push_back(accel);
                }
            }
        }
    }


    // -O0 (row, col) = (2, 2)
    // -O1 (row, col) = (2, 2) (4, 4) (5, 5)
    // -O2 (row, col) = (2, 2), ... (5, 5)
}

float getCompu(const std::string &name, const int &DFGPerLoop, const Accel &accel){
    return getSchedule(name, accel.row, accel.col) * \\ 
        (1000/getImplFreq(accel.row, accel.col, accel.DBuf, accel.instBuf)) * DFGPerLoop;
}

int getSchedule(const std::string &name, const int &row, const int &col){
    int MMSchedule[] = {888, 777, 766, 744, 729, 731, 721};
    int FIRSchedule[] = {1636, 768, 661, 591, 514, 928, 746};
    int SESchedule[] = {4052, 3037, 2123, 1844, 1576, 1469, 1239};
    int KMSchedule[] = {2863, 2164, 1678, 1478, 1265, 1109, 957};
    if(name == "MM"){
        return MMSchedule[row*col-1];
    }
    else if(name == "FIR"){
        return FIRSchedule[row*col-1];
    }
    else if(name == "SE"){
        return SESchedule[row*col-1];
    }
    else{
        return KMSchedule[row*col-1];
    }
}

float getLinearAppro(const float &x1, const float &y1, const float x2, const float &y2, const float &x){
    return (x-x1)*(y2-y1)/(x2-x1)+y1;
}

float getComm(const int &commAm){
    float cycle = 3;
    if(commAm <= 8){
        return 21*cycle;
    }
    else if(commAm <= 16){
        return getLinearAppro(8, 21, 16, 12.08, commAm)*cycle; 
    }
    else if(commAm <= 32){
        return getLinearAppro(16, 12.08, 32, 7.15, commAm)*cycle; 
    }
    else if(commAm <= 64){
        return getLinearAppro(32, 7.15, 64, 5.06, commAm)*cycle; 
    }
    else if(commAm <= 128){
        return getLinearAppro(64, 5.06, 128, 4.44, commAm)*cycle; 
    }
    else if(commAm <= 256){
        return getLinearAppro(128, 4.44, 256, 3.76, commAm)*cycle; 
    }
    else if(commAm <= 512){
        return getLinearAppro(128, 3.76, 512, 3.36, commAm)*cycle; 
    }
    else {
        return 3.36*cycle;
    }
}

float getImplFreq(const int &row, const int &col, const int &IOBuf, const int &instBuf){
    int idx;
    int idy;

    if(instBuf == 1){
        idy = 0;
    }
    else if(instBuf == 2){
        idy = 1;
    }
    else if(instBuf ==4){
        idy = 2;
    }
    else{
        std::cout << "Unknown instBuf!" << std::endl;
        EXIT(EXIT_FAILURE);
    }

    if(IOBuf == 1) {
        idx = 0;
    }
    else if(IOBuf == 2){
        idx = 1;
    }
    else if(IOBuf == 4){
        idx = 2;
    }
    else if(IOBuf == 8){
        idx = 3;
    }
    else if(IOBuf == 16){
        idx = 4;
    }
    else{
        std::cout << "Unknown IOBuf!" << std::endl;
        EXIT(EXIT_FAILURE);
    }

    float Q2x2[5][3] = {{270.343, 278.706, 266.809},
        {267.379, 270.270, 271.739},
        {278.707, 257.268, 293.341},
        {259.134, 274.725, 275.482},
        {228.938, 190.803, 224.921}}; 

    float Q3x2[5][3] ={{270.343, 278.707, 266.809},
        {267.809, 285.959, 279.095},
        {277.315, 283.366, 275.027},
        {249.625, 268.528, 259.067},
        {232.558, 230.096, 240.269}};

    float Q3x3[5][3] = {{262.605, 264.061, 268.745},
        {260.824, 287.356, 248.385},
        {250.501, 274.574, 251.319},
        {261.643, 269.106, 232.558},
        {230.043, 232.558, -1}};

    float Q4x3[5][3] = {{275.634, 258.933, 240.732},
        {261.164, 257.466, 244.081},
        {273.224, 263.158, -1},
        {242.248, 229.885, -1},
        {231.481, -1, -1}};

    float Q4x4[5][3] = {{259.471, 263.019, -1},
        {254.712, 253.936, -1},
        {239.062, 259.067, -1},
        {239.062, 259.067, -1},
        {261.440, -1, -1}};

    float Q5x4[5][3] = {{255.363, -1, -1},
        {263.089, -1, -1},
        {239.636, -1, -1},
        {216.591, -1, -1},
        {-1, -1, -1}};

    float Q5x5[5][3] = {{235.793, -1, -1},
        {232.666, -1, -1},
        {-1, -1, -1},
        {-1, -1, -1},
        {-1, -1, -1}};

    if(row==2 && col==2){
        return Q2x2[idx][idy];
    }
    else if(row==3 && col==2){
        return Q3x2[idx][idy];
    }
    else if(row==3 && col==3){
        return Q3x3[idx][idy];
    }
    else if(row==4 && col==3){
        return Q4x3[idx][idy];
    }
    else if(row==4 && col==4){
        return Q4x4[idx][idy];
    }
    else if(row==5 && col==4){
        return Q5x4[idx][idy];
    }
    else if(row==5 && col==5){
        return Q5x5[idx][idy];
    }
    else{
        std::cout << "Unknown overlay size!" << std::endl;
        exit(EXIT_FAILURE);
    }

}


