#ifndef __COMMON_H__
#define __COMMON_H__

#include <iostream>

#define N 10

enum OPCODE {
    MULSUB, MULADD, ADDADD, ADDSUB, SUBADD, SUBSUB, PHI
};

enum OPTYPE {
    INCONST, INVAR, UNUSED, OUTVAR, IM 
};

std::ostream& operator<< (std::ostream &os, OPCODE inst_opcode);
std::ostream& operator<< (std::ostream &os, OPTYPE op_type);

#endif
