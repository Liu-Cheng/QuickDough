#ifndef __INSTRUCTION_H__
#define __INSTRUCTION_H__

#include "operand.h"
#include "common.h"

struct Instruction{

    public:
        Operand* dstOp;
        Opcode instOpcode;
        Operand* srcOp0;
        Operand* srcOp1;
        Operand* srcOp2;

        Instruction();
        void setInstruction(Operand* _dstOp, Opcode _instOpcode, Operand* _srcOp0, Operand* _srcOp1, Operand& _srcOp2);
        int selfIncrease();
        int compute(int op0Val, int op1Val, int op2Val);
        void print(); 

    private:
        static int Inst_Cnt; 

};

#endif
