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
        int inst_id;

        Instruction();
        void Set_Instruction(int _dst_op, OPCODE _inst_opcode, int _src_op0, int _src_op1, int _src_op2);
        int Self_Increase();

        //It will print details of the instruction when the instruction id is in the range[start_id, end_id].
        //Note that it is maiinly used for debugging purpose.
        void Display(); 


    private:
        static int gl_id; 
};

#endif
