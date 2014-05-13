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

void IO_coe_Dump(int Sig_In[L], int Coeff[N], int Sig_Out[L]);

void Single_Dec_Dump(std::ofstream &fHandle, unsigned int Dec_Data, int Width);

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
    IO_coe_Dump(Sig_In, Coeff, Sig_Out);

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
                Inst_Ptr->Set_Instruction(OP_Ptr->op_id, MULADD, Data_To_ID("Coeff", j), Data_To_ID("Sig_In", i-j), Data_To_ID("Const_In", 0));
                Inst_Array.push_back(Inst_Ptr);
                Last_OP_ID = OP_Ptr->op_id;
            }
            else if(i>=j && j<N-1){
                OP_Ptr = new Operand();
                OP_Array.push_back(OP_Ptr);
                Inst_Ptr = new Instruction();
                Inst_Ptr->Set_Instruction(OP_Ptr->op_id, MULADD, Data_To_ID("Coeff", j), Data_To_ID("Sig_In", i-j), Last_OP_ID);
                Inst_Array.push_back(Inst_Ptr);
                Last_OP_ID =  OP_Ptr->op_id;
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

    std::vector<Instruction*>::iterator inst_it;
    for(inst_it=Inst_Array.begin(); inst_it!=Inst_Array.end(); inst_it++){
        int src_val0=OP_Array[(*inst_it)->src_op0]->op_value;
        int src_val1=OP_Array[(*inst_it)->src_op1]->op_value;
        int src_val2=OP_Array[(*inst_it)->src_op2]->op_value;
        int dst_val=(*inst_it)->Compute(src_val0, src_val1, src_val2);
        OP_Array[(*inst_it)->dst_op]->op_value=dst_val;
    }

}


void Verify(const std::vector<Operand*> &OP_Array, int Sig_Out[L]){
    for(int i=0; i<L; i++){
        int op_id=Data_To_ID("Sig_Out", i);
        if(OP_Array[op_id]->op_value!=Sig_Out[i]){
            printf("DFG computation is wrong!\n");
            printf("expected[%d]=%d, computed result=%d \n", i, Sig_Out[i], OP_Array[op_id]->op_value);
            exit(EXIT_FAILURE);
        }
    }

    printf("Verification passed!\n");
}



