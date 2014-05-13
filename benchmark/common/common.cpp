#include "common.h"

std::ostream& operator<< (std::ostream &os, OPCODE inst_opcode){
    switch(inst_opcode){
        case MULSUB:
            os << "MULSUB";
            break;
        case MULADD:
            os << "MULADD";
            break;
        case ADDADD:
            os << "ADDADD";
            break;
        case ADDSUB:
            os << "ADDSUB";
            break;
        case SUBSUB:
            os << "SUBSUB";
            break;
        case PHI:
            os << "PHI";
            break;
        case RSFAND:
            os << "RSFAND";
            break;
        case LSFADD:
            os << "LSFADD";
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
        case ANDAND:
            os << "ANDAND";
            break;
        default:
            os << "UNDEFINED";
            break;
    }
    return os;
}

std::ostream& operator<< (std::ostream &os, OPTYPE op_type){
    switch(op_type){
        case INCONST:
            os << "INCONST";
            break;
        case INVAR:
            os << "INVAR";
            break;
        case UNUSED:
            os << "UNUSED";
            break;
        case OUTVAR:
            os << "OUTVAR";
            break;
        case IM:
            os << "IM";
            break;
        default:
            os << "UNDEFINED";
            break;
    }
    return os;
}
