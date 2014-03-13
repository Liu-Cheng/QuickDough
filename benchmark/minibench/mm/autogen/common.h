#ifndef __COMMON_H__
#define __COMMON_H__

#define N 10

enum OPCODE {
    MULSUB, MULADD, ADDADD, ADDSUB, SUBADD, SUBSUB, PHI
};

enum OPTYPE {
    INCONST, INVAR, UNUSED, OUTVAR, IM 
};

#endif
