#include "Operand.h"

int Operand::gl_id=0;

Operand::Operand(){
    op_id=self_increase();
    op_value=0;
    op_bram_id=-1;
    op_bram_addr=-1;
    op_type=IM;
}

int Operand::self_increase(){
    int tmp=gl_id;
    gl_id++;
    return tmp;
}
