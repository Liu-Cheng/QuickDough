#include "config.h"
#include "lib.h"
#include <cstdlib>
#include <list>

// To calculate the L fir output, N-1 0 should be inserted in the head of the input sequence.
void OP_Array_Init(std::vector<Operand*> &OP_Array, int Sig_In[N-1+L], int Coeff[N], int Sig_Out[L]);
void Kernel_To_DFG(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array);
void DFG_Compute(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array);
void Verify(const std::vector<Operand*> &OP_Array, int Sig_Out[L]);
void DFG_Dump(const std::string &DFG_Name, const std::vector<Operand*> &OP_Array, const std::vector<Instruction*> &Inst_Array);
int Data_To_ID(std::string Name, int IDx);
void Initial_IO_Placement(const std::string &DFG_Name);
void Head_File_Dump();
void Loop_Stat(const std::vector<Operand*> &OP_Array, const std::vector<Instruction*> &Inst_Array);


void ioInit(int sigIn[N+L-1], int coeff[N]);
void firStd(int sigIn[N+L-1], int coeff[N], int sigOut[L]);

// Operands and operations/instructions of the generated DFG
std::vector<Operand*> operandSet;
std::vector<Instruction*> instSet;

int main(){

    std::string DFG_Name = "fir";

    // Declare the input/output of the loop kernel
    int sig_in[N-1+L];
    int sig_out[L];
    int coeff[N];

    // Input initialization  
    ioInit(sigIn, coeff);
    firStd(sigIn, coeff, sigOut);

    // Kernel to DFG
    loopKernelToDFG(sigIn, coeff, sigOut);

    DFG_Compute(OP_Array, Inst_Array);

    Verify(OP_Array, Sig_Out);

    DFG_Dump(DFG_Name, OP_Array, Inst_Array);

    Initial_IO_Placement(DFG_Name);

    Head_File_Dump();

    Loop_Stat(OP_Array, Inst_Array);

}

void ioInit(int sigIn[N+L-1], int coeff[N]){

    for(int i=0; i<N+L-1; i++){
        if(i<N-1){
            sigIn[i] = 0;
        } else {
            sigIn[i] = rand()%10;
        }
    }

    for(int i=0; i<N-1; i++){
        coeff[i] = rand()%10;
    }

}

void firStd(int sigIn[N+L-1], int coeff[N], int sigOut[L]){

    for(int i=0; i<L; i++){
        sigOut[i] = 0;
        for(int j=0; j<N; j++){
            sigOut[i] += coeff[j] * sigIn[i-j+N-1];
        }
    }

}

void OP_Array_Init(std::vector<Operand*> &OP_Array, int Sig_In[N+L-1], int Coeff[N], int Sig_Out[L]){

    int Bram0_Addr=0;
    int Bram1_Addr=0;

    for(int i=0; i<Const_Num; i++){
        Operand* op_ptr = new Operand();
        op_ptr->Set_Operand(Const_In[i], 0, Bram0_Addr, INCONST);
        Bram0_Addr++;
        OP_Array.push_back(op_ptr);
    }
    
    /* map input data to OP_Array */
    for(int i=0; i<N+L-1; i++){
        Operand* op_ptr = new Operand();
        op_ptr->Set_Operand(Sig_In[i], 0, Bram0_Addr, INVAR);
        Bram0_Addr++;
        OP_Array.push_back(op_ptr);
    }

    for(int i=0; i<N; i++){
        Operand* op_ptr = new Operand();
        op_ptr->Set_Operand(Coeff[i], 0, Bram0_Addr, INVAR);
        Bram0_Addr++;
        OP_Array.push_back(op_ptr);
    }

    /* map output data to OP_Array */
    for(int i=0; i<L; i++){
        Operand* op_ptr=new Operand();
        op_ptr->Set_Operand(0, 1, Bram1_Addr, OUTVAR);
        Bram1_Addr++;
        OP_Array.push_back(op_ptr);
    }

}

int Data_To_ID(std::string Name, int IDx){

    if(Name=="Const_In"){
        return (IDx);
    }
    else if(Name=="Sig_In"){
        return (IDx+Const_Num);
    }
    else if(Name=="Coeff"){
        return (IDx+Const_Num+N+L-1);
    }
    else if(Name=="Sig_Out"){
        return (IDx+Const_Num+N+L+N-1);
    }
    else{
        printf("Unknown IO operands! \n");
        exit(EXIT_FAILURE);
    }

}

