#include "common.h"
#include "Operand.h"
#include "Instruction.h"
#include "config.h"

const int const_num = 2;
int const_in[const_num]={0, 1};

void io_init(int sub_in[N+L+N+N], int sub_out[L+N]);
void op_array_init(std::vector<Operand*> &op_array, int sub_in[N+L+N+N], int sub_out[L+N], int const_in[const_num]);
void kernel_to_dfg(std::vector<Operand*> &op_array, std::vector<Instruction*> &inst_array);
void dfg_compute(std::vector<Operand*> &op_array, std::vector<Instruction*> &inst_array);
void verify(const std::vector<Operand*> &op_array, int sub_out[L+N]);
void dfg_dump(const std::string &dfg_name, const std::vector<Operand*> &op_array, const std::vector<Instruction*> &inst_array);
int data_to_id(int idx, OPTYPE op_type);
int data_to_id(int const_value);
void loop_io_addr_remap(const std::string &dfg_name);

int main(){

    int sub_in[N+L+N+N];
    int sub_out[L+N];

    std::vector<Operand*> op_array;

    std::vector<Instruction*> inst_array;
    std::string dfg_name="fir";

    io_init(sub_in, sub_out);

    op_array_init(op_array, sub_in, sub_out, const_in);
    kernel_to_dfg(op_array, inst_array);
    dfg_compute(op_array, inst_array);
    verify(op_array, sub_out);
    dfg_dump(dfg_name, op_array, inst_array);
    loop_io_addr_remap(dfg_name);

}

void io_init(int sub_in[N+L+N+N], int sub_out[L+N]){
    int in[L+N]={
#include "in_small.txt"
    };
    int coef[N]={
#include "fir_coeff.txt"
    };
    int out[L+N]={
#include "out_small.txt"
    };

    // Insert N zero to make sure the generated DFG can be repeated.
    for(int i=0; i<L+N; i++){
        sub_in[i] = 0;
    }

    for(int i=0; i<L+N; i++){
        sub_in[N+i]=in[i];
    }

    for(int i=0; i<N; i++){
        sub_in[N+L+N+i]=coef[i];
    }

    for(int i=0; i<L+N; i++){
        sub_out[i]=out[i];
    }
}

void op_array_init(std::vector<Operand*> &op_array, int sub_in[N+L+N+N], int sub_out[L+N], int const_in[const_num]){

    int bram0_addr=0;
    int bram1_addr=0;

    for(int i=0; i<const_num; i++){
        Operand* op_ptr = new Operand();
        op_ptr->Set_Operand(const_in[i], 0, bram0_addr, INCONST);
        bram0_addr++;
        op_array.push_back(op_ptr);
    }
    
    /* map input data to op_array */
    for(int i=0; i<N+L+N+N; i++){
        Operand* op_ptr = new Operand();
        op_ptr->Set_Operand(sub_in[i], 0, bram0_addr, INVAR);
        bram0_addr++;
        op_array.push_back(op_ptr);
    }

    /* map output data to op_array */
    for(int i=0; i<L+N; i++){
        Operand* op_ptr=new Operand();
        op_ptr->Set_Operand(0, 1, bram1_addr, OUTVAR);
        bram1_addr++;
        op_array.push_back(op_ptr);
    }
}

int data_to_id(int idx, OPTYPE op_type){
    int invar_sum=N+L+N+N;
    if(op_type==INVAR){
        return (idx+const_num);
    }
    else if(op_type==OUTVAR){
        return (idx+const_num+invar_sum);
    }
    else{
        printf("Unknown IO operands! \n");
        return -1;
    }
}

int data_to_id(int const_val){
    for(int i=0; i<const_num; i++){
        if(const_in[i]==const_val){
            return i;
        }
    }
    return -1;
}

void kernel_to_dfg(std::vector<Operand*> &op_array, std::vector<Instruction*> &inst_array){

    for(int i=N; i<N+L+N; i++){

        Operand* op_result;
        Operand* last_op;
        for(int j=0; j<N; j++){

            Instruction* inst_result = new Instruction();
            if(j==0){
                op_result = new Operand();
                op_array.push_back(op_result);
                inst_result->Set_Instruction(op_result->op_id, MULADD, data_to_id(j+N+L+N, INVAR), data_to_id(i-j, INVAR), data_to_id(0));
                inst_array.push_back(inst_result);
                last_op = op_result;
            }
            else if(j<N-1){
                op_result = new Operand();
                op_array.push_back(op_result);
                inst_result->Set_Instruction(op_result->op_id, MULADD, data_to_id(j+N+L+N, INVAR), data_to_id(i-j, INVAR), last_op->op_id);
                inst_array.push_back(inst_result);
                last_op = op_result;
            }
            else{
                inst_result->Set_Instruction(data_to_id(i-N, OUTVAR), MULADD, data_to_id(j+N+L+N, INVAR), data_to_id(i-j, INVAR), last_op->op_id);
                inst_array.push_back(inst_result);
            }

        }
        
    }
}

