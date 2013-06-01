#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <fstream>

using namespace std;

void LoadParameter();
int main(){
   LoadParameter(); 
}

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

