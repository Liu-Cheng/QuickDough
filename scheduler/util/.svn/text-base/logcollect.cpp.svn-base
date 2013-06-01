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
    int N=30;
    ofstream log_out_file;
    log_out_file.open("logsum.txt");
    for(int i=0; i<N; i++){
        char log_name[20];
        sprintf(log_name,"./log-%d.txt",i);
        ifstream log_in_file;
        log_in_file.open(log_name);
        int value1, value2;
        while(!log_in_file.eof()){
            string tmp;
            log_in_file >> tmp;
            if(tmp=="time="){
                log_in_file >> value1;
            }
            else if(tmp=="number:"){
                log_in_file >> value2;
            }
            else{
                continue;
            }
        }
        log_in_file.close();
        log_out_file<<value1 <<" "<<value2<<endl;
    }
    log_out_file.close();
}

