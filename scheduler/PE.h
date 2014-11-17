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
        static int Inst_Mem_Depth;
        static int Inst_Mem_Width;
        int PE_ID;
        int Data_Mem_WR_Port_Num;
        int Data_Mem_RD_Port_Num;
        int Input_Degree;
        int Output_Degree;
        int Max_Active_Time; //The maximum timestamp that PE is active.
        int Exe_OP_Num;
        int Resize_Len;
        std::vector<Component_State*> Component_Trace; 

        PE(int _PE_ID);
        float Get_Data_Mem_Util(const int &Start_Time, const int &End_Time);
        float Get_ALU_Util(const int &Start_Time, const int &End_Time);
        float Get_Data_Mem_WR_Util(const int &Start_Time, const int &End_Time);
        float Get_Data_Mem_RD_Util(const int &Start_Time, const int &End_Time);
        float Get_Output_Port_Util(const int &Start_Time, const int &End_Time);
        int Get_OP_Avail_Time(const int &OP_ID);
        int Get_Trace_Size();
        bool Is_Load_Path_Avail(const int &Time_Point);
        bool Is_Store_Path_Avail(const int &Time_Point);
        void Reserve_Load_Path(const int &Time_Point);
        void Reserve_Store_Path(const int &Time_Point);
        bool Is_WR_Port_Avail(const int &Time_Point, const int &Port_ID);
        void Reserve_WR_Port(const int &Time_Point, const int &Port_ID);
        bool Is_RD_Port_Avail(const int &Time_Point, const int &Port_ID);
        void Reserve_RD_Port(const int &Time_Point, const int &Port_ID);
        void Set_Mem_Port(const int &Time_Point, const int &Port_ID, const int &OP_ID);
        int Get_OP_Of_Mem_Port(const int &Time_Point, const int &Port_ID);
        void Set_WR_Ena(const int &Time_Point, const int &Port_ID, const int &Ena);
        int Get_WR_Ena(const int &Time_Point, const int &Port_ID);
        void Set_Load_Mux(const int &Time_Point, const int &Load_Mux);
        int Get_Load_Mux(const int &Time_Point);
        void Set_Store_Mux(const int &Time_Point, const int &Store_Mux);
        int Get_Store_Mux(const int &Time_Point);
        void Set_Load_OP(const int &Time_Point, const int &OP_ID);
        int Get_Load_OP(const int &Time_Point);
        void Set_Store_OP(const int &Time_Point, const int &OP_ID);
        int Get_Store_OP(const int &Time_Point);
        bool Is_Output_Port_Avail(const int &Time_Point, const int &Index);
        bool Is_Input_Port_Avail(const int &Time_Point);
        void Set_Output_Mux(const int &Time_Point, const int &Index, const int &Output_Mux);
        int Get_Output_Mux(const int &Time_Point, const int &Index);
        void Reserve_Output_Port(const int &Time_Point, const int &Index);
        bool Is_Bypass_Avail(const int &Time_Point);
        void Reserve_Bypass(const int &Time_Point);
        void Set_Input_Mux(const int &Time_Point, const int &Input_Mux);
        int Get_Input_Mux(const int &Time_Point);
        void Reserve_Input_Port(const int &Time_Point);
        void Set_Bypass_Mux(const int &Time_Point, const int &Bypass_Mux);
        int Get_Bypass_Mux(const int &Time_Point);
        void Trace_Size_Test(const int &Time_Point);
        bool Is_ALU_Input_Avail(const int &Time_Point);
        void Set_ALU_Output_Mux(const int &Time_Point, Opcode &Opcode_Tmp);
        void Set_ALU_Opcode(const int &Time_Point, Opcode &Opcode_Tmp);
        Opcode Get_ALU_Opcode(const int &Time_Point);
        void Reserve_ALU_Output(const int &Time_Point);
        void Reserve_ALU_Input(const int &Time_Point);
        bool Is_ALU_Output_Avail(const int &Time_Point);
        void Set_Mem_Port_Addr(const int &Time_Point, const int &Port_ID, int Addr);
        int Get_Mem_Port_Addr(const int &Time_Point, const int &Port_ID);

        ~PE();

    private:
        void Load_Parameters();
};

#endif
