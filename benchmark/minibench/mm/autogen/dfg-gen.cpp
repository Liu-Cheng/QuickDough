#include <iostream>
#include <vector>
#include <map>
#include <stdio.h>
#include "common.h"
#include "Operand.h"
#include "Instruction.h"

void io_init(int sub_in[2*N][N], int sub_out[N][N]);
void op_array_init(vector<Operand*> &op_array);
void kernel_to_dfg(vector<Operand*> &op_array, vector<Instruction*> &inst_array);
void dfg_compute(vector<Operand*> &op_array, vector<Instruction*> &inst_array);
void verify(const vector<Operand*> &op_array, int sub_out[N][N]);
void dfg_dump(const std::string &dfg_name, const vector<Operand*> &op_array, const vector<Instruction*> &inst_array);
int data_to_id(int idx, int idy, OPTYPE op_type);
int data_to_id(int const_value);

int bram0_addr=0;
int bram1_addr=0;
std::map<int, Operand*> id_to_op;

int main(){

    int const_in[1]={ 0 };
    int sub_in[2*N][N];
    int sub_out[N][N];

    std::vector<Operand*> op_array;
    std::vector<Instruction*> inst_array;
    std::string dfg_name="mm";

    io_init(sub_in, sub_out);
    op_array_init(op_array);
    kernel_to_dfg(op_array, inst_array);
    dfg_compute(op_array, inst_array);
    verfiy(op_array, sub_out);
    dfg_dump(dfg_name, op_array, inst_array);
}

void io_init(int sub_in[2*N][N], int sub_out[N][N]){
    int a[N][N]={
#include "a_in_small.txt"
    };
    int b[N][N]={
#include "b_in_small.txt"
    };
    int c[N][N]={
#include "c_out_small.txt"
    };

    for(int i=0; i<N; i++){
        for(j=0; j<N; j++){
            sub_in[i][j]=a[i][j];
            sub_in[i+N][j]=b[i][j];
            sub_out[i][j]=c[i][j];
        }
    }
}

void op_array_init(vector<Operand*> &op_array){
    /* 0 is the only contant */
    Operand* op_ptr=new Operand();
    op_ptr->op_value=const_in[0];
    op_ptr->op_type=INCONST;
    op_ptr->bram_id=0;
    op_ptr->bram_addr=bram0_addr; 
    bram0_addr++;
    op_array.push_back(op_ptr);
    id_to_op[op_ptr->op_id]=op_ptr;

    /* map input data to op_array */
    for(int i=0; i<2*N; i++){
        for(j=0; j<N; j++){
            op_ptr=new Operand();
            op_ptr->op_value=sub_in[i][j];
            op_ptr->op_bram_id=0;
            op_ptr->op_bram_addr=bram0_addr;
            bram0_addr++;
            op_ptr->op_type=INVAR;
            op_array.push_back(op_ptr);
            id_to_op[op_ptr->bram_id]=op_ptr;
        }
    }

    /* map output data to op_array */
    for(int i=0; i<N; i++){
        for(int j=0; j<N; j++){
            op_ptr=new Operand();
            op_ptr->op_bram_id=1;
            op_ptr->op_bram_addr=bram1_addr;
            bram1_addr++;
            op_ptr->op_type=OUTVAR;
            op_array.push_back(op_ptr);
        }
    }
}

int data_to_id(int idx, int idy, OPTYPE op_type){
    int const_sum=1;
    int invar_sum=2*N*N;
    if(op_type==INVAR){
        return (idx*N+idy+const_sum);
    }
    else if(op_type==OUTVAR){
        return (idx*N+idy+const_sum+invar_sum);
    }
    else{
        printf("Unknown IO operands! \n");
        return -1;
    }
}

int data_to_id(int const_val){
    return 0;
}

