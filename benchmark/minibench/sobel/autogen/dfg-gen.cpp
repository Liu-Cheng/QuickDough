#include <vector>
#include <map>
#include <fstream>
#include <sstream>
#include <stdio.h>
#include <stdlib.h>
#include "common.h"
#include "Operand.h"
#include "Instruction.h"

void io_init(int sub_in[R*C/4+18], int sub_out[R*C/4]);
void op_array_init(std::vector<Operand*> &op_array, int sub_in[R*C/4+18], int sub_out[R*C/4]);
void kernel_to_dfg(std::vector<Operand*> &op_array, std::vector<Instruction*> &inst_array);
void dfg_compute(std::vector<Operand*> &op_array, std::vector<Instruction*> &inst_array);
void verify(const std::vector<Operand*> &op_array, int sub_out[R*C/4]);
void dfg_dump(const std::string &dfg_name, const std::vector<Operand*> &op_array, const std::vector<Instruction*> &inst_array);
int data_to_id(int idx, OPTYPE op_type);
int data_to_id(int const_value);

int bram0_addr=0; //Inbut buffer address
int bram1_addr=0; //Output buffer address
int const_in[5]={0, 8, 16, 24, 255}; //The constant array is put here to make id search easier.
const int const_num=5;

std::map<int, Operand*> id_to_op;

int main(){

    int sub_in[R*C/4+18];
    int sub_out[R*C/4];

    std::vector<Operand*> op_array;
    std::vector<Instruction*> inst_array;
    std::string dfg_name="sobel";

    io_init(sub_in, sub_out);
    op_array_init(op_array, sub_in, sub_out, const_in);
    kernel_to_dfg(op_array, inst_array);
    dfg_compute(op_array, inst_array);
    verify(op_array, sub_out);
    dfg_dump(dfg_name, op_array, inst_array);

}

void io_init(int sub_in[R*C/4+18], int sub_out[R*C/4]){
    unsigned char fig_in[R][C]={
#include "fig_in_small.txt"
    };

    unsigned char fig_out[R][C]={
#include "fig_out_small.txt"
    };

    int gx[3][3]={
        { -1, 0, 1 },
        { -2, 0, 2 },
        { -1, 0, 1 }
    };

    int gy[3][3]={
        {  1,  2,  1 },
        {  0,  0,  0 },
        { -1, -2, -1 }
    };

    int id=0;
    for(int i=0; i<R; i++){
        for(int j=0; j<C; j=j+4){
            int pixl0, pixl1, pixl2, pixl3;
            pixl0=(unsigned int)fig_in[i][j];
            pixl1=(unsigned int)fig_in[i][j+1]<<8;
            pixl2=(unsigned int)fig_in[i][j+2]<<16;
            pixl3=(unsigned int)fig_in[i][j+3]<<24;
            sub_in[id]=pixl0+pixl1+pixl2+pixl3;
            id++;
        }
    }

    for(int i=0; i<3; i++){
        for(int j=0; j<3; j++){
            sub_in[id]=gx[i][j];
            id++;
        }
    }

    for(int i=0; i<3; i++){
        for(j=0; j<3; j++){
            sub_in[id]=gy[i][j];
            id++;
        }
    }

    id=0;
    for(int i=0; i<R; i++){
        for(int j=0; j<C; j++){
            int pixl0, pixl1, pixl2, pixl3;
            pixl0=(unsigned int)fig_out[i][j];
            pixl1=(unsigned int)fig_out[i][j+1]<<8;
            pixl2=(unsigned int)fig_out[i][j+2]<<16;
            pixl3=(unsigned int)fig_out[i][j+3]<<24;
            sub_out[id]=pixl0+pixl1+pixl2+pixl3;
            id++;
        }
    }
}

