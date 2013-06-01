#include <iostream>
#include <vector>
#include <fstream>
#include <sstream>

using namespace std;

void TorusGen(int N, int row, int col, vector<vector<int> > &link_matrix);
void MeshGen(int N, int row, int col, vector<vector<int> > &link_matrix);
void RingGen(int N, vector<vector<int> > &link_matrix);
void FullConnectGen(int N, vector<vector<int> > &link_matrix);
int main(){
    int topology_type;
    int topology_scale;
    int array_row;
    int array_col;

    cout<<"Topology Auto Generation"<<endl;
    cout<<"Topology Type 0: 2D Torus"<<endl;
    cout<<"Topology Type 1: 2D Mesh"<<endl;
    cout<<"Topology Type 2: Ring"<<endl;
    cout<<"Topology Type 3: Full Connect"<<endl;
    cout<<"Choose the Topology Type!"<<endl;
    cin>>topology_type;
    cout<<"Input Topology Scale!"<<endl;
    cin>>topology_scale;
    cout<<"Input array row if necessary!"<<endl;
    cin>>array_row;
    cout<<"Input array col if necessary!"<<endl;
    cin>>array_col;

    int N=topology_scale; //topology scale
    int row=array_row;
    int col=array_col;
    vector<vector<int> > link_matrix;
    link_matrix.resize(N);
    for(int i=0; i<N; i++){
        link_matrix[i].resize(N);
    }

    if(topology_type==0){
        TorusGen(N, row, col, link_matrix);
    }
    else if(topology_type==1){
        MeshGen(N, row, col, link_matrix);
    }
    else if(topology_type==2){
        RingGen(N, link_matrix);
    }
    else if(topology_type==3){
        FullConnectGen(N, link_matrix);
    }
    else{
        cout<<"Unrecognized topology!"<<endl;
    }

    //Generate corresponding topology files
    ostringstream file_name;
    ofstream file_handle;
    if(topology_type==0){
        file_name<<"torus_"<<N<<"_"<<row<<"x"<<col<<".txt";
    }
    else if(topology_type==1){
        file_name<<"mesh_"<<N<<"_"<<row<<"x"<<col<<".txt";
    }
    else if(topology_type==2){
        file_name<<"ring_"<<N<<".txt";
    }
    else if(topology_type==3){
        file_name<<"fullconnect_"<<N<<".txt";
    }
    else{
        cout<<"Unrecognized topology type!"<<endl;
    }
    file_handle.open(file_name.str().c_str());
    if(!file_handle.is_open()){
        cout<<"File open failed!"<<endl;
    }

    //print the topology
    for(int i=0; i<N; i++){
        for(int j=0; j<N; j++){
            file_handle<<" "<<link_matrix[i][j];
        }
        file_handle<<endl;
    }
}
void TorusGen(int N, int row, int col, vector<vector<int> > &link_matrix){
    for(int i=0; i<N; i++){
        for(int j=0; j<N; j++){
            int iRow=i/col;
            int iCol=i%col;
            int jRow=j/col;
            int jCol=j%col;
            // i,j are neighbors on the horizontal level.
            if(iRow==jRow && ((jCol-iCol==1)||(iCol-jCol==1)||(jCol-iCol==col-1)||(iCol-jCol==col-1))){
                link_matrix[i][j]=1;
            }
            //i, j are neighbors on the vertical level
            else if(iCol==jCol && ((iRow-jRow==1)||(jRow-iRow==1)||(iRow-jRow==row-1)||(jRow-iRow==row-1))){
                link_matrix[i][j]=1;
            }
            else{
                link_matrix[i][j]=0;
            }
        }
    }
}

void MeshGen(int N, int row, int col, vector<vector<int> > &link_matrix){
    for(int i=0; i<N; i++){
        for(int j=0; j<N; j++){
            int iRow=i/col;
            int iCol=i%col;
            int jRow=j/col;
            int jCol=j%col;
            // i,j are neighbors on the horizontal level.
            if(iRow==jRow && ((jCol-iCol==1)||(iCol-jCol==1))){
                link_matrix[i][j]=1;
            }
            //i, j are neighbors on the vertical level
            else if(iCol==jCol && ((iRow-jRow==1)||(jRow-iRow==1))){
                link_matrix[i][j]=1;
            }
            else{
                link_matrix[i][j]=0;
            }
        }
    }
}

void RingGen(int N, vector<vector<int> > &link_matrix){
    for(int i=0; i<N; i++){
        for(int j=0; j<N; j++){
            if((i-j==1)||(j-i==1)||(i-j==N-1)||(j-i==N-1)){
                link_matrix[i][j]=1;
            }
            else{
                link_matrix[i][j]=0;
            }
        }
    }
}

void FullConnectGen(int N, vector<vector<int> > &link_matrix){
    for(int i=0; i<N; i++){
        for(int j=0; j<N; j++){
            if(i!=j){
                link_matrix[i][j]=1;
            }
            else{
                link_matrix[i][j]=0;
            }
        }
    }
}

