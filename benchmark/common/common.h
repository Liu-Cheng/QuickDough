#ifndef __COMMON_H__
#define __COMMON_H__

#include <iostream>
#include <vector>
#include <map>
#include <fstream>
#include <sstream>
#include <stdio.h>
#include <stdlib.h>

enum OPCODE {
    MULADD, MULSUB, ADDADD, ADDSUB, SUBSUB, PHI, RSFAND, LSFADD, ABS, GT, LET, ANDAND
};

enum OPTYPE {
    INCONST, INVAR, UNUSED, OUTVAR, IM 
};

std::ostream& operator<< (std::ostream &os, OPCODE inst_opcode);
std::ostream& operator<< (std::ostream &os, OPTYPE op_type);

#endif
