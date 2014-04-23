#include "sobel.h"

void sobel_ip(int sub_in[R*C/4+18], int sub_out[R*C/4]){
	int i;
	int j;
	int p;
	int q;

	unsigned char* pixl_in_tmp=(unsigned char*)sub_in;

	int gx[3][3];
	int gy[3][3];

	for(i=0; i<R*C/4; i++){
		sub_out[i]=0;
	}

	for(i=0; i<3; i++){
		for(j=0; j<3; j++){
			gx[i][j]=sub_in[R*C/4+i*3+j];
			gy[i][j]=sub_in[R*C/4+9+i*3+j];
		}
	}

	for(i=1; i<R-1; i=i+1){
		sobel_ip_label2:for(j=4; j<C-4; j=j+4){
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
					sumx0+=((int)pixl_in_tmp[(i+p)*R+j+q])*gx[p+1][q+1];
					sumy0+=((int)pixl_in_tmp[(i+p)*R+j+q])*gy[p+1][q+1];

					sumx1+=((int)pixl_in_tmp[(i+p)*R+j+1+q])*gx[p+1][q+1];
					sumy1+=((int)pixl_in_tmp[(i+p)*R+j+1+q])*gy[p+1][q+1];

					sumx2+=((int)pixl_in_tmp[(i+p)*R+j+2+q])*gx[p+1][q+1];
					sumy2+=((int)pixl_in_tmp[(i+p)*R+j+2+q])*gy[p+1][q+1];

					sumx3+=((int)pixl_in_tmp[(i+p)*R+j+3+q])*gx[p+1][q+1];
					sumy3+=((int)pixl_in_tmp[(i+p)*R+j+3+q])*gy[p+1][q+1];
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
			id=(i*R+j)>>2;
			sub_out[id]=sum0 + (sum1<<8) + (sum2<<16) + (sum3<<24);
		}
	}
}
