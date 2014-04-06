#ifndef __COMMON_H__
#define __COMMON_H__

#include <iostream>

#define R 32
#define C 32

enum OPCODE {
    MULSUB, MULADD, ADDADD, ADDSUB, SUBADD, SUBSUB, PHI, RSFAND, LSFADD, ABS, GT
};

enum OPTYPE {
    INCONST, INVAR, UNUSED, OUTVAR, IM 
};

std::ostream& operator<< (std::ostream &os, OPCODE inst_opcode);
std::ostream& operator<< (std::ostream &os, OPTYPE op_type);

#endif