void LoopKernelToDFG(){

    for(int i=N-1; i<N+L-1; i++){

        Operand* OP_Result;
        Operand* Last_OP;
        for(int j=0; j<N; j++){

            Instruction* Inst_Result = new Instruction();
            if(j==0){
                OP_Result = new Operand();
                OP_Array.push_back(OP_Result);
                Inst_Result->Set_Instruction(OP_Result->OP_ID, MULADD, Data_To_ID("Coeff", j), Data_To_ID("Sig_In", i-j), Data_To_ID("Const_In", 0));
                Inst_Array.push_back(Inst_Result);
                Last_OP = OP_Result;
            }
            else if(j<N-1){
                OP_Result = new Operand();
                OP_Array.push_back(OP_Result);
                Inst_Result->Set_Instruction(OP_Result->OP_ID, MULADD, Data_To_ID("Coeff", j), Data_To_ID("Sig_In", i-j), Last_OP->OP_ID);
                Inst_Array.push_back(Inst_Result);
                Last_OP = OP_Result;
            }
            else{
                Inst_Result->Set_Instruction(Data_To_ID("Sig_Out", i-N+1), MULADD, Data_To_ID("Coeff", j), Data_To_ID("Sig_In", i-j), Last_OP->OP_ID);
                Inst_Array.push_back(Inst_Result);
            }

        }
        
    }
}

void DFG_Compute(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array){
    std::vector<Instruction*>::iterator Inst_It;
    for(Inst_It=Inst_Array.begin(); Inst_It!=Inst_Array.end(); Inst_It++){
        int src_val0=OP_Array[(*Inst_It)->Src_OP0]->OP_Val;
        int src_val1=OP_Array[(*Inst_It)->Src_OP1]->OP_Val;
        int src_val2=OP_Array[(*Inst_It)->Src_OP2]->OP_Val;
        int dst_val=(*Inst_It)->Compute(src_val0, src_val1, src_val2);
        OP_Array[(*Inst_It)->Dst_OP]->OP_Val=dst_val;
    }
}


void Verify(const std::vector<Operand*> &OP_Array, int Sig_Out[L]){
    for(int i=0; i<L; i++){
        int OP_ID=Data_To_ID("Sig_Out", i);
        if(OP_Array[OP_ID]->OP_Val!=Sig_Out[i]){
            printf("DFG computation is wrong!\n");
            printf("expected[%d]=%d, computed result=%d \n", i, Sig_Out[i], OP_Array[OP_ID]->OP_Val);
            exit(EXIT_FAILURE);
        }
    }

    printf("Verification passed!\n");
}