void op_array_init(std::vector<Operand*> &op_array, int sub_in[R*C/4+18], int sub_out[R*C/4]){
    /* Put constants into the op_array */
    for(int i=0; i<const_num; i++){
        Operand* op_ptr=new Operand();
        op_ptr->op_value=const_in[i];
        op_ptr->op_type=INCONST;
        op_ptr->op_bram_id=0;
        op_ptr->op_bram_addr=bram0_addr; 
        bram0_addr++;
        op_array.push_back(op_ptr);
        id_to_op[op_ptr->op_id]=op_ptr;
    }

    /* map input data to op_array */
    for(int i=0; i<R*C/4+18; i++){
        op_ptr=new Operand();
        op_ptr->op_value=sub_in[i];
        op_ptr->op_bram_id=0;
        op_ptr->op_bram_addr=bram0_addr;
        bram0_addr++;
        op_ptr->op_type=INVAR;
        op_array.push_back(op_ptr);
        id_to_op[op_ptr->op_id]=op_ptr;
    }

    /* map output data to op_array */
    for(int i=0; i<R*C/4; i++){
        op_ptr=new Operand();
        op_ptr->op_bram_id=1;
        op_ptr->op_bram_addr=bram1_addr;
        bram1_addr++;
        op_ptr->op_type=OUTVAR;
        op_array.push_back(op_ptr);
        id_to_op[op_ptr->op_id]=op_ptr;
    }
}

int data_to_id(int idx, OPTYPE op_type){
    int invar_num=R*C/4+18;
    if(op_type==INVAR){
        return (idx+const_num);
    }
    else if(op_type==OUTVAR){
        return (idx+const_num+invar_num);
    }
    else{
        printf("Unknown IO operands! \n");
        return -1;
    }
}

int data_to_id(int const_val){
    for(int i=0; i<const_num; i++){
        if(const_val==const_in[i]){
            return i;
        }
    }
    printf("Couldn't find the specified the constant!\n");
    exit(EXIT_FAILURE);
}

