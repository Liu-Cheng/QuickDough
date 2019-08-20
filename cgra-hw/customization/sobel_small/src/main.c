#include <stdlib.h>
#include "sobel.h"

unsigned char Fig_In[R][C];
unsigned char Expected_Fig_Out[R][C];

static int sub_in[R*C/4+18];
static int sub_out[R*C/4];

unsigned char* Expected_Fig_Out_Ptr;
unsigned char* Fig_Out_Ptr;

void Init(int Gx[3][3], int Gy[3][3]);
int main(){

	int Gx[3][3]={
			{-1,  0,  1 },
			{-2,  0,  2 },
			{-1,  0,  1 }
	};

	int Gy[3][3]={
			{ 1,  2,   1},
			{ 0,  0,   0},
			{-1, -2,  -1}
	};

	Init(Gx, Gy);

	int i;
	int j;
	int p;
	int q;

	/*Input combination*/
	int id;
	for(i=0; i<R; i++){
		for(j=0; j<C; j=j+4){
			int tmp0, tmp1, tmp2, tmp3;
			tmp0=((unsigned int)Fig_In[i][j]);
			tmp1=((unsigned int)Fig_In[i][j+1])<<8;
			tmp2=((unsigned int)Fig_In[i][j+2])<<16;
			tmp3=((unsigned int)Fig_In[i][j+3])<<24;
			sub_in[id]=tmp0+tmp1+tmp2+tmp3;
			id++;
		}
	}

	for(i=0; i<3; i++){
		for(j=0; j<3; j++){
			sub_in[id]=Gx[i][j];
			id++;
		}
	}

	for(i=0; i<3; i++){
		for(j=0; j<3; j++){
			sub_in[id]=Gy[i][j];
			id++;
		}
	}

	/*Kernel part assigned to Hardware accelerator*/
	sobel_ip(sub_in, sub_out);

	Fig_Out_Ptr=(unsigned char*)sub_out;
	Expected_Fig_Out_Ptr=(unsigned char*)Expected_Fig_Out;

	/*Verification*/
	for(i=0; i<R; i++){
		for(j=0; j<C; j++){
			if(Fig_Out_Ptr[i*C+j]!=Expected_Fig_Out_Ptr[i*C+j]){
				printf("Result doesn't match! Fig_Out[%d][%d]=%d, Expected_Fig_Out[%d][%d]=%d\n", i, j, Fig_Out_Ptr[i*C+j], i, j, Expected_Fig_Out_Ptr[i*C+j]);
				exit(1);
			}
		}
	}
	printf("Result matches!\n");

}

void Init(int Gx[3][3], int Gy[3][3]){

	int i;
	int j;
	int p;
	int q;

	for(i=0; i<R; i++){
		for(j=0; j<C; j++){
			Fig_In[i][j] = rand()%256;
		}
	}

	for(i=0; i<R; i++){
		for(j=0; j<C; j++){
			if(i==0 || j==0 || i==R-1 || j==C-1){
				Expected_Fig_Out[i][j] = 0;
			}
			else{
				int sumx=0;
				int sumy=0;
				int sum=0;
				for(p=-1; p<=1; p++){
					for(q=-1; q<=1; q++){
						sumx += (int)Fig_In[i+p][j+q] * Gx[p+1][q+1];
						sumy += (int)Fig_In[i+p][j+q] * Gy[p+1][q+1];
					}
				}

				sum=abs(sumx)+abs(sumy);
				if(sum>255) sum = 255;

				Expected_Fig_Out[i][j] = 255-sum;
			}
		}
	}

}
