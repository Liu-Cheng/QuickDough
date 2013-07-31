#include <stdio.h>

#define DATA_NUM 256
int main(void){
    FILE* FP=fopen("outside-bram-addr-0.mem","r");
    unsigned int Src[DATA_NUM];
    int i;
    for(i=0; i<DATA_NUM; i++){
        if(!feof(FP)){
            fscanf(FP, "%x", Src+i);
            if(feof(FP)){
                Src[i]=0;
            }
        }
        else{
            Src[i]=0;
        }
    }
    fclose(FP);

    for(i=0; i<DATA_NUM; i++){
        printf("src[%d]=%x\n", i, Src[i]);
    }
}
