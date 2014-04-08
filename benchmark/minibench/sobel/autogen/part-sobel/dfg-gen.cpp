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
//int end_id=500;

int main(){

    int sub_in[R*C/4+18];
    int sub_out[R*C/4];

    std::vector<Operand*> op_array;
    std::vector<Instruction*> inst_array;
    std::string dfg_name="sobel";

    io_init(sub_in, sub_out);
    op_array_init(op_array, sub_in, sub_out);
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
        for(int j=0; j<3; j++){
            sub_in[id]=gy[i][j];
            id++;
        }
    }

    id=0;
    for(int i=0; i<R; i++){
        for(int j=0; j<C; j=j+4){
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
        op_array.push_back(op_ptr);
        op_ptr->Set_Operand(const_in[i], 0, bram0_addr, INCONST);
        bram0_addr++;
    }

    /* map input data to op_array */
    for(int i=0; i<R*C/4+18; i++){
        Operand* op_ptr=new Operand();
        op_array.push_back(op_ptr);
        op_ptr->Set_Operand(sub_in[i], 0, bram0_addr, INVAR);
        bram0_addr++;
    }

    /* map output data to op_array */
    for(int i=0; i<R*C/4; i++){
        Operand* op_ptr=new Operand();
        op_array.push_back(op_ptr);
        op_ptr->Set_Operand(0, 1, bram1_addr, OUTVAR);
        bram1_addr++;
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

            /* Operands for the pixl computation */
            Operand* opx[4];
            Operand* opy[4];
            Operand* op[4];
            for(int k=0; k<4; k++){
                opx[k]=new Operand();
                opy[k]=new Operand();
                op[k]=new Operand();
                op_array.push_back(opx[k]);
                op_array.push_back(opy[k]);
                op_array.push_back(op[k]);
            }

            for(int p=-1; p<=1; p++){
                for(int q=-1; q<=1; q++){
                    int byte_id, word_id, byte_lid;
                    int gx_id, gy_id;
                    int src_id0[4];
                    int src_id1[4];
                    int src_id2[4];
                    int last_idx[4];
                    int last_idy[4];
                    //int rval;
                    Operand* pixl[4];
                    gx_id=R*C/4+(p+1)*3+(q+1);
                    gy_id=R*C/4+9+(p+1)*3+(q+1);

                    /* Note that pixl0, pixl1, pixl2 and pixl3 in different loop iterations may actually
                     * be the same, but we just ignore this and create new operand for all of them. Hopefully
                     * this will be fixed in future.*/

                    for(int k=0; k<4; k++){

                        /* Pixl[k] calculation */
                        byte_id=(i+p)*R+j+q+k;
                        word_id=byte_id/4;
                        byte_lid=byte_id%4;
                        pixl[k]=new Operand();
                        op_array.push_back(pixl[k]);
                        Instruction* inst0=new Instruction();
                        inst_array.push_back(inst0);
                        src_id0[k]=data_to_id(word_id, INVAR);
                        src_id1[k]=data_to_id(byte_lid*8); //This operand is a constant (0, 8, 16, 24)
                        src_id2[k]=data_to_id(0xff);
                        inst0->Set_Instruction(pixl[k]->op_id, RSFAND, src_id0[k], src_id1[k], src_id2[k]);
                        
                        /*
                        rval=(op_array[src_id0[k]]->op_value >> op_array[src_id1[k]]->op_value) & 0xff;
                        pixl[k]->op_value=rval;

                        if(inst0->inst_id>=0 && inst0->inst_id<=end_id){
                            inst0->Display(); 
                            pixl[k]->Display();
                            op_array[src_id0[k]]->Display();
                            op_array[src_id1[k]]->Display();
                            op_array[src_id2[k]]->Display();
                        }
                        */

                        if(p==-1 && q==-1){
                            Operand* curr_op=new Operand();
                            op_array.push_back(curr_op);
                            Instruction* curr_inst=new Instruction();
                            inst_array.push_back(curr_inst);

                            src_id0[k]=pixl[k]->op_id;
                            src_id1[k]=data_to_id(gx_id, INVAR);
                            src_id2[k]=data_to_id(0);
                            curr_inst->Set_Instruction(curr_op->op_id, MULADD, src_id0[k], src_id1[k], src_id2[k]);
                            last_idx[k]=curr_op->op_id;

                            /*
                            rval=op_array[src_id0[k]]->op_value*op_array[src_id1[k]]->op_value;
                            curr_op->op_value=rval;
                            
                            if(curr_inst->inst_id>=0 && curr_inst->inst_id<=end_id){
                                curr_inst->Display(); 
                                curr_op->Display();
                                op_array[src_id0[k]]->Display();
                                op_array[src_id1[k]]->Display();
                                op_array[src_id2[k]]->Display();
                            }
                            */

                            curr_op=new Operand();
                            op_array.push_back(curr_op);
                            curr_inst=new Instruction();
                            inst_array.push_back(curr_inst);

                            src_id1[k]=data_to_id(gy_id, INVAR);
                            curr_inst->Set_Instruction(curr_op->op_id, MULADD, src_id0[k], src_id1[k], src_id2[k]);
                            last_idy[k]=curr_op->op_id;

                            /*
                            rval=op_array[src_id0[k]]->op_value*op_array[src_id1[k]]->op_value;
                            curr_op->op_value=rval;
                            
                            if(curr_inst->inst_id>=0 && curr_inst->inst_id<=end_id){
                                curr_inst->Display(); 
                                curr_op->Display();
                                op_array[src_id0[k]]->Display();
                                op_array[src_id1[k]]->Display();
                                op_array[src_id2[k]]->Display();
                            }
                            */
                         
                        }
                        else if(p==1 && q==1){
                            Instruction* curr_inst=new Instruction();
                            inst_array.push_back(curr_inst);
                            src_id0[k]=pixl[k]->op_id;
                            src_id1[k]=data_to_id(gx_id, INVAR);
                            src_id2[k]=last_idx[k];
                            curr_inst->Set_Instruction(opx[k]->op_id, MULADD, src_id0[k], src_id1[k], src_id2[k]);

                            /*
                            rval=op_array[src_id0[k]]->op_value * op_array[src_id1[k]]->op_value + op_array[src_id2[k]]->op_value;
                            opx[k]->op_value=rval;

                            if(curr_inst->inst_id>=0 && curr_inst->inst_id<=end_id){
                                curr_inst->Display(); 
                                opx[k]->Display();
                                op_array[src_id0[k]]->Display();
                                op_array[src_id1[k]]->Display();
                                op_array[src_id2[k]]->Display();
                            }
                            */

                            curr_inst=new Instruction();
                            inst_array.push_back(curr_inst);
                            src_id1[k]=data_to_id(gy_id, INVAR);
                            src_id2[k]=last_idy[k];
                            curr_inst->Set_Instruction(opy[k]->op_id, MULADD, src_id0[k], src_id1[k], src_id2[k]);

                            /*
                            rval=op_array[src_id0[k]]->op_value * op_array[src_id1[k]]->op_value + op_array[src_id2[k]]->op_value;
                            opy[k]->op_value=rval;

                            if(curr_inst->inst_id>=0 && curr_inst->inst_id<=end_id){
                                curr_inst->Display(); 
                                opy[k]->Display();
                                op_array[src_id0[k]]->Display();
                                op_array[src_id1[k]]->Display();
                                op_array[src_id2[k]]->Display();
                            }
                            */
                        }
                        else{
                            Operand* curr_op=new Operand();
                            op_array.push_back(curr_op);
                            Instruction* curr_inst=new Instruction();
                            inst_array.push_back(curr_inst);

                            src_id0[k]=pixl[k]->op_id;
                            src_id1[k]=data_to_id(gx_id, INVAR);
                            src_id2[k]=last_idx[k];
                            curr_inst->Set_Instruction(curr_op->op_id, MULADD, src_id0[k], src_id1[k], src_id2[k]);
                            last_idx[k]=curr_op->op_id;

                            /*
                            rval=op_array[src_id0[k]]->op_value * op_array[src_id1[k]]->op_value + op_array[src_id2[k]]->op_value;
                            curr_op->op_value=rval;

                            if(curr_inst->inst_id>=0 && curr_inst->inst_id<=end_id){
                                curr_inst->Display(); 
                                curr_op->Display();
                                op_array[src_id0[k]]->Display();
                                op_array[src_id1[k]]->Display();
                                op_array[src_id2[k]]->Display();
                            }
                            */
                            
                            curr_op=new Operand();
                            op_array.push_back(curr_op);
                            curr_inst=new Instruction();
                            inst_array.push_back(curr_inst);

                            src_id0[k]=pixl[k]->op_id;
                            src_id1[k]=data_to_id(gy_id, INVAR);
                            src_id2[k]=last_idy[k];
                            curr_inst->Set_Instruction(curr_op->op_id, MULADD, src_id0[k], src_id1[k], src_id2[k]);
                            last_idy[k]=curr_op->op_id;

                            /*
                            rval=op_array[src_id0[k]]->op_value * op_array[src_id1[k]]->op_value + op_array[src_id2[k]]->op_value;
                            curr_op->op_value=rval;

                            if(curr_inst->inst_id>=0 && curr_inst->inst_id<=end_id){
                                curr_inst->Display(); 
                                curr_op->Display();
                                op_array[src_id0[k]]->Display();
                                op_array[src_id1[k]]->Display();
                                op_array[src_id2[k]]->Display();
                            }
                            */
                        }
                    }
                }
            }

            for(int k=0; k<4; k++){
                Operand* abs_sumx=new Operand();
                op_array.push_back(abs_sumx);
                Instruction* inst_sumx=new Instruction();
                inst_sumx->Set_Instruction(abs_sumx->op_id, ABS, opx[k]->op_id, 0, 0);
                inst_array.push_back(inst_sumx);

                /*
                abs_sumx->op_value=abs(opx[k]->op_value);

                if(inst_sumx->inst_id>=0 && inst_sumx->inst_id<=end_id){
                    inst_sumx->Display(); 
                    abs_sumx->Display();
                    opx[k]->Display();
                    op_array[0]->Display();
                    op_array[0]->Display();
                }
                */

                Operand* abs_sumy=new Operand();
                op_array.push_back(abs_sumy);
                Instruction* inst_sumy=new Instruction();
                inst_sumy->Set_Instruction(abs_sumy->op_id, ABS, opy[k]->op_id, 0, 0);
                inst_array.push_back(inst_sumy);

                /*
                abs_sumy->op_value=abs(opy[k]->op_value);

                if(inst_sumy->inst_id>=0 && inst_sumy->inst_id<=end_id){
                    inst_sumy->Display();
                    abs_sumy->Display();
                    opy[k]->Display();
                    op_array[0]->Display();
                    op_array[0]->Display();
                }
                */
                
                Operand* abs_sum=new Operand();
                op_array.push_back(abs_sum);
                Instruction* inst_sum=new Instruction();
                inst_sum->Set_Instruction(abs_sum->op_id, ADDADD, abs_sumx->op_id, abs_sumy->op_id, 0);
                inst_array.push_back(inst_sum);

                /*
                abs_sum->op_value=abs_sumx->op_value+abs_sumy->op_value;

                if(inst_sum->inst_id>=0 && inst_sum->inst_id<=end_id){
                    inst_sum->Display();
                    abs_sum->Display();
                    abs_sumx->Display();
                    abs_sumy->Display();
                    op_array[0]->Display();
                }
                */

                Operand* op_flag=new Operand();
                op_array.push_back(op_flag);
                Instruction* inst_flag=new Instruction();
                inst_flag->Set_Instruction(op_flag->op_id, GT, abs_sum->op_id, data_to_id(255), 0);
                inst_array.push_back(inst_flag);

                /*
                op_flag->op_value=(abs_sum->op_value>255)? 1: 0;

                if(inst_flag->inst_id>=0 && inst_flag->inst_id<=end_id){
                    inst_flag->Display();
                    op_flag->Display();
                    abs_sum->Display();
                    op_array[data_to_id(255)]->Display();
                    op_array[0]->Display();
                }
                */
                
                Operand* op_sub=new Operand();
                op_array.push_back(op_sub);
                Instruction* inst_sub=new Instruction();
                inst_sub->Set_Instruction(op_sub->op_id, SUBSUB, data_to_id(255), abs_sum->op_id, 0);
                inst_array.push_back(inst_sub);

                /*
                op_sub->op_value=255-abs_sum->op_value;

                if(inst_sub->inst_id>=0 && inst_sub->inst_id<=end_id){
                    inst_sub->Display();
                    op_sub->Display();
                    op_array[data_to_id(255)]->Display();
                    abs_sum->Display();
                    op_array[0]->Display();
                }
                */
                
                Instruction* inst_phi=new Instruction();
                inst_phi->Set_Instruction(op[k]->op_id, PHI, op_flag->op_id, 0, op_sub->op_id);
                inst_array.push_back(inst_phi);

                /*
                op[k]->op_value=(op_flag->op_value)? 0 : op_sub->op_value;

                if(inst_phi->inst_id>=0 && inst_phi->inst_id<=end_id){
                    inst_phi->Display();
                    op[k]->Display();
                    op_flag->Display();
                    op_array[0]->Display();
                    op_sub->Display();
                }
                */
            }

            Operand* op_tmp1=new Operand();
            op_array.push_back(op_tmp1);
            Instruction* inst_tmp1=new Instruction();
            inst_tmp1->Set_Instruction(op_tmp1->op_id, LSFADD, op[1]->op_id, data_to_id(8), op[0]->op_id);
            inst_array.push_back(inst_tmp1);

            /*
            op_tmp1->op_value=(op[1]->op_value << 8) + op[0]->op_value;

            if(inst_tmp1->inst_id>=0 && inst_tmp1->inst_id<=end_id){
                inst_tmp1->Display();
                op_tmp1->Display();
                op[1]->Display();
                op_array[data_to_id(8)]->Display();
                op[0]->Display();
            }
            */
            
            Operand* op_tmp2=new Operand();
            op_array.push_back(op_tmp2);
            Instruction* inst_tmp2=new Instruction();
            inst_tmp2->Set_Instruction(op_tmp2->op_id, LSFADD, op[2]->op_id, data_to_id(16), op_tmp1->op_id);
            inst_array.push_back(inst_tmp2);

            /*
            op_tmp2->op_value=(op[2]->op_value << 16) + op_tmp1->op_value;

            if(inst_tmp2->inst_id>=0 && inst_tmp2->inst_id<=end_id){
                inst_tmp2->Display();
                op_tmp2->Display();
                op[2]->Display();
                op_array[data_to_id(16)]->Display();
                op_tmp1->Display();
            }
            */
            
            int nid=(i*R+j)>>2;
            Instruction* inst_out=new Instruction();
            inst_out->Set_Instruction(data_to_id(nid, OUTVAR), LSFADD, op[3]->op_id, data_to_id(24), op_tmp2->op_id);
            inst_array.push_back(inst_out);

            /*
            op_array[data_to_id(nid, OUTVAR)]->op_value = (op[3]->op_value << 24) + op_tmp2->op_value;

            if(inst_out->inst_id>=0 && inst_out->inst_id<=end_id){
                inst_out->Display();
                op_array[data_to_id(nid, OUTVAR)]->Display();
                op[3]->Display();
                op_array[data_to_id(24)]->Display();
                op_tmp2->Display();
            }
            */
        }
    }
}

