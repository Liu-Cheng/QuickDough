#ifndef __OPERAND_H__
#define __OPERAND_H__

#include "common.h"

struct Operand{
    public:
        int op_id;
        int op_value;
        //We assume that input/output operands are initially stored in bram memory.
        //There might be multiple bram memorys, but currently we just have an input
        //bram block and an output bram block. Input block bram id=0, while output bram block id=1.
        int op_bram_id;
        int op_bram_addr;
        OPTYPE op_type;

        Operand();
        void Set_Operand(int _op_value, int _op_bram_id, int _op_bram_addr, OPTYPE _op_type);
        void Display();

    private:    
        static int gl_id;
        int self_increase();
};

#endif
