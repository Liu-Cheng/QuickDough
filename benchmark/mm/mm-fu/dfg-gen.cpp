#include "common.h"
#include "Operand.h"
#include "Instruction.h"
#include "config.h"
#include <cstdlib>
#include <list>

Operand* Create_OP(std::vector<Operand*> &OP_Array, int OP_Val, int Bram_ID, int &Bram_Addr, Operand_Type OP_Type);
void IO_Init(int A_In[N][N], int B_In[N][N], int C_Out[N][N]);
void OP_Array_Init(std::vector<Operand*> &OP_Array, int A_In[N][N], int B_In[N][N], int C_Out[N][N]);
void Kernel_To_DFG(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array);
void DFG_Compute(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array);
void Verify(const std::vector<Operand*> &OP_Array, int C_Out[N][N]);
void DFG_Dump(const std::string &DFG_Name, const std::vector<Operand*> &OP_Array, const std::vector<Instruction*> &Inst_Array);
int Data_To_ID(std::string Name, int IDx, int IDy);
void Head_File_Dump(int A_In[N][N], int B_In[N][N], int C_Out[N][N]);
void Initial_IO_Placement(const std::string &DFG_Name);
void Loop_Stat(const std::vector<Operand*> &OP_Array, const std::vector<Instruction*> &Inst_Array);

int Const_In[1]={0};
int Const_Num=1;

int main(){

    int A_In[N][N];
    int B_In[N][N];
    int C_Out[N][N];

    std::vector<Operand*> OP_Array;
    std::vector<Instruction*> Inst_Array;
    std::string DFG_Name="mm";

    IO_Init(A_In, B_In, C_Out);
    OP_Array_Init(OP_Array, A_In, B_In, C_Out);
    Kernel_To_DFG(OP_Array, Inst_Array);
    DFG_Compute(OP_Array, Inst_Array);
    Verify(OP_Array, C_Out);
    DFG_Dump(DFG_Name, OP_Array, Inst_Array);
    Initial_IO_Placement(DFG_Name);
    Head_File_Dump(A_In, B_In, C_Out);
    Loop_Stat(OP_Array, Inst_Array);

}

void Head_File_Dump(int A_In[N][N], int B_In[N][N], int C_Out[N][N]){

    std::string fName = "./dump/IO.h";
    std::ofstream fHandle;
    fHandle.open(fName.c_str());
    if(!fHandle.is_open()){
        std::cout << fName << "open error!" << std::endl;
        exit(EXIT_FAILURE);
    }

    fHandle << "#ifndef _IO_H_" << std::endl;
    fHandle << "#define _IO_H_" << std::endl << std::endl;

    fHandle << "int Const_In[" << Const_Num << "] = {";
    for(int i=0; i<Const_Num; i++){
        if(i==Const_Num-1){
            fHandle << Const_In[i];
        }
        else{
            fHandle << Const_In[i] <<", ";
        }
    }
    fHandle << "};" << std::endl;
    fHandle << "int A_In[" << N << "][" << N << "];" << std::endl;
    fHandle << "int B_In[" << N << "][" << N << "];" << std::endl;
    fHandle << "int C_Out[" << N << "][" << N << "];" << std::endl;

    fHandle << std::endl << "#endif" << std::endl;

}

void IO_Init(int A_In[N][N], int B_In[N][N], int C_Out[N][N]){

    for(int i=0; i<N; i++){
        for(int j=0; j<N; j++){
            A_In[i][j] = rand()%10;
            B_In[i][j] = rand()%10;
        }
    }

    for(int i=0; i<N; i++){
        for(int j=0; j<N; j++){
            C_Out[i][j] = 0;
            for(int k=0; k<N; k++){
                C_Out[i][j] += A_In[i][k] * B_In[k][j];
            }
        }
    }

}

Operand* Create_OP(std::vector<Operand*> &OP_Array, int OP_Val, int Bram_ID, int &Bram_Addr, Operand_Type OP_Type){

    Operand* OP_Ptr = new Operand();
    OP_Ptr->Set_Operand(OP_Val, Bram_ID, Bram_Addr, OP_Type);
    OP_Array.push_back(OP_Ptr);
    Bram_Addr++;
    return OP_Ptr;

}

