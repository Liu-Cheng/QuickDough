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
        void Set_Operand(int _op_value, int _op_bram_id, int _op_bram_addr, OPTYPE _op_type);

    private:    
        static int gl_id;
        int self_increase();
};

#endif
