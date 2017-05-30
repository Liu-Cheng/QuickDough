#include "common.h"

int GL::idx = -1;

int GL::getIdx(){
    idx++;
    return idx;
}

std::ostream& operator<< (std::ostream &os, Opcode op){
    switch(op){
        case MULSUB:
            os << "MULSUB";
            break;
        case MULADD:
            os << "MULADD";
            break;
        case MUL:
            os << "MUL";
            break;
        case ADD:
            os << "ADD";
            break;
        case SUB:
            os << "SUB";
            break;
        case PHI:
            os << "PHI";
            break;
        case ABS:
            os << "ABS";
            break;
        case GT:
            os << "GT";
            break;
        case LET:
            os << "LET";
            break;
        case AND:
            os << "AND";
            break;
        case GET:
            os << "GET";
            break;
        default:
           HERE;
           std::cout << "Undefined Opcode. " << std::endl;
           exit(EXIT_FAILURE);
           break;
    }
    return os;
}

std::ostream& operator<< (std::ostream &os, VertexType vtype){
    switch(vtype){
        case IN:
            os << "IM";
            break;
        case OUT:
            os << "OUT";
            break;
        case IM:
            os << "IM";
            break;
        default:
            HERE;
            std::cout << "Undefined vertex type. " << std::endl;
            exit(EXIT_FAILURE);
            break;
    }
    return os;
}

