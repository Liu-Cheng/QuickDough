// ====================================================================================================================
// Fucnction Description:
// PE of CGRA 
//
// Version:
// Nov 24th 2011, initial version
// Sep 8th 2014, Clean up the code
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com, liucheng@eee.hku.hk
// E.E.E department, The University of Hong Kong
//
// ====================================================================================================================

#ifndef _PE_H_
#define _PE_H_

#include "Component_State.h"

class PE{
    public:
        int PE_ID;
        int Data_Mem_WR_Port_Num;
        int Data_Mem_RD_Port_Num;
        int Input_Degree;
        int Output_Degree;
        int Max_Active_Time; //The maximum timestamp that PE is active.
        int Executed_OP_Num;
        std::vector<Component_State*> Component_Trace; 

        PE(int _PE_ID);
        float Get_Data_Mem_Util(const int &Start_Time, const int &End_Time);
        float Get_ALU_Util(const int &Start_Time, const int &End_Time);
        float Get_Data_Mem_WR_Util(const int &Start_Time, const int &End_Time);
        float Get_Data_Mem_RD_Util(const int &Start_Time, const int &End_Time);
        float Get_Output_Port_Util(const int &Start_Time, const int &End_Time);
        int Get_OP_Avail_Time(const int &OP_ID);
        ~PE();

    private:
        void Load_Parameters();
};

#endif
