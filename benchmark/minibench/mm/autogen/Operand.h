#ifndef __OPERAND_H__
#define __OPERAND_H__

#include "common.h"

struct Operand{
    public:
        int op_id;
        int op_value;
        int op_bram_id;
        int op_bram_addr;
        OPTYPE op_type;

        Operand();

    private:    
        static int gl_id;
        static int self_increase();
};

#endif
