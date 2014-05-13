#include "kmean.h"

void kmean_ip(int sub_in[S*D+N*D], int sub_out[N*D+N]){
    int i;
    int dist0;
    int dist1;
    int dist2;
    int dist3;

    /*-----------------------------------------------------------------
     *
     * Initialization:
     * sub_out[0:7] sum of the 4 centroids
     * sub_out[8, 11], the number of nodes allocated to each centroid.
     *
     *----------------------------------------------------------------*/
    for(i=0; i<N*D+N; i++){
        sub_out[i]=0;
    }
    for(i=0; i<S; i++){
        dist0=(sub_in[i*D]-sub_in[S*D])*(sub_in[i*D]-sub_in[S*D])+ \
        		(sub_in[i*D+1]-sub_in[S*D+1])*(sub_in[i*D+1]-sub_in[S*D+1]);

        dist1=(sub_in[i*D]-sub_in[S*D+2])*(sub_in[i*D]-sub_in[S*D+2])+ \
        		(sub_in[i*D+1]-sub_in[S*D+3])*(sub_in[i*D+1]-sub_in[S*D+3]);

        dist2=(sub_in[i*D]-sub_in[S*D+4])*(sub_in[i*D]-sub_in[S*D+4])+ \
        		(sub_in[i*D+1]-sub_in[S*D+5])*(sub_in[i*D+1]-sub_in[S*D+5]);

        dist3=(sub_in[i*D]-sub_in[S*D+6])*(sub_in[i*D]-sub_in[S*D+6])+ \
        		(sub_in[i*D+1]-sub_in[S*D+7])*(sub_in[i*D+1]-sub_in[S*D+7]);

         if(dist0<=dist1 && dist0<=dist2 && dist0<=dist3){
             sub_out[8]=sub_out[8]+1;
             sub_out[0]+=sub_in[i*D];
             sub_out[1]+=sub_in[i*D+1];
         } 
         
         if(dist1<dist0 && dist1<=dist2 && dist1<=dist3){
             sub_out[9]=sub_out[9]+1;
             sub_out[2]+=sub_in[i*D];
             sub_out[3]+=sub_in[i*D+1];
         }                            

         if(dist2<dist0 && dist2<dist1 && dist2<=dist3){
             sub_out[10]=sub_out[10]+1;
             sub_out[4]+=sub_in[i*D];
             sub_out[5]+=sub_in[i*D+1];
         }

         if(dist3<dist0 && dist3<dist1 && dist3<dist2){
             sub_out[11]=sub_out[11]+1;
             sub_out[6]+=sub_in[i*D];
             sub_out[7]+=sub_in[i*D+1];
         }
    }

}
