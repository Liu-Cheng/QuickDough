#include "common.h"
#include "Operand.h"
#include "Instruction.h"
#include "config.h"
#include <cstdlib>
#include <list>

void io_init(int sub_in[M+1][N], int sub_out[M]);
void op_array_init(std::vector<Operand*> &op_array, int sub_in[M+1][N], int sub_out[M]);
void kernel_to_dfg(std::vector<Operand*> &op_array, std::vector<Instruction*> &inst_array);
void dfg_compute(std::vector<Operand*> &op_array, std::vector<Instruction*> &inst_array);
void verify(const std::vector<Operand*> &op_array, int sub_out[M]);
void dfg_dump(const std::string &dfg_name, const std::vector<Operand*> &op_array, const std::vector<Instruction*> &inst_array);
int data_to_id(int idx, int idy, OPTYPE op_type);
int data_to_id(int idx, OPTYPE op_type);
int data_to_id(int const_value);
void loop_io_addr_remap(const std::string &dfg_name);
void Head_File_Dump();
void IO_coe_Dump(int Block_In[B+1][N], int Block_Out[B]);
void Single_Dec_Dump(std::ofstream &fHandle, unsigned int Dec_Data, int Width);

int Const_In[1] = {0};
int Const_Num = 1;

int main(){

    int sub_in[M+1][N];
    int sub_out[M];

    std::vector<Operand*> op_array;
    std::vector<Instruction*> inst_array;
    std::string dfg_name="mm";

    io_init(sub_in, sub_out);
    op_array_init(op_array, sub_in, sub_out);
    kernel_to_dfg(op_array, inst_array);
    dfg_compute(op_array, inst_array);
    verify(op_array, sub_out);
    dfg_dump(dfg_name, op_array, inst_array);
    loop_io_addr_remap(dfg_name);
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

void IO_coe_Dump(int Block_In[B+1][N], int Block_Out[B]){

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

    for(int i=0; i<B+1; i++){
        for(int j=0; j<N; j++){
            Single_Dec_Dump(fHandle, (unsigned int) Block_In[i][j], Width);
        }
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
        Single_Dec_Dump(fHandle, (unsigned int)Block_Out[i], Width);
    }
    fHandle.close();

}

void Head_File_Dump(){

    //Input initialization
    int Block_In[B+1][N];
    int Block_Out[B];

    for(int i=0; i<B+1; i++){
        for(int j=0; j<N; j++){
            Block_In[i][j] = rand()%10;
        }
    }

    for(int i=0; i<B; i++){
        Block_Out[i] = 0;
        for(int j=0; j<N; j++){
            Block_Out[i] += Block_In[i][j]*Block_In[B][j];
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
    fHandle << "int Src[" << Const_Num+(B+1)*N << "] = "<<"{";

    //Const input
    for(int i=0; i<Const_Num; i++){
        fHandle << Const_In[i] << ", ";
    }

    for(int i=0; i<B+1; i++){
        for(int j=0; j<N; j++){
            if(i==B && j==N-1){
                fHandle << Block_In[i][j];
            }
            else{
                fHandle << Block_In[i][j] << ", ";
            }
        }
    }

    fHandle << "};" << std::endl;

    fHandle << std::endl;
    fHandle << "int Result[" << B << "] = " << "{";
    for(int i=0; i<B; i++){
        if(i==B-1){
            fHandle << Block_Out[i];
        }
        else{
            fHandle << Block_Out[i] << ", ";
        }
    }
    fHandle << "};" << std::endl;
}

void io_init(int sub_in[M+1][N], int sub_out[M]){

    for(int i=0; i<M+1; i++){
        for(int j=0; j<N; j++){
            sub_in[i][j] = rand()%10;
        }
    }

    for(int i=0; i<M; i++){
        sub_out[i]=0;
        for(int j=0; j<N; j++){
            sub_out[i]+=sub_in[M][j]*sub_in[i][j];
        }
    }

}

void op_array_init(std::vector<Operand*> &op_array, int sub_in[M+1][N], int sub_out[M]){

    int bram0_addr=0;
    int bram1_addr=0;

    /* 0 is the only contant */
    Operand* op_ptr=new Operand();
    op_ptr->Set_Operand(Const_In[0], 0, bram0_addr, INCONST);
    bram0_addr++;
    op_array.push_back(op_ptr);

    /* map input data to op_array */
    for(int i=0; i<M+1; i++){
        for(int j=0; j<N; j++){
            op_ptr=new Operand();
            op_ptr->Set_Operand(sub_in[i][j], 0, bram0_addr, INVAR);
            bram0_addr++;
            op_array.push_back(op_ptr);
        }
    }

    /* map output data to op_array */
    for(int i=0; i<M; i++){
        op_ptr=new Operand();
        op_ptr->Set_Operand(0, 1, bram1_addr, OUTVAR);
        bram1_addr++;
        op_array.push_back(op_ptr);
    }

}

int data_to_id(int idx, int idy, OPTYPE op_type){
    if(op_type==INVAR){
        return (idx*N+idy+Const_Num);
    }
    else{
        printf("Unknown IO operands! \n");
        return (EXIT_FAILURE);
    }
}

int data_to_id(int idx, OPTYPE op_type){

    int const_num=1;
    int invar_num=N*(M+1);
    if(op_type==OUTVAR){
        return (const_num+invar_num+idx);
    }
    else{
        printf("Unknown IO operands! \n");
        return (EXIT_FAILURE);
    }

}

int data_to_id(int const_val){
    return 0;
}

void kernel_to_dfg(std::vector<Operand*> &op_array, std::vector<Instruction*> &inst_array){

    for(int i=0; i<M; i++){

        // The first level is simple multiplication
        Instruction* IM_Insts[N];
        Operand* IM_Operands[N];
        for(int j=0; j<N; j++){
            IM_Operands[j] = new Operand();
            op_array.push_back(IM_Operands[j]);
            IM_Insts[j] =  new Instruction();
            IM_Insts[j]->Set_Instruction(IM_Operands[j]->op_id, MULADD, data_to_id(i, j, INVAR), data_to_id(M, j, INVAR), data_to_id(0));
            inst_array.push_back(IM_Insts[j]);
        }

        // Addition stages
        int Res_OP_Num = N;
        while(Res_OP_Num>3){
            for(int j=0; j<Res_OP_Num; j=j+3){
                if(j+1==Res_OP_Num){
                    IM_Operands[j/3] = IM_Operands[j];
                }
                else if(j+2==Res_OP_Num){
                    Operand* op_tmp = new Operand();
                    op_array.push_back(op_tmp);
                    Instruction* inst_tmp = new Instruction();
                    inst_tmp->Set_Instruction(op_tmp->op_id, ADDADD, IM_Operands[j]->op_id, IM_Operands[j+1]->op_id, data_to_id(0));
                    inst_array.push_back(inst_tmp);
                    IM_Operands[j/3] = op_tmp;
                }
                else{
                    Operand* op_tmp = new Operand();
                    op_array.push_back(op_tmp);
                    Instruction* inst_tmp = new Instruction();
                    inst_tmp->Set_Instruction(op_tmp->op_id, ADDADD, IM_Operands[j]->op_id, IM_Operands[j+1]->op_id, IM_Operands[j+2]->op_id);
                    inst_array.push_back(inst_tmp);
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
            inst_tmp->Set_Instruction(data_to_id(i, OUTVAR), ADDADD, IM_Operands[0]->op_id, IM_Operands[1]->op_id, IM_Operands[2]->op_id);
            inst_array.push_back(inst_tmp);
        }
        else if(Res_OP_Num==2){
            Instruction* inst_tmp = new Instruction();
            inst_tmp->Set_Instruction(data_to_id(i, OUTVAR), ADDADD, IM_Operands[0]->op_id, IM_Operands[1]->op_id, data_to_id(0));
            inst_array.push_back(inst_tmp);
        }
        else{
            std::cout << "Unexpected residue!\n";
        }
    }
}

void dfg_compute(std::vector<Operand*> &op_array, std::vector<Instruction*> &inst_array){
    std::vector<Instruction*>::iterator inst_it;
    for(inst_it=inst_array.begin(); inst_it!=inst_array.end(); inst_it++){
        //int src_val0=id_to_op[(*inst_it)->src_op0]->op_value;
        //int src_val1=id_to_op[(*inst_it)->src_op1]->op_value;
        //int src_val2=id_to_op[(*inst_it)->src_op2]->op_value;
        int src_val0=op_array[(*inst_it)->src_op0]->op_value;
        int src_val1=op_array[(*inst_it)->src_op1]->op_value;
        int src_val2=op_array[(*inst_it)->src_op2]->op_value;
        int dst_val=(*inst_it)->Compute(src_val0, src_val1, src_val2);
                
        //id_to_op[(*inst_it)->dst_op]->op_value=dst_val;
        op_array[(*inst_it)->dst_op]->op_value=dst_val;
    }
}


void verify(const std::vector<Operand*> &op_array, int sub_out[M]){
    for(int i=0; i<M; i++){
        int op_id=data_to_id(i, OUTVAR);
        if(op_array[op_id]->op_value!=sub_out[i]){
            printf("DFG computation is wrong!\n");
            printf("expected[%d]=%d, computed result=%d \n", i, sub_out[i], op_array[op_id]->op_value);
            exit(EXIT_FAILURE);
        }
    }

    printf("Verification passed!\n");
}


void dfg_dump(const std::string &dfg_name, const std::vector<Operand*> &op_array, const std::vector<Instruction*> &inst_array){

    std::ostringstream oss;
    oss << "./dump/" << dfg_name << "_operand.txt";
    std::ofstream operand_fhandle;
    operand_fhandle.open(oss.str().c_str());
    if(!operand_fhandle.is_open()){
        std::cout << "Failed to open " << oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    oss.clear();
    oss.str("");
    oss << "./dump/" << dfg_name << ".s";
    std::ofstream inst_fhandle;
    inst_fhandle.open(oss.str().c_str());
    if(!inst_fhandle.is_open()){
        std::cout << "Failed to open" <<oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    oss.clear();
    oss.str("");
    oss << "./dump/" << dfg_name << "_opcode.txt";
    std::ofstream opcode_fhandle;
    opcode_fhandle.open(oss.str().c_str());
    if(!opcode_fhandle.is_open()){
        std::cout << "Failed to open " << oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    /* Dump operand details to .txt file */
    std::vector<Operand*>::const_iterator op_it;
    for(op_it=op_array.begin(); op_it!=op_array.end(); op_it++){
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
    for(inst_it=inst_array.begin(); inst_it!=inst_array.end(); inst_it++){
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
 * map<op_id, row_index>
 * data[io_num][it_num]
 *
 * Given op_id, row index can be acquired from the map, With the row 
 * index, then it is easy to find the address with exact iteration.
 * --------------------------------------------------------------*/

void loop_io_addr_remap(const std::string &dfg_name){

    std::ostringstream oss;
    oss << "./dump/" << dfg_name << "_kernel_io.txt";
    std::ofstream fHandle;
    fHandle.open(oss.str().c_str());
    if(!fHandle.is_open()){
        std::cout << "Failed to open " << oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    /* ----------------------------------------------------------------
     * Addr allocation initialization:
     * Constant: Const_In[1]
     * Input: sub_in[B][N] 
     * output: sub_out[B]
     * The newly remapped addr is stored in the array as if it is data.
     * --------------------------------------------------------------*/
    int remapped_bram0_addr = 0;
    int remapped_bram1_addr = 0;
    int Const_In_addr[1];
    int sub_in_addr[B+1][N];
    int sub_out_addr[B];
    
    Const_In_addr[0] = remapped_bram0_addr;
    remapped_bram0_addr++ ;

    for(int i=0; i<B+1; i++){
        for(int j=0; j<N; j++){
            sub_in_addr[i][j] = remapped_bram0_addr;
            remapped_bram0_addr ++ ;
        }
    }

    for(int i=0; i<B; i++){
        sub_out_addr[i] = remapped_bram1_addr;
        remapped_bram1_addr ++;
    }
    
    const int work_item_io_num = 1 + (M+1)*N + M; // total number of work-item's operand
    const int kernel_it_num = B/M; // total number of the kernel iteration
    int kernel_io_addr[work_item_io_num][kernel_it_num+1]; // The first column represents kernel op_id

    // Here we assume that work_item_op_id can be used as index directly.
    // If not, we need map this op_id to sequential array index.
    int it=1;
    int row_index;
    for(int p=0; p<B/M; p++){

        row_index = 0;

        //Constant work-item input
        kernel_io_addr[row_index][it] = Const_In_addr[0];
        if(p==0){
            kernel_io_addr[row_index][0] = data_to_id(0);
        }
        row_index++;

        //Normal work-item input i.e. sub_in[M][N]
        for(int i=0; i<M; i++){
            for(int j=0; j<N; j++){
                kernel_io_addr[row_index][it] = sub_in_addr[p*M+i][j];
                if(p==0){
                    kernel_io_addr[row_index][0] = data_to_id(i, j, INVAR);
                }
                row_index++;
            }
        }

        // The last row of the input, and it is needed in each iteration.
        for(int i=0; i<N; i++){
            kernel_io_addr[row_index][it] = sub_in_addr[B][i];
            if(p==0){
                kernel_io_addr[row_index][0] = data_to_id(M, i, INVAR);
            }
            row_index++;
        }

        //Normal output
        for(int i=0; i<M; i++){
            kernel_io_addr[row_index][it] = sub_out_addr[p*M+i];
            if(p==0){
                kernel_io_addr[row_index][0] = data_to_id(i, OUTVAR);
            }
            row_index++;
        }

        //Intermediate output

        it++;
    }


    //Dump the io addr of the whole kernel
    for(int i=0; i<work_item_io_num; i++){
        for(int j=0; j<kernel_it_num+1; j++){
            fHandle << kernel_io_addr[i][j] << " ";
        }
        fHandle << std::endl;
    }
    fHandle.close();

}
