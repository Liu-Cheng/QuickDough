#include "Operand.h"

int Operand::Inst_Cnt = 0;

Operand::Operand(){
    OP_ID = Self_Increase();
    OP_Val = 0;
    IO_Buffer_ID = -1;
    IO_Buffer_Addr = -1;
    OP_Type = IM;
}

int Operand::Self_Increase(){
    int Tmp = Inst_Cnt;
    Inst_Cnt++;
    return Tmp;
}

void Operand::Display(){

    std::cout << OP_ID <<": " << OP_Val << std::endl;

}

void Operand::Set_Operand(int _OP_Val, int _IO_Buffer_ID, int _IO_Buffer_Addr, Operand_Type _OP_Type){

    OP_Val = _OP_Val;
    IO_Buffer_ID = _IO_Buffer_ID;
    IO_Buffer_Addr = _IO_Buffer_Addr;
    OP_Type = _OP_Type;

}
