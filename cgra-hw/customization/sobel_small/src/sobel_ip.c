#include "sobel.h"

void sobel_ip(int sub_in[R*C/4+18], int sub_out[R*C/4]){

	int i;
	int j;
	int p;
	int q;

	unsigned char* In_Ptr=(unsigned char*)sub_in;

	int Gx[3][3];
	int Gy[3][3];

	for(i=0; i<3; i++){
		for(j=0; j<3; j++){
			Gx[i][j]=sub_in[R*C/4+i*3+j];
			Gy[i][j]=sub_in[R*C/4+9+i*3+j];
		}
	}

	sobel_ip_label3:for(i=0; i<R; i=i+1){
		sobel_ip_label2:for(j=0; j<C; j=j+4){

			int sumx0=0;
			int sumy0=0;
			int sum0=0;

			int sumx1=0;
			int sumy1=0;
			int sum1=0;

			int sumx2=0;
			int sumy2=0;
			int sum2=0;

			int sumx3=0;
			int sumy3=0;
			int sum3=0;


			sobel_ip_label1:for(p=-1; p<=1; p++){
				sobel_ip_label0:for(q=-1; q<=1; q++){
					if(i==0 || j==0 || i==R-1 || j==C-1){
						sumx0 = 255;
						sumy0 = 255;
					}
					else{
						sumx0+=((int)In_Ptr[(i+p)*C+j+q])*Gx[p+1][q+1];
						sumy0+=((int)In_Ptr[(i+p)*C+j+q])*Gy[p+1][q+1];
					}

					if(i==0 || j+1==0 || i==R-1 || j+1==C-1){
						sumx1 = 255;
						sumy1 = 255;
					}
					else{
						sumx1+=((int)In_Ptr[(i+p)*C+j+1+q])*Gx[p+1][q+1];
						sumy1+=((int)In_Ptr[(i+p)*C+j+1+q])*Gy[p+1][q+1];
					}

					if(i==0 || j+2==0 || i==R-1 || j+2==C-1){
						sumx2 = 255;
						sumy2 = 255;
					}
					else{
						sumx2+=((int)In_Ptr[(i+p)*C+j+2+q])*Gx[p+1][q+1];
						sumy2+=((int)In_Ptr[(i+p)*C+j+2+q])*Gy[p+1][q+1];
					}

					if(i==0 || j+3==0 || i==R-1 || j+3==C-1){
						sumx3 = 255;
						sumy3 = 255;
					}
					else{
						sumx3+=((int)In_Ptr[(i+p)*C+j+3+q])*Gx[p+1][q+1];
						sumy3+=((int)In_Ptr[(i+p)*C+j+3+q])*Gy[p+1][q+1];
					}
				}
			}

			sum0=abs(sumx0)+abs(sumy0);
			sum1=abs(sumx1)+abs(sumy1);
			sum2=abs(sumx2)+abs(sumy2);
			sum3=abs(sumx3)+abs(sumy3);

			if(sum0>255) sum0=255;
			sum0=255-sum0;

			if(sum1>255) sum1=255;
			sum1=255-sum1;

			if(sum2>255) sum2=255;
			sum2=255-sum2;

			if(sum3>255) sum3=255;
			sum3=255-sum3;

			int id;
			id=(i*C+j)>>2;
			sub_out[id]=sum0 + (sum1<<8) + (sum2<<16) + (sum3<<24);
		}
	}
}
