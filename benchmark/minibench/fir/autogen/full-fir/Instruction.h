#ifndef __INSTRUCTION_H__
#define __INSTRUCTION_H__

#include "common.h"

struct Instruction{
    public:
        int dst_op;
        OPCODE inst_opcode;
        int src_op0;
        int src_op1;
        int src_op2;

        Instruction();
        void Set_Instruction(int _dst_op, OPCODE _inst_opcode, int _src_op0, int _src_op1, int _src_op2);
};

#endif
