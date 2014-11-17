#include "common.h"
#include "Operand.h"
#include "Instruction.h"
#include "config.h"
#include <cstdlib>
#include <list>

void IO_Init(int Sig_In[L], int Coeff[N], int Sig_Out[L]);

void OP_Array_Init(std::vector<Operand*> &OP_Array, int Sig_In[L], int Coeff[N], int Sig_Out[L]);

void Kernel_To_DFG(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array);

void DFG_Compute(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array);

void Verify(const std::vector<Operand*> &OP_Array, int Sig_Out[L]);

void DFG_Dump(const std::string &DFG_Name, const std::vector<Operand*> &OP_Array, const std::vector<Instruction*> &Inst_Array);

int Data_To_ID(std::string Name, int IDx);

void Head_File_Dump(int Sig_In[L], int Coeff[N], int Sig_Out[L]);

void Initial_IO_Placement(const std::string &DFG_Name);

const int Const_Num = 1;
int Const_In[1]={0};

int main(){

    int Sig_In[L];
    int Coeff[N];
    int Sig_Out[L];

    std::vector<Operand*> OP_Array;
    std::vector<Instruction*> Inst_Array;
    std::string DFG_Name="fir";

    IO_Init(Sig_In, Coeff, Sig_Out);
    OP_Array_Init(OP_Array, Sig_In, Coeff, Sig_Out);
    Kernel_To_DFG(OP_Array, Inst_Array);
    DFG_Compute(OP_Array, Inst_Array);
    Verify(OP_Array, Sig_Out);
    DFG_Dump(DFG_Name, OP_Array, Inst_Array);
    Initial_IO_Placement(DFG_Name);
    Head_File_Dump(Sig_In, Coeff, Sig_Out);

}

void IO_Init(int Sig_In[L], int Coeff[N], int Sig_Out[L]){

    for(int i=0; i<L; i++){
        Sig_In[i] = rand()%10;
    }

    for(int i=0; i<N; i++){
        Coeff[i] = rand()%10;
    }

    for(int i=0; i<L; i++){
        Sig_Out[i] = 0;
        for(int j=0; j<N; j++){
            if(i>=j){
                Sig_Out[i] += Sig_In[i-j] * Coeff[j];
            }
        }
    }
}

void OP_Array_Init(std::vector<Operand*> &OP_Array, int Sig_In[L], int Coeff[N], int Sig_Out[L]){

    int Bram0_Addr=0;
    int Bram1_Addr=0;

    // Input operands
    for(int i=0; i<Const_Num; i++){
        Operand* OP_Ptr = new Operand();
        OP_Ptr->Set_Operand(Const_In[i], 0, Bram0_Addr, INCONST);
        Bram0_Addr++;
        OP_Array.push_back(OP_Ptr);
    }
    
    for(int i=0; i<L; i++){
        Operand* OP_Ptr = new Operand();
        OP_Ptr->Set_Operand(Sig_In[i], 0, Bram0_Addr, INVAR);
        Bram0_Addr++;
        OP_Array.push_back(OP_Ptr);
    }

    for(int i=0; i<N; i++){
        Operand* OP_Ptr = new Operand();
        OP_Ptr->Set_Operand(Coeff[i], 0, Bram0_Addr, INVAR);
        Bram0_Addr++;
        OP_Array.push_back(OP_Ptr);
    }

    // Output operands
    for(int i=0; i<L; i++){
        Operand* OP_Ptr=new Operand();
        OP_Ptr->Set_Operand(0, 1, Bram1_Addr, OUTVAR);
        Bram1_Addr++;
        OP_Array.push_back(OP_Ptr);
    }

}

int Data_To_ID(std::string Name, int IDx){

    if(Name=="Const_In"){
        return IDx;
    }
    else if(Name=="Sig_In"){
        return (Const_Num + IDx);
    }
    else if(Name=="Coeff"){
        return (Const_Num + L + IDx);
    }
    else if(Name=="Sig_Out"){
        return (Const_Num + L + N + IDx);
    }
    else{
        printf("Unknown IO operands! \n");
        return (EXIT_FAILURE);
    }

}


