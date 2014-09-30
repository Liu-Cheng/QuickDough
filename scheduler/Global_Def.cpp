// ====================================================================================================================
// Algorithm Description:
// Initialization of global variables
//
// Version:
// 0.1      Dec 30th 2011
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// ====================================================================================================================

#include "Global_Def.h"

int GL_Var::Print_Level = 0;
int GL_Var::Verify_On = 0;
int GL_Var::Random_Seed = 0;
const std::map<Opcode, int> GL_Var::Opcode_To_Cost = GL_Var::Create_Map();

std::ostream& operator<< (std::ostream &os, Opcode Inst_Opcode){
    switch (Inst_Opcode){
        case MULADD:
            os << "MULADD";
            break;
        case MULSUB:
            os << "MULSUB";
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

std::ostream& operator<< (std::ostream &os, Operand_Type OP_Type){
    switch (OP_Type){
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
        case IMOUT:
            os << "IMOUT";
            break;
        default:
            os << "UNDEFINED";
            break;
    }
    return os;
}

int Opcode_To_Int (const Opcode &Inst_Opcode){

    int Opcode_Val = Inst_Opcode;
    return Opcode_Val;

}

Opcode Str_To_Opcode(const std::string &Opcode_Str){
    Opcode Inst_Opcode;
    if(Opcode_Str == "MULADD"){
        Inst_Opcode = MULADD;
    }
    else if(Opcode_Str == "MULSUB"){
        Inst_Opcode = MULSUB;
    }
    else if(Opcode_Str == "ADDADD"){
        Inst_Opcode = ADDADD;
    }
    else if(Opcode_Str=="ADDSUB"){
        Inst_Opcode = ADDSUB;
    }
    else if(Opcode_Str=="SUBSUB"){
        Inst_Opcode = SUBSUB;
    }
    else if(Opcode_Str=="PHI"){
        Inst_Opcode = PHI;
    }
    else if(Opcode_Str=="RSFAND"){
        Inst_Opcode = RSFAND;
    }
    else if(Opcode_Str=="LSFADD"){
        Inst_Opcode = LSFADD;
    }
    else if(Opcode_Str=="ABS"){
        Inst_Opcode = ABS;
    }
    else if(Opcode_Str=="GT"){
        Inst_Opcode = GT;
    }
    else if(Opcode_Str=="LET"){
        Inst_Opcode = LET;
    }
    else if(Opcode_Str=="ANDAND"){
        Inst_Opcode = ANDAND;
    }
    else{
        ERROR("Unknown instruction opcode!");
    }
    return Inst_Opcode;
}

int OP_Compute(const Opcode &Inst_Opcode, const int &Src_Val0, const int &Src_Val1, const int &Src_Val2){
    int Dst_Val;
    switch(Inst_Opcode){
        case MULADD:
            Dst_Val = Src_Val0 * Src_Val1 + Src_Val2;
            break;
        case MULSUB:
            Dst_Val = Src_Val0 * Src_Val1 - Src_Val2;
            break;
        case ADDADD:
            Dst_Val = Src_Val0 + Src_Val1 + Src_Val2;
            break;
        case ADDSUB:
            Dst_Val = Src_Val0 + Src_Val1 - Src_Val2;
            break;
        case SUBSUB:
            Dst_Val = Src_Val0 - Src_Val1 -Src_Val2;
            break;
        case PHI:
            Dst_Val = Src_Val0 ? Src_Val1 : Src_Val2;
            break;
        case RSFAND:
            Dst_Val = (Src_Val0 >> Src_Val1) & Src_Val2;
            break;
        case LSFADD:
            Dst_Val = (Src_Val0 << Src_Val1) + Src_Val2;
            break;
        case ABS:
            Dst_Val = abs(Src_Val0);
            break;
        case GT:
            Dst_Val = (Src_Val0 > Src_Val1) ? 1 : 0;
            break;
        case LET:
            Dst_Val = (Src_Val0 <= Src_Val1) ? 1: 0;
            break;
        case ANDAND:
            Dst_Val = (Src_Val0!=0) && (Src_Val1!=0) && (Src_Val2!=0);
            break;
        default:
            Dst_Val=0;
            break;
    }
    return Dst_Val;
}

int Get_Opcode_Cost(const Opcode &Inst_Opcode){

    return GL_Var::Opcode_To_Cost.find(Inst_Opcode)->second;

}