void DFG_Dump(const std::string &DFG_Name, const std::vector<Operand*> &OP_Array, const std::vector<Instruction*> &Inst_Array){
    std::ostringstream oss;
    oss << "./dump/kernel-operand.txt";
    std::ofstream operand_fhandle;
    operand_fhandle.open(oss.str().c_str());
    if(!operand_fhandle.is_open()){
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
        operand_fhandle << (*OP_It)->OP_ID << " " \
            << (*OP_It)->IO_Buffer_Addr << " " \
            << (*OP_It)->OP_Val << " " \
            << (*OP_It)->IO_Buffer_ID << " " \
            << (*OP_It)->OP_Type << "\n";
    }
    operand_fhandle.close();

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
    int Const_In_Addr[Const_Num];
    int Sig_In_Addr[N-1+B];
    int Coeff_Addr[N];
    int Sig_Out_Addr[B];
    
    for(int i=0; i<Const_Num; i++){
        Const_In_Addr[i] = Remapped_Bram0_Addr;
        Remapped_Bram0_Addr++ ;
    }

    for(int i=0; i<N+B-1; i++){
        Sig_In_Addr[i] = Remapped_Bram0_Addr;
        Remapped_Bram0_Addr++ ;
    }

    for(int i=0; i<N; i++){
        Coeff_Addr[i] = Remapped_Bram0_Addr;
        Remapped_Bram0_Addr++;
    }

    for(int i=0; i<B; i++){
        Sig_Out_Addr[i] = Remapped_Bram1_Addr;
        Remapped_Bram1_Addr++;
    }
    
    const int Kernel_IO_Num = Const_Num + (N+L-1+N) + L; 
    const int Kernel_Num_Per_Block = B/L; 
    int Kernel_IO_Addr[Kernel_IO_Num][Kernel_Num_Per_Block+1]; 

    // Here we assume that work_item_OP_ID can be used as index directly.
    // If not, we need map this OP_ID to sequential array index.
    int it=1;
    int Row_Index;
    for(int p=0; p<Kernel_Num_Per_Block; p++){

        Row_Index = 0;

        // Constant input of a DFG
        for(int i=0; i<Const_Num; i++){
            Kernel_IO_Addr[Row_Index][it] = Const_In_Addr[i];
            if(p==0){
                Kernel_IO_Addr[Row_Index][0] = Data_To_ID("Const_In", i);
            }
            Row_Index++;
        }

        // Normal DFG input i.e. Sig_In[N+L-1]
        for(int i=0; i<N+L-1; i++){
            Kernel_IO_Addr[Row_Index][it] = Sig_In_Addr[p*L+i];
            if(p==0){
                Kernel_IO_Addr[Row_Index][0] = Data_To_ID("Sig_In", i);
            }
            Row_Index++;
        }

        // The N coeffient data of the input, and it is needed in each iteration.
        for(int i=0; i<N; i++){
            Kernel_IO_Addr[Row_Index][it] = Coeff_Addr[i];
            if(p==0){
                Kernel_IO_Addr[Row_Index][0] = Data_To_ID("Coeff", i);
            }
            Row_Index++;
        }

        //Normal output
        for(int i=0; i<L; i++){
            Kernel_IO_Addr[Row_Index][it] = Sig_Out_Addr[p*L+i];
            if(p==0){
                Kernel_IO_Addr[Row_Index][0] = Data_To_ID("Sig_Out", i);
            }
            Row_Index++;
        }

        //Intermediate output

        it++;
    }


    //Dump the io addr of the whole kernel
    for(int i=0; i<Kernel_IO_Num; i++){
        for(int j=0; j<Kernel_Num_Per_Block+1; j++){
            fHandle << Kernel_IO_Addr[i][j] << " ";
        }
        fHandle << std::endl;
    }
    fHandle.close();

}

void Head_File_Dump(){

    int Block_Sig_In[N+B-1];
    int Coeff[N];
    int Block_Sig_Out[B];

    for(int i=0; i<N+B-1; i++){
        if(i<N){
            Block_Sig_In[i] = 0;
        }
        else{
            Block_Sig_In[i] = rand()%10;
        }
    }

    for(int i=0; i<N; i++){
        Coeff[i] = rand()%10;
    }

    for(int i=0; i<B; i++){
        Block_Sig_Out[i] = 0;
        for(int j=0; j<N; j++){
            Block_Sig_Out[i] += Block_Sig_In[i+N-j] * Coeff[j];
        }
    }

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
            fHandle << Const_In[i] << "};" << std::endl;
        }
        else{
            fHandle << Const_In[i] <<", ";
        }
    }

    fHandle << "int Block_Sig_In[" << N+B-1 << "];" << std::endl;
    fHandle << "int Coeff[" << N << "];" << std::endl;
    fHandle << "int Block_Sig_Out[" << B << "];" << std::endl;

    fHandle << std::endl << "#endif" << std::endl;

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

    fHandle << "DFG_In_Num " << Const_Num + N + N - 1 + L << std::endl;
    fHandle << "DFG_Out_Num " << L << std::endl;
    fHandle << "DFG_Operation_Num " << Inst_Array.size() << std::endl;
    fHandle << "DFG_Total_Nodes " << OP_Array.size() << std::endl;
    fHandle << "Block_Repeat_Num " << B/L << std::endl;
    fHandle << "Block_Reuse_Num " << Const_Num + N + N - 1 << std::endl;
    fHandle << "Block_In_Num " << Const_Num + N + N - 1 + B << std::endl;
    fHandle << "Block_Out_Num " << B << std::endl;
    fHandle.close();

}
