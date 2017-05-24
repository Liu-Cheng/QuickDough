#include "Instruction.h"

int Instruction::Inst_Cnt = 0;

Instruction::Instruction(){

    Dst_OP = 0;
    Inst_Opcode = MULADD;
    Src_OP0 = 0;
    Src_OP1 = 0;
    Src_OP2 = 0;

}

void Instruction::Set_Instruction(int _Dst_OP, Opcode _Inst_Opcode, int _Src_OP0, int _Src_OP1, int _Src_OP2){

    Dst_OP = _Dst_OP;
    Inst_Opcode = _Inst_Opcode;
    Src_OP0 = _Src_OP0;
    Src_OP1 = _Src_OP1;
    Src_OP2 = _Src_OP2;
    Inst_ID = Self_Increase();

}

int Instruction::Self_Increase(){

    int Tmp = Inst_Cnt;
    Inst_Cnt++;
    return Tmp;

}


void Instruction::Display(){

    std::cout << Inst_ID << ": " << Dst_OP << " " << Inst_Opcode << " ";
    std::cout << Src_OP0 << " " << Src_OP1 << " " << Src_OP2 << " " << std::endl;

}

int Instruction::Compute(int Src_Val0, int Src_Val1, int Src_Val2){

    int Dst_Val=0;
    switch(Inst_Opcode){
        case MULADD:
            Dst_Val=Src_Val0*Src_Val1+Src_Val2;
            break;

        case MULSUB:
            Dst_Val=Src_Val0*Src_Val1-Src_Val2;
            break;

        case ADDADD:
            Dst_Val=Src_Val0+Src_Val1+Src_Val2;
            break;

        case ADDSUB:
            Dst_Val=Src_Val0+Src_Val1-Src_Val2;
            break;

        case SUBSUB:
            Dst_Val=Src_Val0-Src_Val1-Src_Val2;
            break;

        case PHI:
            Dst_Val=(Src_Val0) ? Src_Val1 : Src_Val2;
            break;

        case RSFAND:
            Dst_Val=(Src_Val0>>Src_Val1) & Src_Val2;
            break;

        case LSFADD:
            Dst_Val=(Src_Val0<<Src_Val1)+Src_Val2;
            break;

        case ABS:
            Dst_Val=abs(Src_Val0);
            break;

        case GT:
            Dst_Val=(Src_Val0>Src_Val1)? 1 : 0;
            break;

        case LET:
            Dst_Val=(Src_Val0<=Src_Val1)? 1 : 0;
            break;

        case ANDAND:
            Dst_Val=(Src_Val0!=0) && (Src_Val1!=0) && (Src_Val2!=0);
            break;

        default:
            printf("Unexpected opcode %d ! \n", Inst_Opcode);
            break;
    }

    return Dst_Val;

}
