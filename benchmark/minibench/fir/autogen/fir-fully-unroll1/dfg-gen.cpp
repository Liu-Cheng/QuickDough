#include "common.h"
#include "Operand.h"
#include "Instruction.h"
#include "config.h"

const int const_num = 2;
int const_in[const_num]={0, 1};

void io_init(int sub_in[L+N+N], int sub_out[L+N]);
void op_array_init(std::vector<Operand*> &op_array, int sub_in[L+N+N], int sub_out[L+N], int const_in[const_num]);
void kernel_to_dfg(std::vector<Operand*> &op_array, std::vector<Instruction*> &inst_array);
void dfg_compute(std::vector<Operand*> &op_array, std::vector<Instruction*> &inst_array);
void verify(const std::vector<Operand*> &op_array, int sub_out[L+N]);
void dfg_dump(const std::string &dfg_name, const std::vector<Operand*> &op_array, const std::vector<Instruction*> &inst_array);
int data_to_id(int idx, OPTYPE op_type);
int data_to_id(int const_value);

int main(){

    int sub_in[L+N+N];
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

}

void io_init(int sub_in[L+N+N], int sub_out[L+N]){
    int in[L+N]={
#include "in_small.txt"
    };
    int coef[N]={
#include "fir_coeff.txt"
    };
    int out[L+N]={
#include "out_small.txt"
    };

    for(int i=0; i<L+N; i++){
        sub_in[i]=in[i];
    }

    for(int i=0; i<N; i++){
        sub_in[L+N+i]=coef[i];
    }

    for(int i=0; i<L+N; i++){
        sub_out[i]=out[i];
    }
}

void op_array_init(std::vector<Operand*> &op_array, int sub_in[L+N+N], int sub_out[L+N], int const_in[const_num]){

    int bram0_addr=0;
    int bram1_addr=0;

    for(int i=0; i<const_num; i++){
        Operand* op_ptr = new Operand();
        op_ptr->Set_Operand(const_in[i], 0, bram0_addr, INCONST);
        bram0_addr++;
        op_array.push_back(op_ptr);
    }
    
    /* map input data to op_array */
    for(int i=0; i<L+N+N; i++){
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
    int invar_sum=L+N+N;
    if(idx<0){
        return 0;
    }
    else if(op_type==INVAR){
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

    Operand* op_index_i = op_array[0];
    Operand* last_op_index_i = op_index_i;
    for(int i=0; i<L+N; i++){

        Operand* op_index_j = op_array[0];
        Operand* last_op_index_j = op_index_j;
        Operand* last_op;
        for(int j=0; j<N; j++){

            Operand* op_branch1;
            Operand* op_branch0;
            Instruction* inst_branch1 = new Instruction();
            Instruction* inst_branch0 = new Instruction();
            if(j==0){
                op_branch1 = new Operand();
                op_array.push_back(op_branch1);
                inst_branch1->Set_Instruction(op_branch1->op_id, MULADD, data_to_id(j+L+N, INVAR), data_to_id(i-j, INVAR), data_to_id(0));
                inst_array.push_back(inst_branch1);
                op_branch0 = op_array[0];
            }
            else{
                op_branch1 = new Operand();
                op_array.push_back(op_branch1);
                inst_branch1->Set_Instruction(op_branch1->op_id, MULADD, data_to_id(j+L+N, INVAR), data_to_id(i-j, INVAR), last_op->op_id);
                inst_array.push_back(inst_branch1);
                
                op_branch0 = new Operand();
                op_array.push_back(op_branch0);
                inst_branch0->Set_Instruction(op_branch0->op_id, ADDADD, last_op->op_id, data_to_id(0), data_to_id(0));
                inst_array.push_back(inst_branch0);
            }

            Operand* branch_sel = new Operand();
            op_array.push_back(branch_sel);
            Instruction* inst_branch_sel = new Instruction();
            inst_branch_sel->Set_Instruction(branch_sel->op_id, LET, op_index_j->op_id, op_index_i->op_id, data_to_id(0));
            inst_array.push_back(inst_branch_sel);
            
            Instruction* inst_branch_result = new Instruction();
            if(j==N-1){
                inst_branch_result->Set_Instruction(data_to_id(i, OUTVAR), PHI, branch_sel->op_id, op_branch1->op_id, op_branch0->op_id);
            }
            else{
                last_op = new Operand();
                op_array.push_back(last_op);
                inst_branch_result->Set_Instruction(last_op->op_id, PHI, branch_sel->op_id, op_branch1->op_id, op_branch0->op_id);
            }
            inst_array.push_back(inst_branch_result);

            //op_index_j ++
            //Since when j = N-1, op_index_j will no longer be used and we will not
            //produce corresponding operands.
            if(j<N-1){
                op_index_j = new Operand();
                op_array.push_back(op_index_j);
                Instruction* inst_index_j = new Instruction();
                inst_index_j->Set_Instruction(op_index_j->op_id, ADDADD, last_op_index_j->op_id, data_to_id(1), data_to_id(0));
            
                inst_array.push_back(inst_index_j);
                last_op_index_j = op_index_j;
            }

        }

        if(i<L+N-1){
            op_index_i = new Operand();
            op_array.push_back(op_index_i);
            Instruction* inst_index_i = new Instruction();
            inst_index_i->Set_Instruction(op_index_i->op_id, ADDADD, last_op_index_i->op_id, data_to_id(1), data_to_id(0));
            inst_array.push_back(inst_index_i);
            last_op_index_i = op_index_i;
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
