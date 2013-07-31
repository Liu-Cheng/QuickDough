#include <iostream>
#include <fstream>
#include <stdio.h>
#include <sstream>

using namespace std;

int FileLineCount(const string &FileName);

int main(){
    string FileName="./outside-data-memory-0.mem";
    int LineCnt=FileLineCount(FileName);
    cout<<LineCnt<<" lines!"<<endl;
}

int FileLineCount(const string &FileName){
    int LineCnt=0;
    ifstream FileHandle;
    FileHandle.open(FileName.c_str());
    if(!FileHandle.is_open()){
        cout<<"File open failed!"<<endl;
    }
    char LineVec[100];
    while(FileHandle.getline(LineVec, 100)){
        LineCnt++;
    }
    return LineCnt;
}