void OP_Array_Init(std::vector<Operand*> &OP_Array, int A_In[N][N], int B_In[N][N], int C_Out[N][N]){

    int Bram0_Addr=0;
    int Bram1_Addr=0;

    /* ----------------------------------------------------------------
     * Note that the order that OPs are created must be strictly kept, 
     * so that we can easily figure out OP_ID for a specific array 
     * element at DFG construction stage. For example, we know OP_Array[3]
     * is actually corresponding to A_In[3-Const_Num].
     * ---------------------------------------------------------------*/
    for(int i=0; i<Const_Num; i++){
        Create_OP(OP_Array, Const_In[i], 0, Bram0_Addr, INCONST);
    }

    for(int i=0; i<N; i++){
        for(int j=0; j<N; j++){
            Create_OP(OP_Array, A_In[i][j], 0, Bram0_Addr, INVAR);
        }
    }

    for(int i=0; i<N; i++){
        for(int j=0; j<N; j++){
            Create_OP(OP_Array, B_In[i][j], 0, Bram0_Addr, INVAR);
        }
    }

    for(int i=0; i<N; i++){
        for(int j=0; j<N; j++){
            Create_OP(OP_Array, C_Out[i][j], 1, Bram1_Addr, OUTVAR);
        }
    }

}

int Data_To_ID(std::string Name, int IDx, int IDy){
    if(Name=="Const_In"){
        return IDx;
    }
    else if(Name=="A_In"){
        return Const_Num+IDx*N+IDy;
    }
    else if(Name=="B_In"){
        return Const_Num+N*N+IDx*N+IDy;
    }
    else if(Name=="C_Out"){
        return Const_Num+N*N+N*N+IDx*N+IDy;
    }
    else{
        printf("Unknown IO Element! \n");
        exit(EXIT_FAILURE);
    }
}

void Create_Inst(int Dst_ID, Opcode OP_Code, int Src0_ID, int Src1_ID, int Src2_ID, std::vector<Instruction*> &Inst_Array){

    Instruction* Inst_Ptr = new Instruction();
    Inst_Ptr->Set_Instruction(Dst_ID, OP_Code, Src0_ID, Src1_ID, Src2_ID);
    Inst_Array.push_back(Inst_Ptr);

}

void Kernel_To_DFG(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array){

    for(int i=0; i<N; i++){

        for(int j=0; j<N; j++){

            int Last_OP_ID;
            int unused=-1;
            for(int k=0; k<N; k++){
                if(k==0){
                    Operand* Dst_Ptr = Create_OP(OP_Array, unused, unused, unused, IM);
                    Create_Inst(Dst_Ptr->OP_ID, MULADD, Data_To_ID("A_In", i, k), Data_To_ID("B_In", k, j), Data_To_ID("Const_In", 0, 0), Inst_Array);
                    Last_OP_ID = Dst_Ptr->OP_ID;
                }
                else if(k<N-1){
                    Operand* Dst_Ptr = Create_OP(OP_Array, unused, unused, unused, IM);
                    Create_Inst(Dst_Ptr->OP_ID, MULADD, Data_To_ID("A_In", i, k), Data_To_ID("B_In", k, j), Last_OP_ID, Inst_Array);
                    Last_OP_ID = Dst_Ptr->OP_ID;
                }
                else{
                    Create_Inst(Data_To_ID("C_Out", i, j), MULADD, Data_To_ID("A_In", i, k), Data_To_ID("B_In", k, j), Last_OP_ID, Inst_Array);
                }
            }
        }
    }
}

void DFG_Compute(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array){

    std::vector<Instruction*>::iterator Inst_It;
    for(Inst_It=Inst_Array.begin(); Inst_It!=Inst_Array.end(); Inst_It++){
        int Src_Val0=OP_Array[(*Inst_It)->Src_OP0]->OP_Val;
        int Src_Val1=OP_Array[(*Inst_It)->Src_OP1]->OP_Val;
        int Src_Val2=OP_Array[(*Inst_It)->Src_OP2]->OP_Val;
        int Dst_Val=(*Inst_It)->Compute(Src_Val0, Src_Val1, Src_Val2);
        OP_Array[(*Inst_It)->Dst_OP]->OP_Val=Dst_Val;
    }

}


