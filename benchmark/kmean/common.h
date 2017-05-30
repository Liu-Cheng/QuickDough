#ifndef __COMMON_H__
#define __COMMON_H__

#include <iostream>
#include <sstream>
#include <cstdlib>

#define MAX_IN_DEG 3

struct GL{
    public:
        static int getIdx();

    private:
        static int idx;
};

enum Opcode {
    MULADD, 
    MULSUB, 
    MUL,
    ADD, 
    SUB, 
    PHI, 
    ABS, 
    GT, 
    LET,
    AND,
    GET
};

enum VertexType {
    IN, 
    IM, 
    OUT 
};

std::ostream& operator<< (std::ostream &os, Opcode op);
std::ostream& operator<< (std::ostream &os, VertexType vtype);

#define HERE do {std::cout <<"File: " << __FILE__ << " Line: " << __LINE__ << std::endl;} while(0)

#endif
