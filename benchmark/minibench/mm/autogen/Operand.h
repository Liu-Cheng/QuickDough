#ifndef __OPERAND_H__
#define __OPERAND_H__

#include "common.h"

struct Operand{
    public:
        static int gl_id;
        int op_id;
        int op_value;
        int op_bram_id;
        int op_bram_addr;
        OPTYPE op_type;

        Operand();
};

int Operand::gl_id=0;

#endif