void kernel_to_dfg(std::vector<Operand*> &op_array, std::vector<Instruction*> &inst_array){

    for(int i=1; i<R-1; i++){
        for(int j=4; j<C-4; j=j+4){

            /* Operands for the first pixl computation */
            Operand* opx0=new Operand();
            op_array.push_back(opx0);
            id_to_op[opx0->op_id]=opx0;

            Operand* opy0=new Operand();
            op_array.push_back(opy0);
            id_to_op[opy0->op_id]=opy0;

            Operand* op0=new Operand();
            op_array.push_back(op0);
            id_to_op[op0->op_id]=op0;

            /* Operands for the second pixl computation */
            Operator* opx1=new Operand();
            op_array.push_back(opx1);
            id_to_op[opx1->op_id]=opx1;

            Operator* opy1=new Operand();
            op_array.push_back(opy1);
            id_to_op[opy1->op_id]=opy1;

            Operator* op1=new Operand();
            op_array.push_back(op1);
            id_to_op[op1->op_id]=op1;

            /* Operand for the third pixl computation */
            Operand* opx2=new Operand();
            op_array.push_back(opx2);
            id_to_op[opx2->op_id]=opx2;

            Operand* opy2=new Operand();
            op_array.push_back(opy2);
            id_to_op[opy2->op_id]=opy2;

            Operand* op2=new Operand();
            op_array.push_back(op2);
            id_to_op[op2->op_id]=op2;

            /* Operands for the fourth pixl computation */
            Operator* opx3=new Operand();
            op_array.push_back(opx3);
            id_to_op[opx3->op_id]=opx3;

            Operator* opy3=new Operand();
            op_array.push_back(opy3);
            id_to_op[opy3->op_id]=opy3;

            Operator* op3=new Operand();
            op_array.push_back(op3);
            id_to_op[op3->op_id]=op3;

            for(int p=-1; p<=1; p++){
                for(int q=-1; q<=1; q++){
                    int byte_id, word_id, byte_lid;
                    int gx_id, gy_id, gx, gy;
                    int curr_idx0, curr_idx1, curr_idx2, curr_idx3;
                    int curr_idy0, curr_idy1, curr_idy2, curr_idy3;
                    int last_idx0, last_idx1, last_idx2, last_idx3;
                    int last_idy0, last_idy1, last_idy2, last_idy3;


                    Operand* pixl1=new Operand();
                    op_array.push_back(pixl1);
                    id_to_op[pixl1->op_id]=pixl1;

                    Operand* pixl2=new Operand();
                    op_array.push_back(pixl2);
                    id_to_op[pixl2->op_id]=pixl2;

                    Operand* pixl3=new Operand();
                    op_array.push_back(pixl3);
                    id_to_op[pixl3->op_id]=pixl3;

                    gx_id=R*C/4+(p+1)*3+(q+1);
                    gy_id=R*C/4+9+(p+1)*3+(q+1);
                    gx=sub_in[gx_id];
                    gy=sub_in[gy_id];

                    byte_id=(i+p)*R+j+q;
                    word_id=byte_id/4;
                    byte_lid=byte_id%4;


                    Operand* pixl0=new Operand();
                    op_array.push_back(pixl0);
                    id_to_op[pixl0->op_id]=pixl0;

                    Instruction* inst0=new Instruction();
                    inst0->dst_op=pixl0->op_id;
                    inst0->inst_opcode=
                    inst0->data_to_id(word_id, INVAR);

                    pixl0=sub_in[word_id]>>byte_lid*8 & 0xff;
                    if(p==-1 && q==-1){
                        curr_idx0=pixl0*gx+0;
                        curr_idy0=pixl0*gy+0;
                        last_idx0=curr_idx0;
                        last_idy0=curr_idy0;
                    }
                    else if(p==1 && q==1){
                        sumx0=pixl0*gx+last_idx0;
                        sumy0=pixl0*gy+last_idy0;
                    }
                    else{
                        curr_idx0=pixl0*gx+last_idx0;
                        curr_idy0=pixl0*gy+last_idy0;
                        last_idx0=curr_idx0;
                        last_idy0=curr_idy0;
                    }

                    byte_id=(i+p)*R+j+q+1;
                    word_id=byte_id/4;
                    byte_lid=byte_id%4;
                    pixl1=sub_in[word_id]>>byte_lid*8 & 0xff;
                    if(p==-1 && q==-1){
                        curr_idx1=pixl1*gx+0;
                        curr_idy1=pixl1*gy+0;
                        last_idx1=curr_idx1;
                        last_idy1=curr_idy1;
                    }
                    else if(p==1 && q==1){
                        sumx1=pixl1*gx+last_idx1;
                        sumy1=pixl1*gy+last_idy1;
                    }
                    else{
                        curr_idx1=pixl1*gx+last_idx1;
                        curr_idy1=pixl1*gy+last_idy1;
                        last_idx1=curr_idx1;
                        last_idy1=curr_idy1;
                    }
                    
                    byte_id=(i+p)*R+j+q+2;
                    word_id=byte_id/4;
                    byte_lid=byte%4;
                    pixl2=sub_in[word_id]>>byte_lid*8 & 0xff;
                    if(p==-1 && q==-1){
                        curr_idx2=pixl2*gx+0;
                        curr_idy2=pixl2*gy+0;
                        last_idx2=curr_idx2;
                        last_idy2=curr_idy2;
                    }
                    else if(p==1 && q==1){
                        sumx2=pixl2*gx+last_idx2;
                        sumy2=pixl2*gy+last_idy2;
                    }
                    else{
                        curr_idx2=pixl2*gx+last_idx2;
                        curr_idy2=pixl2*gy+last_idy2;
                        last_idx2=curr_idx2;
                        last_idy2=curr_idy2;
                    }    

                    byte_id=(i+p)*R+j+q+3;
                    word_id=byte_id/4;
                    byte_lid=byte%4;
                    pixl3=sub_in[word_id]>>byte_lid*8 & 0xff;
                    if(p==-1 && q==-1){
                        curr_idx3=pixl3*gx+0;
                        curr_idy3=pixl3*gy+0;
                        last_idx3=curr_idx3;
                        last_idy3=curr_idy3;
                    }
                    else if(p==1 && q==1){
                        sumx3=pixl3*gx+last_idx3;
                        sumy3=pixl3*gy+last_idy3;
                    }
                    else{
                        curr_idx3=pixl3*gx+last_idx3;
                        curr_idy3=pixl3*gy+last_idy3;
                        last_idx3=curr_idx3;
                        last_idy3=curr_idy3;
                    }
                }
            }
            sum0=abs(sumx0)+abs(sumy0);
            sum1=abs(sumx1)+abs(sumy1);
            sum2=abs(sumx2)+abs(sumy2);
            sum3=abs(sumx3)+abs(sumy3);

            sum0=(sum0>255)? 0 : (255-sum0);
            sum1=(sum1>255)? 0 : (255-sum1);
            sum2=(sum2>255)? 0 : (255-sum2);
            sum3=(sum3>255)? 0 : (255-sum3);

            int nid=(i*R+j)>>2;
            sub_out[nid]=sum0+sum1<<8+sum2<<16+sum3<<24;

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

void dfg_compute(std::vector<Operand*> &op_array, std::vector<Instruction*> &inst_array){
    std::vector<Instruction*>::iterator inst_it;
    for(inst_it=inst_array.begin(); inst_it!=inst_array.end(); inst_it++){
        int src_val0=id_to_op[(*inst_it)->src_op0]->op_value;
        int src_val1=id_to_op[(*inst_it)->src_op1]->op_value;
        int src_val2=id_to_op[(*inst_it)->src_op2]->op_value;
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
        
        id_to_op[(*inst_it)->dst_op]->op_value=dst_val;
    }
}


void verify(const std::vector<Operand*> &op_array, int sub_out[N][N]){
    for(int i=0; i<N; i++){
        for(int j=0; j<N; j++){
            int op_id=data_to_id(i, j, OUTVAR);
            if(id_to_op[op_id]->op_value!=sub_out[i][j]){
                printf("DFG computation is wrong!\n");
                printf("expected[%d][%d]=%d, computed result=%d \n", i, j, sub_out[i][j], id_to_op[op_id]->op_value);
                exit(EXIT_FAILURE);
            }
        }
    }

    printf("Verification passed!\n");
}



void dfg_dump(const std::string &dfg_name, const std::vector<Operand*> &op_array, const std::vector<Instruction*> &inst_array){
    std::ostringstream oss;
    oss << dfg_name << ".txt";
    std::ofstream op_fhandle;
    op_fhandle.open(oss.str().c_str());
    if(!op_fhandle.is_open()){
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

    /* Dump operand details to .txt file */
    std::vector<Operand*>::const_iterator op_it;
    for(op_it=op_array.begin(); op_it!=op_array.end(); op_it++){
        op_fhandle << (*op_it)->op_id << " " \
            << (*op_it)->op_bram_addr << " " \
            << (*op_it)->op_value << " " \
            << (*op_it)->op_bram_id << " " \
            << (*op_it)->op_type << "\n";
    }
    op_fhandle.close();

    /* Dump DFG node details to .s file */
    std::vector<Instruction*>::const_iterator inst_it;
    for(inst_it=inst_array.begin(); inst_it!=inst_array.end(); inst_it++){
        inst_fhandle << (*inst_it)->dst_op << " " \
            << (*inst_it)->inst_opcode << " " \
            << (*inst_it)->src_op0 << " " \
            << (*inst_it)->src_op1 << " " \
            << (*inst_it)->src_op2 << "\n";
    }
    inst_fhandle.close();
}
