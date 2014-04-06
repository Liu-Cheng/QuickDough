#ifndef __COMMON_H__
#define __COMMON_H__

#include <iostream>

#define N 4
#define D 2
#define M 1000
#define IT 40
#define S 32000

enum OPCODE {
    MULSUB, MULADD, ADDADD, ADDSUB, SUBADD, SUBSUB, PHI, RSFAND, LSFADD, ABS, GT, LET, ANDAND
};

enum OPTYPE {
    INCONST, INVAR, UNUSED, OUTVAR, IM 
};

std::ostream& operator<< (std::ostream &os, OPCODE inst_opcode);
std::ostream& operator<< (std::ostream &os, OPTYPE op_type);

#endif