void dfg_compute(std::vector<Operand*> &op_array, std::vector<Instruction*> &inst_array){
    std::vector<Instruction*>::iterator inst_it;
    for(inst_it=inst_array.begin(); inst_it!=inst_array.end(); inst_it++){
        int src_val0=op_array[(*inst_it)->src_op0]->op_value;
        int src_val1=op_array[(*inst_it)->src_op1]->op_value;
        int src_val2=op_array[(*inst_it)->src_op2]->op_value;
        int dst_val=(*inst_it)->Compute(src_val0, src_val1, src_val2);
        op_array[(*inst_it)->dst_op]->op_value=dst_val;
    }
}


void verify(const std::vector<Operand*> &op_array, int sub_out[L]){
    for(int i=0; i<L; i++){
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
    oss << dfg_name << "_operand.txt";
    std::ofstream operand_fhandle;
    operand_fhandle.open(oss.str().c_str());
    if(!operand_fhandle.is_open()){
        std::cout << "Failed to open " << oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    oss.clear();
    oss.str("");
    oss << dfg_name << ".s";
    std::ofstream inst_fhandle;
    inst_fhandle.open(oss.str().c_str());
    if(!inst_fhandle.is_open()){
        std::cout << "Failed to open" <<oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    oss.clear();
    oss.str("");
    oss << dfg_name << "_opcode.txt";
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


void loop_io_addr_remap(const std::string &dfg_name){

    std::ostringstream oss;
    oss << dfg_name << "_kernel_io.txt";
    std::ofstream fHandle;
    fHandle.open(oss.str().c_str());
    if(!fHandle.is_open()){
        std::cout << "Failed to open " << oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    int remapped_bram0_addr = 0;
    int remapped_bram1_addr = 0;
    int const_in_addr[const_num];
    int sub_in_addr[N+B+N];
    int sub_out_addr[B];
    
    for(int i=0; i<const_num; i++){
        const_in_addr[i] = remapped_bram0_addr;
        remapped_bram0_addr++ ;
    }

    for(int i=0; i<N+B+N; i++){
        sub_in_addr[i] = remapped_bram0_addr;
        remapped_bram0_addr ++ ;
    }

    for(int i=0; i<B; i++){
        sub_out_addr[i] = remapped_bram1_addr;
        remapped_bram1_addr ++;
    }
    
    const int work_item_io_num = const_num + (N + B + N) + B; // total number of work-item's io operand
    const int kernel_it_num = B/(L+N); // total number of the kernel iteration
    int kernel_io_addr[work_item_io_num][kernel_it_num+1]; // The first column represents kernel op_id

    // Here we assume that work_item_op_id can be used as index directly.
    // If not, we need map this op_id to sequential array index.
    int it=1;
    int row_index;
    for(int p=0; p<kernel_it_num; p++){

        row_index = 0;

        // Constant work-item input
        for(int i=0; i<const_num; i++){
            kernel_io_addr[row_index][it] = const_in_addr[i];
            if(p==0){
                kernel_io_addr[row_index][0] = data_to_id(const_in[i]);
            }
            row_index++;
        }

        // Normal work-item input i.e. sub_in[N+L+N]
        for(int i=0; i<N+L+N; i++){
            kernel_io_addr[row_index][it] = sub_in_addr[p*(L+N)+i];
            if(p==0){
                kernel_io_addr[row_index][0] = data_to_id(i, INVAR);
            }
            row_index++;
        }

        // The N coeffient data of the input, and it is needed in each iteration.
        for(int i=0; i<N; i++){
            kernel_io_addr[row_index][it] = sub_in_addr[N+B+i];
            if(p==0){
                kernel_io_addr[row_index][0] = data_to_id(N+L+N+i, INVAR);
            }
            row_index++;
        }

        //Normal output
        for(int i=0; i<L; i++){
            kernel_io_addr[row_index][it] = sub_out_addr[p*L+i];
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

