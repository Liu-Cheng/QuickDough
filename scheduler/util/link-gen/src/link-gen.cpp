#include <iostream>
#include <vector>
#include <fstream>
#include <sstream>

void Torus_Gen(int N, int Row, int Col, std::vector<std::vector<int> > &Link_Mat);
void Mesh_Gen(int N, int Row, int Col, std::vector<std::vector<int> > &Link_Mat);
void Ring_Gen(int N, std::vector<std::vector<int> > &Link_Mat);
void Full_Connect_Gen(int N, std::vector<std::vector<int> > &Link_Mat);

int main(){

    int Topology_Type;
    int Topology_Scale;
    int Array_Row;
    int Array_Col;

    std::cout<<"Topology Auto Generation"<<endl;
    cout<<"Topology Type 0: 2D Torus"<<endl;
    cout<<"Topology Type 1: 2D Mesh"<<endl;
    cout<<"Topology Type 2: Ring"<<endl;
    cout<<"Topology Type 3: Full Connect"<<endl;
    cout<<"Choose the Topology Type!"<<endl;
    cin>>Topology_Type;
    cout<<"Input Topology Scale!"<<endl;
    cin>>Topology_Scale;
    cout<<"Input Array Row if necessary!"<<endl;
    cin>>Array_Row;
    cout<<"Input Array Col if necessary!"<<endl;
    cin>>Array_Col;

    int N=Topology_Scale; //topology scale
    int Row=Array_Row;
    int Col=Array_Col;
    vector<vector<int> > Link_Mat;
    Link_Mat.resize(N);
    for(int i=0; i<N; i++){
        Link_Mat[i].resize(N);
    }

    if(Topology_Type==0){
        Torus_Gen(N, Row, Col, Link_Mat);
    }
    else if(Topology_Type==1){
        Mesh_Gen(N, Row, Col, Link_Mat);
    }
    else if(Topology_Type==2){
        Ring_Gen(N, Link_Mat);
    }
    else if(Topology_Type==3){
        Full_Connect_Gen(N, Link_Mat);
    }
    else{
        cout<<"Unrecognized topology!"<<endl;
    }

    //Generate corresponding topology files
    ostringstream file_name;
    ofstream file_handle;
    if(Topology_Type==0){
        file_name<<"torus_"<<N<<"_"<<Row<<"x"<<Col<<".txt";
    }
    else if(Topology_Type==1){
        file_name<<"mesh_"<<N<<"_"<<Row<<"x"<<Col<<".txt";
    }
    else if(Topology_Type==2){
        file_name<<"ring_"<<N<<".txt";
    }
    else if(Topology_Type==3){
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
            file_handle<<" "<<Link_Mat[i][j];
        }
        file_handle<<endl;
    }
}
void Torus_Gen(int N, int Row, int Col, vector<vector<int> > &Link_Mat){
    for(int i=0; i<N; i++){
        for(int j=0; j<N; j++){
            int iRow=i/Col;
            int iCol=i%Col;
            int jRow=j/Col;
            int jCol=j%Col;
            // i,j are neighbors on the horizontal level.
            if(iRow==jRow && ((jCol-iCol==1)||(iCol-jCol==1)||(jCol-iCol==Col-1)||(iCol-jCol==Col-1))){
                Link_Mat[i][j]=1;
            }
            //i, j are neighbors on the vertical level
            else if(iCol==jCol && ((iRow-jRow==1)||(jRow-iRow==1)||(iRow-jRow==Row-1)||(jRow-iRow==Row-1))){
                Link_Mat[i][j]=1;
            }
            else{
                Link_Mat[i][j]=0;
            }
        }
    }
}

void Mesh_Gen(int N, int Row, int Col, vector<vector<int> > &Link_Mat){
    for(int i=0; i<N; i++){
        for(int j=0; j<N; j++){
            int iRow=i/Col;
            int iCol=i%Col;
            int jRow=j/Col;
            int jCol=j%Col;
            // i,j are neighbors on the horizontal level.
            if(iRow==jRow && ((jCol-iCol==1)||(iCol-jCol==1))){
                Link_Mat[i][j]=1;
            }
            //i, j are neighbors on the vertical level
            else if(iCol==jCol && ((iRow-jRow==1)||(jRow-iRow==1))){
                Link_Mat[i][j]=1;
            }
            else{
                Link_Mat[i][j]=0;
            }
        }
    }
}

void Ring_Gen(int N, vector<vector<int> > &Link_Mat){
    for(int i=0; i<N; i++){
        for(int j=0; j<N; j++){
            if((i-j==1)||(j-i==1)||(i-j==N-1)||(j-i==N-1)){
                Link_Mat[i][j]=1;
            }
            else{
                Link_Mat[i][j]=0;
            }
        }
    }
}

void Full_Connect_Gen(int N, vector<vector<int> > &Link_Mat){
    for(int i=0; i<N; i++){
        for(int j=0; j<N; j++){
            if(i!=j){
                Link_Mat[i][j]=1;
            }
            else{
                Link_Mat[i][j]=0;
            }
        }
    }
}

