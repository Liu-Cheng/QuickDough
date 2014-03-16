#ifndef __INSTRUCTION_H__
#define __INSTRUCTION_H__

struct Instruction{
    public:
        int dst_op;
        OPCODE inst_opcode;
        int src_op0;
        int src_op1;
        int src_op2;

        Instruction();
};

#endif
