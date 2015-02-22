#ifndef __OPERAND_H__
#define __OPERAND_H__

#include "common.h"

struct Operand{

    public:
        int OP_ID;
        int OP_Val;
        int IO_Buffer_ID;
        int IO_Buffer_Addr;
        Operand_Type OP_Type;

        Operand();
        void Set_Operand(int _OP_Val, int _IO_Buffer_ID, int _IO_Buffer_Addr, Operand_Type _OP_Type);
        void Display();

    private:    

        static int Inst_Cnt;
        int Self_Increase();

};

#endif
