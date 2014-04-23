#include "common.h"
#include "Operand.h"
#include "Instruction.h"
#include "config.h"

void io_init(int sub_in[M+1][N], int sub_out[M]);
void op_array_init(std::vector<Operand*> &op_array, int sub_in[M+1][N], int sub_out[M], int const_in[1]);
void kernel_to_dfg(std::vector<Operand*> &op_array, std::vector<Instruction*> &inst_array);
void dfg_compute(std::vector<Operand*> &op_array, std::vector<Instruction*> &inst_array);
void verify(const std::vector<Operand*> &op_array, int sub_out[M]);
void dfg_dump(const std::string &dfg_name, const std::vector<Operand*> &op_array, const std::vector<Instruction*> &inst_array);
int data_to_id(int idx, int idy, OPTYPE op_type);
int data_to_id(int idx, OPTYPE op_type);
int data_to_id(int const_value);

int bram0_addr=0;
int bram1_addr=0;
//std::map<int, Operand*> id_to_op;

int main(){

    int const_in[1]={0};
    int sub_in[M+1][N];
    int sub_out[M];

    std::vector<Operand*> op_array;
    std::vector<Instruction*> inst_array;
    std::string dfg_name="mm";

    io_init(sub_in, sub_out);
    op_array_init(op_array, sub_in, sub_out, const_in);
    kernel_to_dfg(op_array, inst_array);
    dfg_compute(op_array, inst_array);
    verify(op_array, sub_out);
    dfg_dump(dfg_name, op_array, inst_array);

}

void io_init(int sub_in[M+1][N], int sub_out[M]){

    for(int i=0; i<M+1; i++){
        for(int j=0; j<N; j++){
            sub_in[i][j]=1;
        }
    }

    for(int i=0; i<M; i++){
        sub_out[i]=0;
        for(int j=0; j<N; j++){
            sub_out[i]+=sub_in[M][j]*sub_in[i][j];
        }
    }

}

void op_array_init(std::vector<Operand*> &op_array, int sub_in[M+1][N], int sub_out[M], int const_in[1]){
    /* 0 is the only contant */
    Operand* op_ptr=new Operand();
    op_ptr->Set_Operand(const_in[0], 0, bram0_addr, INCONST);
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
    int const_sum=1;
    if(op_type==INVAR){
        return (idx*N+idy+const_sum);
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
        int last_op_id;
        for(int j=0; j<N; j++){
            Instruction* inst_ptr=new Instruction();
            if(j==0){
                Operand* dst_ptr=new Operand();
                op_array.push_back(dst_ptr);

                inst_ptr->Set_Instruction( \
                        dst_ptr->op_id, \
                        MULADD, \
                        data_to_id(M, j, INVAR), \
                        data_to_id(i, j, INVAR), \
                        data_to_id(0));

                inst_array.push_back(inst_ptr);
                last_op_id=dst_ptr->op_id;
            }
            else if(j<N-1){
                Operand* dst_ptr=new Operand();
                op_array.push_back(dst_ptr);

                inst_ptr->Set_Instruction( \
                        dst_ptr->op_id, \
                        MULADD, \
                        data_to_id(M, j, INVAR), \
                        data_to_id(i, j, INVAR), \
                        last_op_id);

                inst_array.push_back(inst_ptr);
                last_op_id=dst_ptr->op_id;
            }
            else{
                inst_ptr->Set_Instruction( \
                        data_to_id(i, OUTVAR), \
                        MULADD, \
                        data_to_id(M, j, INVAR), \
                        data_to_id(i, j, INVAR), \
                        last_op_id);

                inst_array.push_back(inst_ptr);
            }
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
