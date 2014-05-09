#include "common.h"
#include "Operand.h"
#include "Instruction.h"
#include "config.h"
#include <cstdlib>
#include <list>

void IO_Init(int A_In[M], int B_In[M], int &C_Out);
void OP_Array_Init(std::vector<Operand*> &OP_Array, int A_In[M], int B_In[M], int C_Out);
void Kernel_To_DFG(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array);
void DFG_Compute(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array);
void Verify(const std::vector<Operand*> &OP_Array, int C_Out);
void DFG_Dump(const std::string &DFG_Name, const std::vector<Operand*> &OP_Array, const std::vector<Instruction*> &Inst_Array);
int Data_To_ID(std::string Name, int idx);
void Loop_IO_Addr_Remap(const std::string &DFG_Name);
void Head_File_Dump();
void IO_coe_Dump(int Block_In[2*B], int Block_Out[B/M]);
void Single_Dec_Dump(std::ofstream &fHandle, unsigned int Dec_Data, int Width);

int Const_In[1] = {0};
int Const_Num = 1;

int main(){

    int A_In[M];
    int B_In[M];
    int C_Out;

    std::vector<Operand*> OP_Array;
    std::vector<Instruction*> Inst_Array;
    std::string DFG_Name="mm";

    IO_Init(A_In, B_In, C_Out);
    OP_Array_Init(OP_Array, A_In, B_In, C_Out);
    Kernel_To_DFG(OP_Array, Inst_Array);
    DFG_Compute(OP_Array, Inst_Array);
    Verify(OP_Array, C_Out);
    DFG_Dump(DFG_Name, OP_Array, Inst_Array);
    Loop_IO_Addr_Remap(DFG_Name);
    Head_File_Dump();

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

void IO_coe_Dump(int Block_In[2*B], int Block_Out[B/M]){

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

    for(int i=0; i<2*B; i++){
        Single_Dec_Dump(fHandle, (unsigned int) Block_In[i], Width);
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
    for(int i=0; i<B/M; i++){
        Single_Dec_Dump(fHandle, (unsigned int)Block_Out[i], Width);
    }
    fHandle.close();

}

void Head_File_Dump(){

    //Input initialization
    int Block_In[2*B];
    int Block_Out[B/M];

    for(int i=0; i<2*B; i++){
        Block_In[i] = rand()%10;
    }

    for(int i=0; i<B/M; i++){
        Block_Out[i] = 0;
        for(int j=0; j<M; j++){
            Block_Out[i] += Block_In[j]*Block_In[B+j];
        }
    }

    IO_coe_Dump(Block_In, Block_Out);

    std::string fName = "./dump/io.h";
    std::ofstream fHandle;
    fHandle.open(fName.c_str());
    if(!fHandle.is_open()){
        std::cout << fName << "open error!" << std::endl;
        exit(EXIT_FAILURE);
    }

    fHandle << "// Input and output data of the benchmark" << std::endl;
    fHandle << "int Src[" << Const_Num+2*B << "] = "<<"{";

    //Const input
    for(int i=0; i<Const_Num; i++){
        fHandle << Const_In[i] << ", ";
    }

    for(int i=0; i<2*B; i++){
        if(i==2*B-1){
            fHandle << Block_In[i];
        }
        else{
            fHandle << Block_In[i] << ", ";
        }
    }
    fHandle << "};" << std::endl;

    fHandle << std::endl;
    fHandle << "int Result[" << B/M << "] = " << "{";
    for(int i=0; i<B/M; i++){
        if(i==B/M-1){
            fHandle << Block_Out[i];
        }
        else{
            fHandle << Block_Out[i] << ", ";
        }
    }
    fHandle << "};" << std::endl;

}

void IO_Init(int A_In[M], int B_In[M], int &C_Out){

    for(int i=0; i<M; i++){
        A_In[i] = rand()%10;
        B_In[i] = rand()%10;
    }

    C_Out = 0;
    for(int i=0; i<M; i++){
        C_Out += A_In[i]*B_In[i];
    }

}

void OP_Array_Init(std::vector<Operand*> &OP_Array, int A_In[M], int B_In[M], int C_Out){

    int Bram0_Addr=0;
    int Bram1_Addr=0;

    /* 0 is the only contant */
    Operand* OP_Ptr=new Operand();
    OP_Ptr->Set_Operand(Const_In[0], 0, Bram0_Addr, INCONST);
    Bram0_Addr++;
    OP_Array.push_back(OP_Ptr);

    /* map input data to OP_Array */
    for(int i=0; i<M; i++){
        OP_Ptr=new Operand();
        OP_Ptr->Set_Operand(A_In[i], 0, Bram0_Addr, INVAR);
        Bram0_Addr++;
        OP_Array.push_back(OP_Ptr);
    }

    for(int i=0; i<M; i++){
        OP_Ptr=new Operand();
        OP_Ptr->Set_Operand(B_In[i], 0, Bram0_Addr, INVAR);
        Bram0_Addr++;
        OP_Array.push_back(OP_Ptr);
    }

    /* map output data to OP_Array */
    OP_Ptr=new Operand();
    OP_Ptr->Set_Operand(C_Out, 1, Bram1_Addr, OUTVAR);
    Bram1_Addr++;
    OP_Array.push_back(OP_Ptr);

}

int Data_To_ID(std::string Name, int IDx){

    if(Name=="Const_In"){
        return 0;
    }
    else if(Name=="A_In"){
        return (IDx+Const_Num);
    }
    else if(Name=="B_In"){
        return (IDx+Const_Num+M);
    }
    else if(Name=="C_Out"){
        return (Const_Num+M+M);
    }
    else{
        printf("Unknown IO operands! \n");
        return (EXIT_FAILURE);
    }

}

void Kernel_To_DFG(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array){

    // The first level is simple multiplication
    Instruction* IM_Insts[M];
    Operand* IM_Operands[M];
    for(int j=0; j<M; j++){
        IM_Operands[j] = new Operand();
        OP_Array.push_back(IM_Operands[j]);
        IM_Insts[j] =  new Instruction();
        IM_Insts[j]->Set_Instruction(IM_Operands[j]->op_id, MULADD, Data_To_ID("A_In", j), Data_To_ID("B_In", j), Data_To_ID("Const_In", 0));
        Inst_Array.push_back(IM_Insts[j]);
    }

    // Addition stages
    int Res_OP_Num = M;
    while(Res_OP_Num>3){
        for(int j=0; j<Res_OP_Num; j=j+3){
            if(j+1==Res_OP_Num){
                IM_Operands[j/3] = IM_Operands[j];
            }
            else if(j+2==Res_OP_Num){
                Operand* op_tmp = new Operand();
                OP_Array.push_back(op_tmp);
                Instruction* inst_tmp = new Instruction();
                inst_tmp->Set_Instruction(op_tmp->op_id, ADDADD, IM_Operands[j]->op_id, IM_Operands[j+1]->op_id, Data_To_ID("Const_In", 0));
                Inst_Array.push_back(inst_tmp);
                IM_Operands[j/3] = op_tmp;
            }
            else{
                Operand* op_tmp = new Operand();
                OP_Array.push_back(op_tmp);
                Instruction* inst_tmp = new Instruction();
                inst_tmp->Set_Instruction(op_tmp->op_id, ADDADD, IM_Operands[j]->op_id, IM_Operands[j+1]->op_id, IM_Operands[j+2]->op_id);
                Inst_Array.push_back(inst_tmp);
                IM_Operands[j/3] = op_tmp;
            }
        }
        if((Res_OP_Num%3)==0){
            Res_OP_Num = Res_OP_Num/3;
        }
        else{
            Res_OP_Num = Res_OP_Num/3 + 1;
        }
    }

    //Last output
    if(Res_OP_Num==3){
        Instruction* inst_tmp = new Instruction();
        inst_tmp->Set_Instruction(Data_To_ID("C_Out", 0), ADDADD, IM_Operands[0]->op_id, IM_Operands[1]->op_id, IM_Operands[2]->op_id);
        Inst_Array.push_back(inst_tmp);
    }
    else if(Res_OP_Num==2){
        Instruction* inst_tmp = new Instruction();
        inst_tmp->Set_Instruction(Data_To_ID("C_Out", 0), ADDADD, IM_Operands[0]->op_id, IM_Operands[1]->op_id, Data_To_ID("Const_In", 0));
        Inst_Array.push_back(inst_tmp);
    }
    else{
        std::cout << "Unexpected residue!\n";
    }

}

void DFG_Compute(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array){

    std::vector<Instruction*>::iterator inst_it;
    for(inst_it=Inst_Array.begin(); inst_it!=Inst_Array.end(); inst_it++){
        //int src_val0=id_to_op[(*inst_it)->src_op0]->op_value;
        //int src_val1=id_to_op[(*inst_it)->src_op1]->op_value;
        //int src_val2=id_to_op[(*inst_it)->src_op2]->op_value;
        int src_val0=OP_Array[(*inst_it)->src_op0]->op_value;
        int src_val1=OP_Array[(*inst_it)->src_op1]->op_value;
        int src_val2=OP_Array[(*inst_it)->src_op2]->op_value;
        int dst_val=(*inst_it)->Compute(src_val0, src_val1, src_val2);
                
        //id_to_op[(*inst_it)->dst_op]->op_value=dst_val;
        OP_Array[(*inst_it)->dst_op]->op_value=dst_val;
    }

}


void Verify(const std::vector<Operand*> &OP_Array, int C_Out){

    int OP_ID = Data_To_ID("C_Out", 0);
    if(OP_Array[OP_ID]->op_value!=C_Out){
        printf("DFG computation is wrong!\n");
        printf("expected_result=%d, computed result=%d \n", C_Out, OP_Array[OP_ID]->op_value);
        exit(EXIT_FAILURE);
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

/*-----------------------------------------------------------------
 * Format of this file: 
 * io_op_id addr_iteration0 addr_iteration1 ...  
 * ...
 *
 * To use the data in the table, a suggested method is using a map
 * together with original array:
 * map<op_id, Row_Index>
 * data[io_num][it_num]
 *
 * Given op_id, row index can be acquired from the map, With the row 
 * index, then it is easy to find the address with exact iteration.
 * --------------------------------------------------------------*/

void Loop_IO_Addr_Remap(const std::string &DFG_Name){

    std::ostringstream oss;
    oss << "./dump/" << DFG_Name << "_kernel_io.txt";
    std::ofstream fHandle;
    fHandle.open(oss.str().c_str());
    if(!fHandle.is_open()){
        std::cout << "Failed to open " << oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    /* ----------------------------------------------------------------
     * Addr allocation initialization:
     * Constant: Const_In[1]
     * Input: sub_in[2*M] 
     * output: sub_out[B/M]
     * The newly remapped addr is stored in the array as if it is data.
     * --------------------------------------------------------------*/
    int Remapped_Bram0_Addr = 0;
    int Remapped_Bram1_Addr = 0;
    int Const_In_Addr[1];
    int A_In_Addr[B];
    int B_In_Addr[B];
    int C_Out_Addr[B/M];
    
    Const_In_Addr[0] = Remapped_Bram0_Addr;
    Remapped_Bram0_Addr++ ;

    for(int i=0; i<B; i++){
        A_In_Addr[i] = Remapped_Bram0_Addr;
        Remapped_Bram0_Addr++ ;
    }

    for(int i=0; i<B; i++){
        B_In_Addr[i] = Remapped_Bram0_Addr;
        Remapped_Bram0_Addr++;
    }

    for(int i=0; i<B/M; i++){
        C_Out_Addr[i] = Remapped_Bram1_Addr;
        Remapped_Bram1_Addr ++;
    }
    
    const int Work_Item_IO_Num = 1 + 2*M + 1; // total number of work-item's operand
    const int Kernel_It_Num = B/M; // total number of iterations of the work-item
    int Kernel_IO_Addr[Work_Item_IO_Num][Kernel_It_Num+1]; // The first column represents kernel op_id

    // Here we assume that work_item_op_id can be used as index directly.
    // If not, we need map this op_id to sequential array index.
    int It=1;
    int Row_Index;
    for(int p=0; p<B/M; p++){

        Row_Index = 0;

        Kernel_IO_Addr[Row_Index][It] = Const_In_Addr[0];
        if(p==0){
            Kernel_IO_Addr[Row_Index][0] = Data_To_ID("Const_In", 0);
        }
        Row_Index++;

        //Normal work-item input i.e. A_In[M], B_In[M]
        for(int i=0; i<M; i++){
            Kernel_IO_Addr[Row_Index][It] = A_In_Addr[p*M+i];
            if(p==0){
                Kernel_IO_Addr[Row_Index][0] = Data_To_ID("A_In", i);
            }
            Row_Index++;
        }

        for(int i=0; i<M; i++){
            Kernel_IO_Addr[Row_Index][It] = B_In_Addr[p*M+i];
            if(p==0){
                Kernel_IO_Addr[Row_Index][0] = Data_To_ID("B_In", i);
            }
            Row_Index++;
        }

        //Normal output
        Kernel_IO_Addr[Row_Index][It] = C_Out_Addr[p];
        if(p==0){
            Kernel_IO_Addr[Row_Index][0] = Data_To_ID("C_Out", 0);
        }
        Row_Index++;

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
