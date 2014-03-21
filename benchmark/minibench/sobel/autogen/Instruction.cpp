#include "Instruction.h"

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
}
