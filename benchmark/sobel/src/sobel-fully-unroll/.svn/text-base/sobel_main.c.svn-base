#include "stdlib.h"
#include "sobel.h"

static unsigned char fig_in[R][C]={
  #include "fig_in_medium.txt"
};

static unsigned char edge_out_expected[R][C]={
  #include "fig_out_medium.txt"
};

//gx[3][3] and gy[3][3] are attached to sub_in.
//Also note that both sub_in and sub_out are defined as global
//variables. The reason is that the bare metal mode doesn't
//support dynamic memory allocation, while sub_in and sub_out are relatively
//large and they will overflow the stack if defined as local variables.
static int sub_in[R*C/4+18];
static int sub_out[R*C/4];
unsigned char* pixl_in;
unsigned char* edge_out;

int main(){

	int gx[3][3]={
			{-1,  0,  1 },
			{-2,  0,  2 },
			{-1,  0,  1 }
	};
	int gy[3][3]={
			{ 1,  2,   1},
			{ 0,  0,   0},
			{-1, -2,  -1}
	};

	int i;
	int j;
	int p;
	int q;

	/*Input combination*/
	int id;
	for(i=0; i<R; i++){
		for(j=0; j<C; j=j+4){
			int tmp0, tmp1, tmp2, tmp3;
			tmp0=((unsigned int)fig_in[i][j]);
			tmp1=((unsigned int)fig_in[i][j+1])<<8;
			tmp2=((unsigned int)fig_in[i][j+2])<<16;
			tmp3=((unsigned int)fig_in[i][j+3])<<24;
			sub_in[id]=tmp0+tmp1+tmp2+tmp3;
			id++;
		}
	}

	for(i=0; i<3; i++){
		for(j=0; j<3; j++){
			sub_in[id]=gx[i][j];
			id++;
		}
	}

	for(i=0; i<3; i++){
		for(j=0; j<3; j++){
			sub_in[id]=gy[i][j];
			id++;
		}
	}

	/*Kernel part assigned to Hardware accelerator*/
	sobel_ip(sub_in, sub_out);

	/*Access the integer array as if it is a char array.*/
    pixl_in=(unsigned char*)sub_in;
	edge_out=(unsigned char*)sub_out;

	/*Complete the corner case of the algorithm*/
	int sumx;
	int sumy;
	int sum;
	for(i=0; i<R; i++){
		for(j=0; j<C; j++){
			if(i==0 || i==R-1 || j==0 || j==C-1){
				edge_out[i*R+j]=255;
			}
			else if(j<=3 || j>=C-4){
				sumx=0;
				sumy=0;
				for(p=-1; p<=1; p++){
					for(q=-1; q<=1; q++){
						sumx+=((int)(unsigned char)pixl_in[(i+p)*R+j+q])*gx[p+1][q+1];
						sumy+=((int)(unsigned char)pixl_in[(i+p)*R+j+q])*gy[p+1][q+1];
					}
				}
				sum=abs(sumx)+abs(sumy);
				if(sum>255) {
					sum=0;
				}
				else {
					sum=255-sum;
				}

				edge_out[i*R+j]=sum;
			}
		}
	}

	/*Verification*/
	for(i=0; i<R; i++){
		for(j=0; j<C; j++){
			if(edge_out[i*R+j]!=edge_out_expected[i][j]){
				printf("Verification failed! edge_out[%d][%d]=%d, edge_out_expected[%d][%d]=%d\n", i, j, edge_out[i*R+j], i, j, edge_out_expected[i][j]);
				exit(1);
			}
		}
	}
	printf("Verification passed!\n");

}
