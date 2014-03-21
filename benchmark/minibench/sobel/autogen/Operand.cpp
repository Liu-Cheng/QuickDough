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


void Operand::Set_Operand(int _op_value, int _op_bram_id, int _op_bram_addr, OPTYPE _op_type){
    op_value=_op_value;
    op_bram_id=_op_bram_id;
    op_bram_addr=_op_bram_addr;
    op_type=_op_type;
}
