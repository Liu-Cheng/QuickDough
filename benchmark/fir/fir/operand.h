#ifndef __OPERAND_H__
#define __OPERAND_H__

#include "common.h"

struct Operand{

    public:
        int opId;
        int opVal;
        int ioBufferId;
        int ioBufferAddr;
        OperandType opType;

        Operand();
        void setOperand(int _opVal, int _ioBufferID, int _ioBufferAddr, OperandType _opType);
        void Display();

    private:    

        static int Inst_Cnt;
        int Self_Increase();

};

#endif
