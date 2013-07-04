/**********************************************************************
 *
 *Produce DFG IO information.
 *
 *********************************************************************/
#include <cstring>
#include <fstream>
#include <iostream>
#include <stdlib.h>

#define ARRAY_NUM 3
#define TOTAL_OP_NUM 125
#define INPUT_BASE_ADDR 0x0000
#define OUTPUT_BASE_ADDR 0x0000

int main(){
  int ArraySize[ARRAY_NUM]={25,25,25};
  int IO[ARRAY_NUM]={0,0,1};
  std::string fName="MM.txt";
  std::ofstream fHandle;

  fHandle.open(fName.c_str());
  if(!fHandle.is_open()){
    std::cout<<"File open failed.\n";
  }

  int InputOpNum=0;
  int OutputOpNum=0;
  for(int i=0; i<ARRAY_NUM; i++){
    if(IO[i]==0){
      InputOpNum+=ArraySize[i];
    }
    else{
      OutputOpNum+=ArraySize[i];
    }
  }

  //Operation id, physical bram address, value, BramId, I/O
  int OpId=0;
  for(int i=0; i<ARRAY_NUM; i++){
    for(int j=0; j<ArraySize[i]; j++){
      OpId++;
      if(OpId<=InputOpNum){
        fHandle << OpId << "  " << INPUT_BASE_ADDR+OpId << "  " << rand()%100 << "  " << 0 << "  " << 0 << "  " << "\n";
      }
      else{
        fHandle << OpId << "  " << OUTPUT_BASE_ADDR+(OpId-InputOpNum) << "  " << 0 << "  " << 1 << "  " << 1 << "  " << "\n";
      }
    }
  }

  fHandle.close();
}