void dfg_compute(std::vector<Operand*> &op_array, std::vector<Instruction*> &inst_array){
    //std::cout << "------------------------------------------" << std::endl;
    std::vector<Instruction*>::iterator inst_it;
    //int id=0;
    for(inst_it=inst_array.begin(); inst_it!=inst_array.end(); inst_it++){
        int src_val0=op_array[(*inst_it)->src_op0]->op_value;
        int src_val1=op_array[(*inst_it)->src_op1]->op_value;
        int src_val2=op_array[(*inst_it)->src_op2]->op_value;
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
            dst_val=(src_val0) ? src_val1 : src_val2;
        }
        else if((*inst_it)->inst_opcode==RSFAND){
            dst_val=(src_val0>>src_val1) & src_val2;
        }
        else if((*inst_it)->inst_opcode==LSFADD){
            dst_val=(src_val0<<src_val1)+src_val2;
        }
        else if((*inst_it)->inst_opcode==ABS){
            dst_val=abs(src_val0);
        }
        else if((*inst_it)->inst_opcode==GT){
            dst_val=(src_val0>src_val1)? 1 : 0;
        }
        else{
            printf("Unexpected opcode! \n");
        }
        op_array[(*inst_it)->dst_op]->op_value=dst_val;

        /*
        if(id>=0 && id<=end_id){
            std::cout << id <<": "<< (*inst_it)->dst_op << " ";
            std::cout << (*inst_it)->inst_opcode << " ";
            std::cout << (*inst_it)->src_op0 << " ";
            std::cout << (*inst_it)->src_op1 << " ";
            std::cout << (*inst_it)->src_op2 << " " << std::endl;

            op_array[(*inst_it)->dst_op]->Display();
            op_array[(*inst_it)->src_op0]->Display();
            op_array[(*inst_it)->src_op1]->Display();
            op_array[(*inst_it)->src_op2]->Display();
        }
        id++;
        */
    }
}


void verify(const std::vector<Operand*> &op_array, int sub_out[R*C/4]){
    /* Since the kernel just deals with the kernel part of the computation,
     * we will not verify the part that is not assigned to FPGA.*/
    for(int i=0; i<R; i++){
        for(int j=0; j<C; j=j+4){
            if(i==0 || j==0 || i==R-1 || j==C-1){
                continue;
            }
            else if(j<=3 || j>=C-4){
                continue;
            }
            else{
                int index=(i*R+j)/4;
                int op_id=data_to_id(index, OUTVAR);
                if(op_array[op_id]->op_value!=sub_out[index]){
                    printf("DFG computation is wrong!\n");
                    printf("expected[%d]=%d, computed result=%d \n", index, sub_out[index], op_array[op_id]->op_value);
                    exit(EXIT_FAILURE);
                }
            }
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
