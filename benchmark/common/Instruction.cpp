#include "Instruction.h"

int Instruction::gl_id=0;

Instruction::Instruction(){
    dst_op=0;
    inst_opcode=MULADD;
    src_op0=0;
    src_op1=0;
    src_op2=0;
}

void Instruction::Set_Instruction(int _dst_op, OPCODE _inst_opcode, int _src_op0, int _src_op1, int _src_op2){
    dst_op=_dst_op;
    inst_opcode=_inst_opcode;
    src_op0=_src_op0;
    src_op1=_src_op1;
    src_op2=_src_op2;
    inst_id=Self_Increase();
}

int Instruction::Self_Increase(){
    int tmp=gl_id;
    gl_id++;
    return tmp;
}


void Instruction::Display(){
    std::cout << inst_id << ": " << dst_op << " " << inst_opcode << " ";
    std::cout << src_op0 << " " << src_op1 << " " << src_op2 << " " << std::endl;
}

int Instruction::Compute(int src_val0, int src_val1, int src_val2){
    int dst_val=0;
    switch(inst_opcode){
        case MULADD:
            dst_val=src_val0*src_val1+src_val2;
            break;

        case MULSUB:
            dst_val=src_val0*src_val1-src_val2;
            break;

        case ADDADD:
            dst_val=src_val0+src_val1+src_val2;
            break;

        case ADDSUB:
            dst_val=src_val0+src_val1-src_val2;
            break;

        case SUBSUB:
            dst_val=src_val0-src_val1-src_val2;
            break;

        case PHI:
            dst_val=(src_val0) ? src_val1 : src_val2;
            break;

        case RSFAND:
            dst_val=(src_val0>>src_val1) & src_val2;
            break;

        case LSFADD:
            dst_val=(src_val0<<src_val1)+src_val2;
            break;

        case ABS:
            dst_val=abs(src_val0);
            break;

        case GT:
            dst_val=(src_val0>src_val1)? 1 : 0;
            break;

        case LET:
            dst_val=(src_val0<=src_val1)? 1 : 0;
            break;

        case ANDAND:
            dst_val=(src_val0!=0) && (src_val1!=0) && (src_val2!=0);
            break;

        default:
            printf("Unexpected opcode %d ! \n", inst_opcode);
            break;
    }
    return dst_val;
}
