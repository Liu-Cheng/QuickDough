#include "common.h"
#include "Operand.h"
#include "Instruction.h"
#include "config.h"
#include <cstdlib>
#include <list>

void IO_Init(int Sig_In[N+L], int Coeff[N], int Sig_Out[L]);
void OP_Array_Init(std::vector<Operand*> &OP_Array, int Sig_In[N+L], int Coeff[N], int Sig_Out[L]);
void Kernel_To_DFG(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array);
void DFG_Compute(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array);
void Verify(const std::vector<Operand*> &OP_Array, int Sig_Out[L]);
void DFG_Dump(const std::string &DFG_Name, const std::vector<Operand*> &OP_Array, const std::vector<Instruction*> &Inst_Array);
int Data_To_ID(std::string Name, int IDx);
void Initial_IO_Placement(const std::string &DFG_Name);
void Head_File_Dump();
void IO_coe_Dump(int Block_Sig_In[N+B], int Block_Coeff[N], int Block_Sig_Out[B]);
void Single_Dec_Dump(std::ofstream &fHandle, unsigned int Dec_Data, int Width);

const int Const_Num = 1;
int Const_In[Const_Num]={0};

int main(){

    int Sig_In[N+L];
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

    Head_File_Dump();

}

void IO_Init(int Sig_In[N+L], int Coeff[N], int Sig_Out[L]){

    for(int i=N; i<N+L; i++){
        Sig_In[i] = rand()%10;
    }

    for(int i=0; i<N; i++){
        Sig_In[i] = 0;
        Coeff[i] = rand()%10;
    }

    for(int i=N; i<N+L; i++){
        Sig_Out[i-N] = 0;
        for(int j=0; j<N; j++){
            if(i>=j){
                Sig_Out[i-N] += Coeff[j] * Sig_In[i-j];
            }
        }
    }

}

void OP_Array_Init(std::vector<Operand*> &OP_Array, int Sig_In[N+L], int Coeff[N], int Sig_Out[N]){

    int Bram0_Addr=0;
    int Bram1_Addr=0;

    for(int i=0; i<Const_Num; i++){
        Operand* op_ptr = new Operand();
        op_ptr->Set_Operand(Const_In[i], 0, Bram0_Addr, INCONST);
        Bram0_Addr++;
        OP_Array.push_back(op_ptr);
    }
    
    /* map input data to OP_Array */
    for(int i=0; i<N+L; i++){
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
        return (IDx+Const_Num+N+L);
    }
    else if(Name=="Sig_Out"){
        return (IDx+Const_Num+N+L+N);
    }
    else{
        printf("Unknown IO operands! \n");
        exit(EXIT_FAILURE);
    }

}