void Kernel_To_DFG(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array){

    for(int i=0; i<L; i++){
        Operand* OP_Ptr;
        Instruction* Inst_Ptr;
        int Last_OP_ID;
        for(int j=0; j<N; j++){
            if(j==0){
                OP_Ptr = new Operand();
                OP_Array.push_back(OP_Ptr);
                Inst_Ptr = new Instruction();
                Inst_Ptr->Set_Instruction(OP_Ptr->OP_ID, MULADD, Data_To_ID("Coeff", j), Data_To_ID("Sig_In", i-j), Data_To_ID("Const_In", 0));
                Inst_Array.push_back(Inst_Ptr);
                Last_OP_ID = OP_Ptr->OP_ID;
            }
            else if(i>=j && j<N-1){
                OP_Ptr = new Operand();
                OP_Array.push_back(OP_Ptr);
                Inst_Ptr = new Instruction();
                Inst_Ptr->Set_Instruction(OP_Ptr->OP_ID, MULADD, Data_To_ID("Coeff", j), Data_To_ID("Sig_In", i-j), Last_OP_ID);
                Inst_Array.push_back(Inst_Ptr);
                Last_OP_ID =  OP_Ptr->OP_ID;
            }
            else if(i>=j && j==N-1){
                Inst_Ptr = new Instruction();
                Inst_Ptr->Set_Instruction(Data_To_ID("Sig_Out", i), MULADD, Data_To_ID("Coeff", j), Data_To_ID("Sig_In", i-j), Last_OP_ID);
                Inst_Array.push_back(Inst_Ptr);
            }
            else if(i<j && j==N-1){
                Inst_Ptr = new Instruction();
                Inst_Ptr->Set_Instruction(Data_To_ID("Sig_Out", i), MULADD, Data_To_ID("Const_In", 0), Data_To_ID("Const_In", 0), Last_OP_ID);
                Inst_Array.push_back(Inst_Ptr);
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
    std::ofstream inst_fhandle;
    inst_fhandle.open(oss.str().c_str());
    if(!inst_fhandle.is_open()){
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
        operand_fhandle << (*OP_It)->OP_ID << " " 
            << (*OP_It)->IO_Buffer_Addr << " " 
            << (*OP_It)->OP_Val << " " 
            << (*OP_It)->IO_Buffer_ID << " " 
            << (*OP_It)->OP_Type << "\n";
    }
    operand_fhandle.close();

    /* Dump DFG node details to .s file */
    std::map<Opcode, int> Opcode_Encoder;
    int Opcode_ID=0;
    std::vector<Instruction*>::const_iterator Inst_It;
    for(Inst_It=Inst_Array.begin(); Inst_It!=Inst_Array.end(); Inst_It++){
        inst_fhandle << (*Inst_It)->Dst_OP << " " 
            << (*Inst_It)->Inst_Opcode << " " 
            << (*Inst_It)->Src_OP0 << " " 
            << (*Inst_It)->Src_OP1 << " "
            << (*Inst_It)->Src_OP2 << "\n";
        if(Opcode_Encoder.count((*Inst_It)->Inst_Opcode)<=0){
            Opcode_Encoder[(*Inst_It)->Inst_Opcode]=Opcode_ID;
            Opcode_ID++;
        }
    }
    inst_fhandle.close();

    /* Dump the opcode summary to _opcode.txt file */
    std::map<Opcode, int>::iterator Map_It;
    for(Map_It=Opcode_Encoder.begin(); Map_It!=Opcode_Encoder.end(); Map_It++){
        Opcode_fHandle << Map_It->first << std::endl;
    }
    Opcode_fHandle.close();

}

void Head_File_Dump(int Sig_In[L], int Coeff[N], int Sig_Out[L]){

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

    fHandle << "int Sig_In[" << L << "];" << std::endl;
    fHandle << "int Coeff[" << N << "];" << std::endl;
    fHandle << "int Sig_Out[" << L <<"];" << std::endl;

    fHandle << std::endl << "#endif" << std::endl;

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
    int Sig_In_Addr[L];
    int Coeff_Addr[N];
    int Sig_Out_Addr[L];
    
    for(int i=0; i<Const_Num; i++){
        Const_In_Addr[i] = Remapped_Bram0_Addr;
        Remapped_Bram0_Addr++;
    }

    for(int i=0; i<L; i++){
        Sig_In_Addr[i] = Remapped_Bram0_Addr;
        Remapped_Bram0_Addr++;
    }

    for(int i=0; i<N; i++){
        Coeff_Addr[i] = Remapped_Bram0_Addr;
        Remapped_Bram0_Addr++;
    }

    for(int i=0; i<L; i++){
        Sig_Out_Addr[i] = Remapped_Bram1_Addr;
        Remapped_Bram1_Addr++;
    }
    
    const int Kernel_IO_Num = Const_Num + L + N + L; // total number of work-item's operand
    const int Kernel_Num_Per_Block = 1; // total number of iterations of the work-item
    int Kernel_IO_Addr[Kernel_IO_Num][Kernel_Num_Per_Block+1]; // The first column represents kernel OP_ID

    // Here we assume that work_item_OP_ID can be used as index directly.
    // If not, we need map this OP_ID to sequential array index.
    int It=1;
    int Row_Index;
    for(int p=0; p<Kernel_Num_Per_Block; p++){

        Row_Index = 0;
        for(int i=0; i<Const_Num; i++){
            Kernel_IO_Addr[Row_Index][It] = Const_In_Addr[i];
            if(p==0){
                Kernel_IO_Addr[Row_Index][0] = Data_To_ID("Const_In", 0);
            }
            Row_Index++;
        }

        //Normal work-item input i.e. Sig_In[L], Coeff[N]
        for(int i=0; i<L; i++){
            Kernel_IO_Addr[Row_Index][It] = Sig_In_Addr[i];
            if(p==0){
                Kernel_IO_Addr[Row_Index][0] = Data_To_ID("Sig_In", i);
            }
            Row_Index++;
        }

        for(int i=0; i<N; i++){
            Kernel_IO_Addr[Row_Index][It] = Coeff_Addr[i];
            if(p==0){
                Kernel_IO_Addr[Row_Index][0] = Data_To_ID("Coeff", i);
            }
            Row_Index++;
        }

        //Normal output
        for(int i=0; i<L; i++){
            Kernel_IO_Addr[Row_Index][It] = Sig_Out_Addr[i];
            if(p==0){
                Kernel_IO_Addr[Row_Index][0] = Data_To_ID("Sig_Out", i);
            }
            Row_Index++;
        }

        //Intermediate output
        It++;
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