void DFG_Dump(const std::string &DFG_Name, const std::vector<Operand*> &OP_Array, const std::vector<Instruction*> &Inst_Array){

    std::ostringstream oss;
    oss << "./dump/" << DFG_Name << "_operand.txt";
    std::ofstream operand_fhandle;
    operand_fhandle.open(oss.str().c_str());
    if(!operand_fhandle.is_open()){
        std::cout << "Failed to open " << oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    oss.clear();
    oss.str("");
    oss << "./dump/" << DFG_Name << ".s";
    std::ofstream inst_fhandle;
    inst_fhandle.open(oss.str().c_str());
    if(!inst_fhandle.is_open()){
        std::cout << "Failed to open" <<oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    oss.clear();
    oss.str("");
    oss << "./dump/" << DFG_Name << "_opcode.txt";
    std::ofstream opcode_fhandle;
    opcode_fhandle.open(oss.str().c_str());
    if(!opcode_fhandle.is_open()){
        std::cout << "Failed to open " << oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    /* Dump operand details to .txt file */
    std::vector<Operand*>::const_iterator op_it;
    for(op_it=OP_Array.begin(); op_it!=OP_Array.end(); op_it++){
        operand_fhandle << (*op_it)->op_id << " " 
            << (*op_it)->op_bram_addr << " " 
            << (*op_it)->op_value << " " 
            << (*op_it)->op_bram_id << " " 
            << (*op_it)->op_type << "\n";
    }
    operand_fhandle.close();

    /* Dump DFG node details to .s file */
    std::map<OPCODE, int> opcode_encoder;
    int opcode_id=0;
    std::vector<Instruction*>::const_iterator inst_it;
    for(inst_it=Inst_Array.begin(); inst_it!=Inst_Array.end(); inst_it++){
        inst_fhandle << (*inst_it)->dst_op << " " 
            << (*inst_it)->inst_opcode << " " 
            << (*inst_it)->src_op0 << " " 
            << (*inst_it)->src_op1 << " "
            << (*inst_it)->src_op2 << "\n";
        if(opcode_encoder.count((*inst_it)->inst_opcode)<=0){
            opcode_encoder[(*inst_it)->inst_opcode]=opcode_id;
            opcode_id++;
        }
    }
    inst_fhandle.close();

    /* Dump the opcode summary to _opcode.txt file */
    std::map<OPCODE, int>::iterator map_it;
    for(map_it=opcode_encoder.begin(); map_it!=opcode_encoder.end(); map_it++){
        opcode_fhandle << map_it->first << " " << map_it->second << std::endl;
    }
    opcode_fhandle.close();

}

void Head_File_Dump(int Sig_In[L], int Coeff[N], int Sig_Out[L]){

    std::string fName = "./dump/io.h";
    std::ofstream fHandle;
    fHandle.open(fName.c_str());
    if(!fHandle.is_open()){
        std::cout << fName << "open error!" << std::endl;
        exit(EXIT_FAILURE);
    }

    fHandle << "// Input and output data of the benchmark" << std::endl << std::endl;
    fHandle << "int Const_In[" << Const_Num << "] = {";
    for(int i=0; i<Const_Num; i++){
        if(i==Const_Num-1){
            fHandle << Const_In[i] << "};" << std::endl << std::endl;
        }
        else{
            fHandle << Const_In[i] <<", ";
        }
    }

    fHandle << "int Sig_In[" << L << "]={";
    for(int i=0; i<L; i++){
        if(i==L-1){
            fHandle << Sig_In[i] << "};" << std::endl << std::endl;
        }
        else{
            fHandle << Sig_In[i] <<", ";
        }
    }

    fHandle << "int Coeff[" << N << "]={";
    for(int i=0; i<N; i++){
        if(i==N-1){
            fHandle << Coeff[i] << "};" << std::endl << std::endl;
        }
        else{
            fHandle << Coeff[i] <<", ";
        }
    }

    fHandle << "int Sig_Out[" << L << "]={";
    for(int i=0; i<L; i++){
        if(i==L-1){
            fHandle << Sig_Out[i] << "};" << std::endl << std::endl;
        }
        else{
            fHandle << Sig_Out[i] <<", ";
        }
    }

}

void IO_coe_Dump(int Sig_In[L], int Coeff[N], int Sig_Out[L]){

    int Width = 32;
    std::string fName = "./dump/outside-data-memory-0.coe";
    std::ofstream fHandle;
    fHandle.open(fName.c_str());
    if(!fHandle.is_open()){
        std::cout << fName << "open error!" << std::endl;
        exit(EXIT_FAILURE);
    }

    fHandle << "memory_initialization_radix=2;" << std::endl;
    fHandle << "memory_initialization_vector=" << std::endl;
    for(int i=0; i<Const_Num; i++){
        Single_Dec_Dump(fHandle, (unsigned int)Const_In[i], Width);
    }

    for(int i=0; i<L; i++){
        Single_Dec_Dump(fHandle, (unsigned int) Sig_In[i], Width);
    }

    for(int i=0; i<N; i++){
        Single_Dec_Dump(fHandle, (unsigned int) Coeff[i], Width);
    }
    fHandle.close();

    fName = "./dump/outside-data-memory-1.coe";
    fHandle.open(fName.c_str());
    if(!fHandle.is_open()){
        std::cout << fName << "open error!" << std::endl;
        exit(EXIT_FAILURE);
    }

    fHandle << "memory_initialization_radix=2;" << std::endl;
    fHandle << "memory_initialization_vector=" << std::endl;
    for(int i=0; i<L; i++){
        Single_Dec_Dump(fHandle, (unsigned int)Sig_Out[i], Width);
    }
    fHandle.close();

}

void Single_Dec_Dump(std::ofstream &fHandle, unsigned int Dec_Data, int Width){

    std::list<int> Bit_List;
    std::list<int>::reverse_iterator rit;
    while(Dec_Data!=1 && Dec_Data!=0){
        Bit_List.push_back(Dec_Data%2);
        Dec_Data = Dec_Data/2;
        Width--;
    }
    Bit_List.push_back(Dec_Data);
    Width--;

    while(Width!=0){
        Bit_List.push_back(0);
        Width--;
    }

    for(rit=Bit_List.rbegin(); rit!=Bit_List.rend(); rit++){
        fHandle << (*rit);
    }
    Bit_List.clear();
    fHandle << std::endl;

}

void Initial_IO_Placement(const std::string &DFG_Name){

    std::ostringstream oss;
    oss << "./dump/" << DFG_Name << "_kernel_io.txt";
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
    
    const int Work_Item_IO_Num = Const_Num + L + N + L; // total number of work-item's operand
    const int Kernel_It_Num = 1; // total number of iterations of the work-item
    int Kernel_IO_Addr[Work_Item_IO_Num][Kernel_It_Num+1]; // The first column represents kernel op_id

    // Here we assume that work_item_op_id can be used as index directly.
    // If not, we need map this op_id to sequential array index.
    int It=1;
    int Row_Index;
    for(int p=0; p<Kernel_It_Num; p++){

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
    for(int i=0; i<Work_Item_IO_Num; i++){
        for(int j=0; j<Kernel_It_Num+1; j++){
            fHandle << Kernel_IO_Addr[i][j] << " ";
        }
        fHandle << std::endl;
    }
    fHandle.close();

}