void Kernel_To_DFG(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array){

    for(int i=N; i<N+L; i++){

        Operand* op_result;
        Operand* last_op;
        for(int j=0; j<N; j++){

            Instruction* inst_result = new Instruction();
            if(j==0){
                op_result = new Operand();
                OP_Array.push_back(op_result);
                inst_result->Set_Instruction(op_result->op_id, MULADD, Data_To_ID("Coeff", j), Data_To_ID("Sig_In", i-j), Data_To_ID("Const_In", 0));
                Inst_Array.push_back(inst_result);
                last_op = op_result;
            }
            else if(j<N-1){
                op_result = new Operand();
                OP_Array.push_back(op_result);
                inst_result->Set_Instruction(op_result->op_id, MULADD, Data_To_ID("Coeff", j), Data_To_ID("Sig_In", i-j), last_op->op_id);
                Inst_Array.push_back(inst_result);
                last_op = op_result;
            }
            else{
                inst_result->Set_Instruction(Data_To_ID("Sig_Out", i-N), MULADD, Data_To_ID("Coeff", j), Data_To_ID("Sig_In", i-j), last_op->op_id);
                Inst_Array.push_back(inst_result);
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
        operand_fhandle << (*op_it)->op_id << " " \
            << (*op_it)->op_bram_addr << " " \
            << (*op_it)->op_value << " " \
            << (*op_it)->op_bram_id << " " \
            << (*op_it)->op_type << "\n";
    }
    operand_fhandle.close();

    /* Dump DFG node details to .s file */
    std::map<OPCODE, int> opcode_encoder;
    int opcode_id=0;
    std::vector<Instruction*>::const_iterator inst_it;
    for(inst_it=Inst_Array.begin(); inst_it!=Inst_Array.end(); inst_it++){
        inst_fhandle << (*inst_it)->dst_op << " " \
            << (*inst_it)->inst_opcode << " " \
            << (*inst_it)->src_op0 << " " \
            << (*inst_it)->src_op1 << " " \
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
    int Const_In_Addr[Const_Num];
    int Sig_In_Addr[N+B];
    int Coeff_Addr[N];
    int Sig_Out_Addr[B];
    
    for(int i=0; i<Const_Num; i++){
        Const_In_Addr[i] = Remapped_Bram0_Addr;
        Remapped_Bram0_Addr++ ;
    }

    for(int i=0; i<N+B; i++){
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
    
    const int Work_Item_IO_Num = Const_Num + (N+L+N) + L; 
    const int Kernel_It_Num = B/L; 
    int Kernel_IO_Addr[Work_Item_IO_Num][Kernel_It_Num+1]; 

    // Here we assume that work_item_op_id can be used as index directly.
    // If not, we need map this op_id to sequential array index.
    int it=1;
    int Row_Index;
    for(int p=0; p<Kernel_It_Num; p++){

        Row_Index = 0;

        // Constant work-item input
        for(int i=0; i<Const_Num; i++){
            Kernel_IO_Addr[Row_Index][it] = Const_In_Addr[i];
            if(p==0){
                Kernel_IO_Addr[Row_Index][0] = Data_To_ID("Const_In", i);
            }
            Row_Index++;
        }

        // Normal work-item input i.e. Sig_In[N+L]
        for(int i=0; i<N+L; i++){
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
    for(int i=0; i<Work_Item_IO_Num; i++){
        for(int j=0; j<Kernel_It_Num+1; j++){
            fHandle << Kernel_IO_Addr[i][j] << " ";
        }
        fHandle << std::endl;
    }
    fHandle.close();

}

void Head_File_Dump(){

    int Block_Sig_In[N+B];
    int Block_Coeff[N];
    int Block_Sig_Out[B];

    for(int i=0; i<N+B; i++){
        if(i<N){
            Block_Sig_In[i] = 0;
        }
        else{
            Block_Sig_In[i] = rand()%10;
        }
    }

    for(int i=0; i<N; i++){
        Block_Coeff[i] = rand()%10;
    }

    for(int i=0; i<B; i++){
        Block_Sig_Out[i] = 0;
        for(int j=0; j<N; j++){
            Block_Sig_Out[i] += Block_Sig_In[i+N-j] * Block_Coeff[j];
        }
    }

    IO_coe_Dump(Block_Sig_In, Block_Coeff, Block_Sig_Out);
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

    fHandle << "int Block_Sig_In[" << N+B << "]={";
    for(int i=0; i<N+B; i++){
        if(i==N+B-1){
            fHandle << Block_Sig_In[i] << "};" << std::endl << std::endl;
        }
        else{
            fHandle << Block_Sig_In[i] <<", ";
        }
    }

    fHandle << "int Block_Coeff[" << N << "]={";
    for(int i=0; i<N; i++){
        if(i==N-1){
            fHandle << Block_Coeff[i] << "};" << std::endl << std::endl;
        }
        else{
            fHandle << Block_Coeff[i] <<", ";
        }
    }

    fHandle << "int Block_Sig_Out[" << B << "]={";
    for(int i=0; i<B; i++){
        if(i==B-1){
            fHandle << Block_Sig_Out[i] << "};" << std::endl << std::endl;
        }
        else{
            fHandle << Block_Sig_Out[i] <<", ";
        }
    }

}

void IO_coe_Dump(int Block_Sig_In[N+B], int Block_Coeff[N], int Block_Sig_Out[B]){

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

    for(int i=0; i<N+B; i++){
        Single_Dec_Dump(fHandle, (unsigned int)Block_Sig_In[i], Width);
    }

    for(int i=0; i<N; i++){
        Single_Dec_Dump(fHandle, (unsigned int)Block_Coeff[i], Width);
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
    for(int i=0; i<B; i++){
        Single_Dec_Dump(fHandle, (unsigned int)Block_Sig_Out[i], Width);
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