void Verify(const std::vector<Operand*> &OP_Array, int C_Out[N][N]){

    for(int i=0; i<N; i++){
        for(int j=0; j<N; j++){
            int OP_ID=Data_To_ID("C_Out", i, j);
            if(OP_Array[OP_ID]->OP_Val!=C_Out[i][j]){
                printf("DFG computation is wrong!\n");
                printf("expected[%d][%d]=%d, computed result=%d \n", i, j, C_Out[i][j], OP_Array[OP_ID]->OP_Val);
                exit(EXIT_FAILURE);
            }
        }
    }

    printf("Verification passed!\n");

}

void DFG_Dump(const std::string &DFG_Name, const std::vector<Operand*> &OP_Array, const std::vector<Instruction*> &Inst_Array){

    std::ostringstream oss;
    oss << "./dump/kernel-operand.txt";
    std::ofstream Operand_fHandle;
    Operand_fHandle.open(oss.str().c_str());
    if(!Operand_fHandle.is_open()){
        std::cout << "Failed to open " << oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    oss.clear();
    oss.str("");
    oss << "./dump/dfg.s";
    std::ofstream Inst_fHandle;
    Inst_fHandle.open(oss.str().c_str());
    if(!Inst_fHandle.is_open()){
        std::cout << "Failed to open" <<oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    oss.clear();
    oss.str("");
    oss << "./dump/kernel-opcode.txt";
    std::ofstream Opcode_fHandle;
    Opcode_fHandle.open(oss.str().c_str());
    if(!Opcode_fHandle.is_open()){
        std::cout << "Failed to open " << oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    /* Dump operand details to .txt file */
    std::vector<Operand*>::const_iterator OP_It;
    for(OP_It=OP_Array.begin(); OP_It!=OP_Array.end(); OP_It++){
        Operand_fHandle << (*OP_It)->OP_ID << " " \
            << (*OP_It)->IO_Buffer_Addr << " " \
            << (*OP_It)->OP_Val << " " \
            << (*OP_It)->IO_Buffer_ID << " " \
            << (*OP_It)->OP_Type << "\n";
    }
    Operand_fHandle.close();

    /* Dump DFG node details to .s file */
    std::map<Opcode, int> Opcode_Encoder;
    int Opcode_ID=0;
    std::vector<Instruction*>::const_iterator Inst_It;
    for(Inst_It=Inst_Array.begin(); Inst_It!=Inst_Array.end(); Inst_It++){
        Inst_fHandle << (*Inst_It)->Dst_OP << " " \
            << (*Inst_It)->Inst_Opcode << " " \
            << (*Inst_It)->Src_OP0 << " " \
            << (*Inst_It)->Src_OP1 << " " \
            << (*Inst_It)->Src_OP2 << "\n";
        if(Opcode_Encoder.count((*Inst_It)->Inst_Opcode)<=0){
            Opcode_Encoder[(*Inst_It)->Inst_Opcode]=Opcode_ID;
            Opcode_ID++;
        }
    }
    Inst_fHandle.close();

    /* Dump the opcode summary to _opcode.txt file */
    std::map<Opcode, int>::iterator Map_It;
    for(Map_It=Opcode_Encoder.begin(); Map_It!=Opcode_Encoder.end(); Map_It++){
        Opcode_fHandle << Map_It->first << std::endl;
    }
    Opcode_fHandle.close();

}


void Initial_IO_Placement(const std::string &DFG_Name){

    std::ostringstream oss;
    oss << "./dump/block-io.txt";
    std::ofstream fHandle;
    fHandle.open(oss.str().c_str());
    if(!fHandle.is_open()){
        std::cout << "Failed to open " << oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    int Remapped_Bram0_Addr = 0;
    int Remapped_Bram1_Addr = 0;
    int Const_In_Addr[1];
    int A_In_Addr[N][N];
    int B_In_Addr[N][N];
    int C_Out_Addr[N][N];
    
    Const_In_Addr[0] = Remapped_Bram0_Addr;
    Remapped_Bram0_Addr++ ;

    for(int i=0; i<N; i++){
        for(int j=0; j<N; j++){
            A_In_Addr[i][j] = Remapped_Bram0_Addr;
            Remapped_Bram0_Addr++;
        }
    }

    for(int i=0; i<N; i++){
        for(int j=0; j<N; j++){
            B_In_Addr[i][j] = Remapped_Bram0_Addr;
            Remapped_Bram0_Addr++;
        }
    }

    for(int i=0; i<N; i++){
        for(int j=0; j<N; j++){
            C_Out_Addr[i][j] = Remapped_Bram1_Addr;
            Remapped_Bram1_Addr++;
        }
    }
    
    const int Kernel_IO_Num = 1 + 3*N*N; // total number of work-item's operand
    const int Kernel_Num_Per_Block = 1; // total number of iterations of the work-item
    int Block_IO_Addr[Kernel_IO_Num][Kernel_Num_Per_Block+1]; // The first column represents kernel OP_ID

    // Here we assume that Kernel_OP_ID can be used as index directly.
    // If not, we need map this OP_ID to sequential array index.
    int It=1;
    int Row_Index;
    for(int p=0; p<Kernel_Num_Per_Block; p++){

        Row_Index = 0;

        Block_IO_Addr[Row_Index][It] = Const_In_Addr[0];
        if(p==0){
            Block_IO_Addr[Row_Index][0] = Data_To_ID("Const_In", 0, 0);
        }
        Row_Index++;

        //Normal work-item input i.e. A_In[M], B_In[M]
        for(int i=0; i<N; i++){
            for(int j=0; j<N; j++){
                Block_IO_Addr[Row_Index][It] = A_In_Addr[i][j];
                if(p==0){
                    Block_IO_Addr[Row_Index][0] = Data_To_ID("A_In", i, j);
                }
                Row_Index++;
            }
        }

        for(int i=0; i<N; i++){
            for(int j=0; j<N; j++){
                Block_IO_Addr[Row_Index][It] = B_In_Addr[i][j];
                if(p==0){
                    Block_IO_Addr[Row_Index][0] = Data_To_ID("B_In", i, j);
                }
                Row_Index++;
            }
        }

        //Normal output
        for(int i=0; i<N; i++){
            for(int j=0; j<N; j++){
                Block_IO_Addr[Row_Index][It] = C_Out_Addr[i][j];
                if(p==0){
                    Block_IO_Addr[Row_Index][0] = Data_To_ID("C_Out", i, j);
                }
                Row_Index++;
            }
        }

        //Intermediate output
        It++;
    }

    //Dump the io addr of the whole kernel
    for(int i=0; i<Kernel_IO_Num; i++){
        for(int j=0; j<Kernel_Num_Per_Block+1; j++){
            fHandle << Block_IO_Addr[i][j] << " ";
        }
        fHandle << std::endl;
    }
    fHandle.close();

}

void Loop_Stat(const std::vector<Operand*> &OP_Array, const std::vector<Instruction*> &Inst_Array){

    std::ostringstream oss;
    oss << "./dump/loop-stat.txt";
    std::ofstream fHandle;
    fHandle.open(oss.str().c_str());
    if(!fHandle.is_open()){
        std::cout << "Failed to open " << oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    fHandle << "DFG:" << std::endl;
    fHandle << "DFG-In-Num " << Const_Num + N*N + N*N << std::endl;
    fHandle << "DFG-Out-Num " << N*N << std::endl;
    fHandle << "DFG-Operation-Num " << Inst_Array.size() << std::endl;
    fHandle << "DFG-Total-Nodes " << OP_Array.size() << std::endl;
    fHandle << "Block:" << std::endl;
    fHandle << "Block-Repeating-Num " << 1 << std::endl;
    fHandle << "Block-Const-Num " << Const_Num << std::endl;
    fHandle << "Block-In-Num " << Const_Num + N*N + N*N << std::endl;
    fHandle << "Block-Out-Num " << N*N << std::endl;
    fHandle.close();

}