void kernel_to_dfg(vector<Operand*> &op_array, vector<Instruction*> &inst_array){
    for(int i=0; i<N; i++){
        for(int j=0; j<N; j++){

            int last_op_id;
            int curr_op_id;
            for(int k=0; k<N; k++){
                Instruction* inst_ptr=new Instruction();
                if(k==0){
                    Operand* dst_ptr=new Operand();
                    id_to_op[dst_ptr->op_id]=dst_ptr;
                    op_array.push_back(dst_ptr);

                    inst_ptr->dst_op=dst_ptr->op_id;
                    inst_ptr->inst_opcode=MULADD;
                    inst_ptr->src_op0=data_to_id(i, k, INVAR);
                    inst_ptr->src_op1=data_to_id(N+k, j, INVAR);
                    inst_ptr->src_op2=data_to_id(0);
                    inst_array.push_back(inst_ptr);

                    curr_op_id=dst_ptr->op_id;
                    last_op_id=curr_op_id;
                }
                else if(k<N-1){
                    Operand* dst_ptr=new Operand();
                    id_to_op[dst_ptr->op_id]=dst_ptr;
                    op_array.push_back(dst_ptr);

                    inst_ptr->dst_op=dst_ptr->op_id;
                    inst_ptr->inst_opcode=MULADD;
                    inst_ptr->src_op0=data_to_id(i, k, INVAR);
                    inst_ptr->src_op1=data_to_id(N+k, j, INVAR);
                    inst_ptr->src_op2=last_op_id;
                    inst_array.push_back(inst_ptr);

                    curr_op_id=dst_ptr->op_id;
                    last_op_id=curr_op_id;
                }
                else{
                    inst_ptr->dst_op=data_to_id(i, j, OUTVAR);
                    inst_ptr->inst_opcode=MULADD;
                    inst_ptr->src_op0=data_to_id(i, k, INVAR);
                    inst_ptr->src_op1=data_to_id(N+k, j, INVAR);
                    inst_ptr->src_op2=last_op_id;
                    inst_array.push_back(inst_ptr);
                }
            }
        }
    }
}

void dfg_compute(vector<Operand*> &op_array, vector<Instruction*> &inst_array){
    vector<Instruction*>::iterator inst_it;
    for(inst_it=inst_array.begin(), inst_it!=inst_array.end(); inst_it++){
        int src_val0=id2op[(*inst_it)->src_op0]->op_value;
        int src_val1=id2op[(*inst_it)->src_op1]->op_value;
        int src_val2=id2op[(*inst_it)->src_op2]->op_value;
        int dst_val;
        if((*inst_it)->inst_opcode==MULSUB){
            dst_val=src_val0*src_val1-src_val2;
        }
        else if((*inst_it)->inst_opcode==MULADD){
            dst_val=src_val0*src_val1+src_val2;
        }
        else if((*inst_it)->inst_opcode==ADDADD){
            dst_val=src_val0+src_val1+src_val2;
        }
        else if((*inst_it)->inst_opcode==ADDSUB){
            dst_val=src_val0+src_val1-src_val2;
        }
        else if((*inst_it)->inst_opcode==SUBADD){
            dst_val=src_val0-src_val1+src_val2;
        }
        else if((*inst_it)->inst_opcode==SUBSUB){
            dst_val=src_val0-src_val1-src_val2;
        }
        else if((*inst_it)->inst_opcode==PHI){
            dst_val=(src_val0==0) ? src_val1 : src_val2;
        }
        else{
            printf("Unexpected opcode! \n");
        }
        
        id2op[(*inst_it)->dst_op]->op_value=dst_val;
    }
}


void verify(const vector<Operand*> &op_array, int sub_out[N][N]){
    for(int i=0; i<N; i++){
        for(int j=0; j<N; j++){
            int op_id=data_to_id(i, j, OUTVAR);
            if(id2op[op_id]->op_value!=sub_out[i][j]){
                printf("DFG computation is wrong!\n");
                printf("expected[%d][%d]=%d, computed result=%d \n", i, j, sub_out[i][j], id2op[op_id]->op_value);
                exit(1);
            }
        }
    }

    printf("Verification passed!\n");
}



void dfg_dump(const std::string &dfg_name, const vector<Operand*> &op_array, const vector<Instruction*> &inst_array){
    std::ostringstream oss;
    oss << dfg_name << ".txt";
    ofstream op_fhandle;
    op_fhandle.open(oss.c_str());
    if(op_fhandle.is_open()){
        std::cout << "Failed to open " << oss.str() << "\n";
        exit(1);
    }

    oss << dfg_name << ".s";
    ofstream inst_fhandle;
    if(inst_fhandle.is_open()){
        std::cout << "Failed to open" <<oss.str() << "\n";
        exit(1);
    }

    /* Dump operand details to .txt file */
    vector<Operand*>::iterator op_it;
    for(op_it=op_array.begin(); op_it!=op_array.end(); op_it++){
        op_fhandle << (*op_it)->op_id << " " \
            << (*op_it)->op_bram_addr << " " \
            << (*op_it)->op_value << " " \
            << (*op_it)->op_bram_id << " " \
            << (*op_it)->op_type << "\n";
    }
    op_fhandle.close();

    /* Dump DFG node details to .s file */
    vector<Instruction*>::iterator inst_it;
    for(inst_it=inst_array.begin(); inst_it!=inst_array.end(); inst_it++){
        inst_fhandle << (*inst_it)->dst_op << " " \
            << (*inst_it)->inst_opcode << " " \
            << (*inst_it)->src_op0 << " " \
            << (*inst_it)->src_op1 << " " \
            << (*inst_it)->src_op2 << "\n";
    }
    inst_fhandle.clsoe();
}
