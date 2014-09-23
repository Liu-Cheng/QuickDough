#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <fstream>
#include <vector>

using namespace std;
void Combinator(const vector<int> &levelin, const int &deg, vector<int> &levelout, int&opid, ofstream &fHandle);
void Permutator(const vector<int> &levelin, const int &deg, vector<int> &levelout, int &opid, ofstream &fHandle);
void NetGraph(const int &N);
void LoadParameter();
int main(){
   //LoadParameter(); 
   NetGraph(7);
}

//Collect log infomation
void LoadParameter(){
    int N=10;
    ofstream log_out_file;

    log_out_file.open("/home/liucheng/project/scheduler/result/logsum.txt");
    //log_out_file.open("./logsum.txt");
    for(int i=0; i<N; i++){
        char log_name[200];

        sprintf(log_name,"/home/liucheng/project/scheduler/result/log-%d.txt",i);
        //sprintf(log_name,"./log-%d.txt",i);
        ifstream log_in_file;
        log_in_file.open(log_name);
        int value1; 
        int value2;
        float value3;
        while(!log_in_file.eof()){
            string tmp;
            log_in_file >> tmp;
            if(tmp=="performance="){
                log_in_file >> value1;
            }
            else if(tmp=="requirements="){
                log_in_file >> value2;
            }
            else if(tmp=="time="){
                log_in_file >> value3;
            }
            else{
                continue;
            }
        }
        log_in_file.close();
        log_out_file<<value1 <<" "<<value2<<" "<<value3<<endl;
    }
    log_out_file.close();
}

//Generate computation kernel.s
void NetGraph(const int &N){
    int opid=1; //zero is reserved for filling blank

    ofstream fHandle;
    string fName="/home/liucheng/project/scheduler/config/kernel.s";
    fHandle.open(fName.c_str());
    if(!fHandle.is_open()){
        cout<<"Failed to create kernel.s!"<<endl;
    }

    //level 0 generation
    vector<int> level0;
    level0.resize(N);
    for(int i=0; i<N; i++){
        level0[i]=i+1;
        opid++;
    }

    //level 1 generation
    vector<int> level1;
    Permutator(level0,3,level1, opid, fHandle);

    //level 2 generation
    vector<int> level2;
    //Permutator(level1,2,level2, opid, fHandle);
    Combinator(level1,2,level2, opid, fHandle);

    fHandle.close();
}

void Combinator(const vector<int> &levelin, const int &deg, vector<int> &levelout, int&opid, ofstream &fHandle){
    int opNum;
    int L=levelin.size();

    if(deg==2){
        int index=0;
        if(L%2==1){
            opNum=(L-3)/2+1;
            levelout.resize(opNum);
            fHandle << opid << " "<< 0 <<" "<< levelin[0] << " " << levelin[1] << " " << levelin[2] <<endl;
            opid++;
            for(int i=3; i<L;){
                fHandle << opid << " "<< 0 <<" "<< levelin[i] << " " << levelin[i+1] << " " << 0 <<endl;
                levelout[index]=opid;
                opid++;
                i+=2;
            }
        }
        else{
            opNum=L/2;
            levelout.resize(opNum);
            for(int i=0; i<L; ){
                fHandle << opid << " "<< 0 <<" "<< levelin[i] << " " << levelin[i+1] << " " << 0 <<endl;
                levelout[index]=opid;
                opid++;
                i+=2;
            }
        }
    }
    else{
        if(L%3!=0){
            cout<<"Need 3x input vector"<<endl;
        }
        int index=0;
        opNum=L/3;
        levelout.resize(opNum);
        for(int i=0; i<L; ){
            fHandle << opid << " "<< 0 <<" "<< levelin[i] << " " << levelin[i+1] << " " << levelin[i+2] <<endl;
            levelout[index]=opid;
            opid++;
            i+=3;
        }
    }
}
void Permutator(const vector<int> &levelin, const int &deg, vector<int> &levelout, int &opid, ofstream &fHandle){
    int opNum;
    int L=levelin.size();
    if(deg==2){
        int index=0;
        opNum=L*(L-1)/2;
        levelout.resize(opNum);
        for(int i=0; i<L; i++){
            for(int j=0; j<i; j++){
                fHandle << opid << " "<< 0 <<" "<< levelin[i] << " " << levelin[j] << " " << 0 <<endl;
                levelout[index]=opid;
                index++;
                opid++;
            }
        }
    }
    else{
        int index=0;
        opNum=L*(L-1)*(L-2)/6;
        levelout.resize(opNum);
        for(int i=0; i<L; i++){
            for(int j=0; j<i; j++){
                for(int k=0; k<j; k++){
                    fHandle << opid << " "<< 0 <<" "<< levelin[i] << " " << levelin[j] << " " << levelin[k] <<endl;
                    levelout[index]=opid;
                    index++;
                    opid++;
                }
            }
        }
    } 
}
