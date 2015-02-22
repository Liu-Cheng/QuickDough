#ifndef __INSTRUCTION_H__
#define __INSTRUCTION_H__

#include "common.h"

struct Instruction{

    public:
        int Dst_OP;
        Opcode Inst_Opcode;
        int Src_OP0;
        int Src_OP1;
        int Src_OP2;
        int Inst_ID;

        Instruction();
        void Set_Instruction(int _Dst_OP, Opcode _Inst_Opcode, int _Src_OP0, int _Src_OP1, int _Src_OP2);
        int Self_Increase();
        int Compute(int Src_Val0, int Src_Val1, int Src_Val2);

        //It will print details of the instruction when the instruction id is in the range[start_id, end_id].
        //Note that it is maiinly used for debugging purpose.
        void Display(); 

    private:
        static int Inst_Cnt; 

};

#endif
