#!/usr/bin/env python

# import pdb
import sys
import os
import math
# import subprocess
import copy
# import numpy as np
import matplotlib.pyplot as plt
import timeit
from math import *  # noqa
from Global import *  # noqa
from Solution import *  # noqa


def main():
    """ A simple brute search is implemented for the customization and
    it will be used as the metric to evaluate more advanced
    customization algorithm.
    """
    Start_Time = timeit.default_timer()
    Benchmark_List = ["fir"]
    Work_Path = os.getcwd()

    for App in Benchmark_List:
        [Avail_Config_Num, Sim_Cnt] = Search_Design_Space(App)
        print "Simulation for ", App,  " ",  Sim_Cnt, " Times, there are ", \
            Avail_Config_Num, " available configurations!"

    os.chdir(Work_Path)
    Elapsed_Time = timeit.default_timer() - Start_Time
    print "It took the tool ", Elapsed_Time/60, " min to complete the benchmark design space exploration!"


def Search_Design_Space(App):
    Possible_Solutions = []
    DFG_Info = [0, 0 , 0]
    Sim_Cnt = 0
    Avail_Config_Num = 0
    Revenue_Std = 0.02

    CGRA_Set = CGRA_Set_Init()
    Unrolling_Set = Unrolling_Set_Init(App)

    Unrolling_Cnt = 0
    Prev_Unrolling_Vec = []
    Prev_Skip_Scheduling = False
    print "Unrolling vector:", len(Unrolling_Set)
    for Unrolling_Vec in Unrolling_Set:
        Unrolling_Cnt = Unrolling_Cnt + 1
        if(Unrolling_Cnt > 1):
            Cmp_Res = Vec_Cmp(Unrolling_Vec, Prev_Unrolling_Vec)
            if((Cmp_Res > 0) and Prev_Skip_Scheduling):
                continue

        Run_DFG_Gen(App, Unrolling_Vec)
        Dump_Path = Get_DFG_Dump_Path(App, Unrolling_Vec)
        DFG_Info = Get_DFG_Info(App, Dump_Path)
        Skip_Scheduling = DFG_Check(DFG_Info)
        Prev_Skip_Scheduling = Skip_Scheduling
        if(Skip_Scheduling):
            continue

        Prev_Unrolling_Vec = copy.copy(Unrolling_Vec)
        
        Array_Cnt = 0
        Prev_Array = []
        Prev_Lat = 0
        Max_OPC = 0.5
        for [Row, Col] in CGRA_Set:
            Array_Cnt = Array_Cnt + 1
            Skip_Array = Array_Check(DFG_Info[0], Row, Col, Max_OPC)
            if(Skip_Array):
                break
            Run_DFG_Sim(App, Row, Col, Unrolling_Vec)
            Sim_Cnt += 1
            DFG_Lat = Get_DFG_Lat()
            if(Row == 2 and Col == 2):
                Max_OPC = DFG_Info[0] * 1.0/(Row * Col * DFG_Lat)

            if(Array_Cnt > 1):
                Larger_Array = Vec_Cmp([Row, Col], Prev_Array)
                Revenue = (Prev_Lat - DFG_Lat) * 1.0 / Prev_Lat 
                if((Larger_Array > 0) and Revenue < Revenue_Std):
                    break

            Prev_Array = copy.copy([Row, Col])
            Prev_Lat = DFG_Lat

            # Blocking analysis
            Prev_BRAM_Cost = 0
            Prev_Loop_Lat = 0
            Prev_Blocking_Vec = []
            Blocking_Cnt = 0
            Blocking_Vec_Set = Get_Potential_Blocking_Set(App, Unrolling_Vec)
            Valid_Solution = False
            for Blocking_Vec in Blocking_Vec_Set: 
                IO_Buffers = IO_Buffer_Analysis(App, Unrolling_Vec, Blocking_Vec, DFG_Info)
                BRAM_Run_Out = BRAM_Check(Row, Col, DFG_Lat, IO_Buffers)
                if(BRAM_Run_Out):
                    break
                Blocking_Cnt += 1

                Valid_Solution = True
                Possible_Solution = Create_Solution(App, Row, Col, Unrolling_Vec, Blocking_Vec, IO_Buffers, DFG_Lat)
                if(Blocking_Cnt > 1):
                    Curr_BRAM_Cost = Possible_Solution.BRAM_Cost
                    Curr_Loop_Lat = Possible_Solution.Loop_Lat
                    BRAM_Cost = Curr_BRAM_Cost - Prev_BRAM_Cost
                    Larger_Block = Vec_Cmp(Blocking_Vec, Prev_Blocking_Vec) 
                    if(BRAM_Cost > 0):
                        Revenue = (Prev_Loop_Lat - Curr_Loop_Lat) * 1.0 / Prev_Loop_Lat 
                        if(Revenue < Revenue_Std):
                            break
                    elif(BRAM_Cost < 0 and Larger_Block):
                        print "Unexpected blocking!"
                        sys.exit(0)

                Prev_BRAM_Cost = Possible_Solution.BRAM_Cost
                Prev_Loop_Lat = Possible_Solution.Loop_Lat
                Prev_Blocking_Vec = copy.copy(Possible_Solution.Loop_Blocking_Vec)

            if(Valid_Solution):
                Possible_Solutions.append(Possible_Solution)


    Avail_Config_Num = len(Possible_Solutions)
    Save_Possible_Solutions(App, Possible_Solutions)
    Solutions_Lat_Filter(Possible_Solutions)
    Plot_Solutions(App, Possible_Solutions)
    return [Avail_Config_Num, Sim_Cnt]

def Get_Min_Inst_Mem(DFG_Lat):
    Inst_Mem = 0.5
    while (Inst_Mem*1024 < DFG_Lat):
        Inst_Mem = Inst_Mem + 0.5

    return Inst_Mem

def Array_Check(OP_Num, Row, Col, Max_OPC):
    if(Max_OPC == 0):
        return False
    else:
        Min_DFG_Lat = OP_Num/(Row * Col * Max_OPC)
        Max_BRAM_For_Inst_Mem = (SCGRA_Para.Total_BRAM - 4 - 3 * Row * Col)
        Max_Inst_Mem = Max_BRAM_For_Inst_Mem * 1.0 / (2 * Row * Col)
        if(Min_DFG_Lat > Max_Inst_Mem * 1024.0):
            return True
        else:
            print "Skip DFG Sim when Row = ", Row, "Col = ", Col 
            return False

# Data width of Addr_Buffers is 18
# Data width of Inst_Mem is 72
# Data width of the rest memory blocks is 32
def BRAM_Check(Row, Col, DFG_Lat, IO_Buffers):
    Data_Mem = 3
    Inst_Mem = Get_Min_Inst_Mem(DFG_Lat)
    In_Buffer = IO_Buffers[0]
    Out_Buffer = IO_Buffers[1]
    In_Addr_Buffer = IO_Buffers[2]
    Out_Addr_Buffer = IO_Buffers[3]
    BRAM_Budget = SCGRA_Para.Total_BRAM

    Total_BRAM = Row * Col *(Data_Mem + Inst_Mem*2)
    Total_BRAM += In_Buffer +Out_Buffer
    Total_BRAM += (In_Addr_Buffer + Out_Addr_Buffer)/2.0

    if(BRAM_Budget < Total_BRAM):
        return True
    else:
        return False


''' The two vectors must be the same length '''
def Vec_Cmp(Vec1, Vec2):
    if(len(Vec1) != len(Vec2)):
        print "The two vectors are not the same length!"
        sys.exit(0)

    for i in range(0, len(Vec1)):
        if(Vec1[i] < Vec2[i]):
            return 0
    return 1

''' The CGRA_Set keeps all the possible configurations of the CGRA array size '''
def CGRA_Set_Init():
    CGRA_Set = [];
    max_row = SCGRA_Para.Max_SCGRA/SCGRA_Para.Min_SCGRA_Row
    max_col = SCGRA_Para.Max_SCGRA/SCGRA_Para.Min_SCGRA_Col
    for row in range(SCGRA_Para.Min_SCGRA_Row, max_row):
        for col in range(SCGRA_Para.Min_SCGRA_Col, max_col):
            if(row>=col and row<=(col+3) and row*col <= SCGRA_Para.Max_SCGRA):
                CGRA_Set.append([row, col])

    return CGRA_Set
    
''' The unrolling set keeps unrolling factors from small ones to large ones '''
def Unrolling_Set_Init(App):
    Unrolling_Set = [];
    if(App == "mm"):
        Unrolling_Factors = Get_Factor_Vec(MM_Para.Mat_Len)
        for i in Unrolling_Factors:
            if(i == 1):
                continue
            Unrolling_Set.append([i, 1, 1])

        for i in Unrolling_Factors:
            if (i == 1):
                continue
            Unrolling_Set.append([MM_Para.Mat_Len, i, 1])

        for i in Unrolling_Factors:
            if(i == 1):
                continue
            Unrolling_Set.append([MM_Para.Mat_Len, MM_Para.Mat_Len, i])

    elif(App == "fir"):
        Unrolling_Factors = Get_Factor_Vec(Fir_Para.In_Len)
        for i in Unrolling_Factors:
            Unrolling_Set.append([Fir_Para.Coeff_Len, i])

    elif(App == "sobel"):
        Unrolling_Factors1 = Get_Factor_Vec(Sobel_Para.Fig_Col)
        Unrolling_Factors2 = Get_Factor_Vec(Sobel_Para.Fig_Row)
        for i in Unrolling_Factors1:
            if(i<3):
                continue
            for j in Unrolling_Factors2:
                if(j<3):
                    continue
                Unrolling_Set.append([3, 3, i, j])

    elif(App == "kmean"):
        Unrolling_Factors = Get_Factor_Vec(Kmean_Para.Node_Num)
        for i in Unrolling_Factors:
            Unrolling_Set.append([Kmean_Para.Node_Dim, Kmean_Para.Centroid_Num, i])

    else:
        print "Unexpected app name!"
        sys.exit(0)

    return Unrolling_Set

def Solutions_Lat_Filter(Possible_Solutions):
    Perf = []
    for Sol in Possible_Solutions:
        Perf.append(Sol.Loop_Lat)
    Perf.sort()
    Perf_Metric = 0
    if(len(Perf) > 100):
        Perf_Metric = Perf[50]
    elif(len(Perf) > 20):
        Perf_Metric = Perf[20]
    else:
        Perf_Metric = Perf[-1]

    Possible_Solutions[:] = [Sol for Sol in Possible_Solutions if
                             Sol.Loop_Lat < Perf_Metric]

    Min_Lat = min(Perf)
    for Sol in Possible_Solutions:
        if(Sol.Loop_Lat == Min_Lat):
            print Sol.Get_Syllabus()
            return


def Plot_Solutions(App, Possible_Solutions):
    fName1 = Global_Def.Customizer_Dir + "./" + App + "-EDP-Cost.pdf"
    fName2 = Global_Def.Customizer_Dir + "./" + App + "-Power-Cost.pdf"
    fName3 = Global_Def.Customizer_Dir + "./" + App + "-Energy-Cost.pdf"
    fName4 = Global_Def.Customizer_Dir + "./" + App + "-Perf-Cost.pdf"
    BRAM = []
    CGRA_Size = []
    Perf = []
    Power = []
    EDP = []
    Energy = []
    Config_ID = []
    Pareto_BRAM = []
    Pareto_Lat = []
    ID = 1
    for Tmp in Possible_Solutions:
        Config_ID.append(ID)
        CGRA_Size.append(Tmp.SCGRA_Row * Tmp.SCGRA_Col)
        BRAM.append(Tmp.BRAM_Cost)
        Perf.append(Tmp.Loop_Lat)
        Power.append(Tmp.Power)
        Energy.append(Tmp.Energy)
        EDP.append(Tmp.EDP)
        ID += 1

    Get_Pareto_Points(BRAM, Perf, Pareto_BRAM, Pareto_Lat)
    Save_Arrays(App, "Pareto-Points", Pareto_BRAM, Pareto_Lat)
    Save_Arrays(App, "BRAM-Perf", BRAM, Perf)
    Save_Arrays(App, "Energy-Perf", Perf, Energy)
    Save_Arrays(App, "EDP-Perf", Perf, EDP)
    # fig, ax1 = plt.subplots()
    # ax1.plot(Config_ID, Perf, 'bp')
    # ax1.set_xlabel("Different Design Parameters")
    # ax1.set_ylabel("Loop Execution Time (cycles)")
    # ax1.set_xlim(min(Config_ID)*0.8, max(Config_ID)*1.1)
    # ax1.set_ylim(min(Perf)*0.8, max(Perf)*1.1)
    # ax2 = ax1.twinx()
    # ax2.plot(Config_ID, Power_Lat_Production, 'r.')
    # ax2.set_ylabel("Power Performance Production (w)")

    fig1 = plt.figure()
    ax1 = fig1.add_subplot(1, 1, 1)
    ax1.scatter(Perf, EDP, color='blue', s=8, alpha=0.5)
    ax1.set_xlabel("Execution Time (Cycles)")
    ax1.set_ylabel("Energy Delay Product (J.cycles)")
    fig1.savefig(fName1, bbox_inches='tight')

    fig2 = plt.figure()
    ax2 = fig2.add_subplot(1, 1, 1)
    ax2.scatter(Perf, Power, color='blue', s=8, alpha=0.5)
    ax2.set_xlabel("Execution Time (Cycles)")
    ax2.set_ylabel("Power (w)")
    fig2.savefig(fName2, bbox_inches='tight')

    fig3 = plt.figure()
    ax3 = fig3.add_subplot(1, 1, 1)
    ax3.scatter(Perf, Energy, color='blue', s=8, alpha=0.5)
    ax3.set_xlabel("Execution Time(Cycles)")
    ax3.set_ylabel("Energy (uJ)")
    fig3.savefig(fName3, bbox_inches='tight')

    fig4 = plt.figure()
    ax4 = fig4.add_subplot(1, 1, 1)
    ax4.scatter(BRAM, Perf, color='blue', s=8, alpha=0.5)
    ax4.plot(Pareto_BRAM, Pareto_Lat)
    ax4.set_xlabel("BRAM Cost")
    ax4.set_ylabel("Execution Time (Cycles)")
    fig4.savefig(fName4, bbox_inches='tight')


def Save_Arrays(App, fName, Array1, Array2):
    fName = Global_Def.Customizer_Dir + "./" + App + "-" + fName + ".txt"
    fHandle = open(fName, 'w')
    for ID, Data in enumerate(Array1):
        Tmp = str(Data) + "  " + str(Array2[ID]) + "\n" 
        fHandle.write(Tmp)
    fHandle.close()

def Get_Pareto_Points(XArray, YArray, Pareto_XArray, Pareto_YArray):
    for ID, XData in enumerate(XArray):
        YData = YArray[ID]
        if Is_Pareto_Point(XData, YData, XArray, YArray):
            Pareto_XArray.append(XData)
            Pareto_YArray.append(YData)

    # Sort Pareto_XArray and Pareto_YArray
    Sort_Two_Arrays(Pareto_XArray, Pareto_YArray)
    print Pareto_XArray
    print Pareto_YArray


def Sort_Two_Arrays(XArray, YArray):
    for ID1 in range(0, len(XArray)):
        for ID2 in range(ID1, len(XArray)):
            XData1 = XArray[ID1]
            XData2 = XArray[ID2]
            if (XData1 > XData2):
                Tmp = XArray[ID1]
                XArray[ID1] = XArray[ID2]
                XArray[ID2] = Tmp
                Tmp = YArray[ID1]
                YArray[ID1] = YArray[ID2]
                YArray[ID2] = Tmp


def Is_Pareto_Point(XData, YData, XArray, YArray):
    for ID, Data in enumerate(XArray):
        if((Data < XData) and (YArray[ID] < YData)):
            return False
        elif((Data == XData) and (YArray[ID] < YData)):
            return False
        elif((Data < XData) and (YArray[ID] == YData)):
            return False
    return True


def Save_Possible_Solutions(App, Possible_Solutions):
    fName = Global_Def.Customizer_Dir + "./" + App + "-design-space.txt"
    fHandle = open(fName, 'w')
    for Tmp in Possible_Solutions:
        fHandle.write(Tmp.Get_Syllabus())
    fHandle.close()


def Get_Loop_Vec(App):
    if(App == "mm"):
        Loop_Vec = copy.copy(MM_Para.Max_Loop_Unrolling_Vec)
    elif(App == "fir"):
        Loop_Vec = copy.copy(Fir_Para.Max_Loop_Unrolling_Vec)
    elif(App == "kmean"):
        Loop_Vec = copy.copy(Kmean_Para.Max_Loop_Unrolling_Vec)
    elif(App == "sobel"):
        Loop_Vec = copy.copy(Sobel_Para.Max_Loop_Unrolling_Vec)
    else:
        print "Unknown application!"
        sys.exit(0)

    return Loop_Vec



def Run_DFG_Sim(App, Row, Col, Unrolling_Vec):

    Dump_Path = Get_DFG_Dump_Path(App, Unrolling_Vec)
    Copy_DFG_Cmd = "cp -f " + Dump_Path + "*.* " + Global_Def.Scheduler_Dir + "config/"
    os.system(Copy_DFG_Cmd)

    Sim_Path = Global_Def.Scheduler_Dir + "util/auto-sim/" 
    os.chdir(Sim_Path)
    Sim_Only = 1
    Run_Sim_Cmd = Get_Sim_Cmd(App, Row, Col, Sim_Only)
    os.system(Run_Sim_Cmd)

''' Note that the generated DFG will be placed at the scheduler directory automatically '''
def Run_DFG_Gen(App, Unrolling_Vec):
    Gen_Path = Global_Def.Benchmark_Dir + "util/"
    os.chdir(Gen_Path)
    u1 = 1
    u2 = 1
    u3 = 1
    b1 = 1

    if (App == "mm"):
        [u1, u2, u3] = Unrolling_Vec
        b1 = max(Unrolling_Vec)
    elif (App == "fir"):
        [u1, u2] = Unrolling_Vec
        b1 = max(Unrolling_Vec)
    elif(App == "kmean"):
        u1 = Unrolling_Vec[1]
        u2 = Unrolling_Vec[2]
        b1 = u2
    elif(App == "sobel"):
        u1 = Unrolling_Vec[2]
        u2 = Unrolling_Vec[3]
        b1 = u2
    else:
        print "Unknown app name!"
        sys.exit(0)

    DFG_Gen = "./dfg-gen -n " + App + " -u " + str(u1) + " " + str(u2) + " " + str(u3)
    DFG_Gen += " -b " + str(b1)
    print DFG_Gen
    os.system(DFG_Gen)


def Get_DFG_Lat():
    Sim_Path = Global_Def.Scheduler_Dir + "result/"
    os.chdir(Sim_Path)
    fHandle = open("trace.txt", "r")
    for Line in fHandle.readlines():
        Line = Line.strip()
        Parts = Line.split(" ")
        if(Parts[0] == "Sim_Lat"):
            return int(Parts[1])

    fHandle.close()
    print "Failed to find Sim_Lat entry from trace.txt"
    sys.exit(0)


def DFG_Sim_Check():
    Sim_Lat = Get_DFG_Lat()
    if((SCGRA_Para. Max_Inst_Mem_Depth*1024) < Sim_Lat):
        Run_Out_Of_Inst_Mem = True
    else:
        Run_Out_Of_Inst_Mem = False
    return Run_Out_Of_Inst_Mem


def Create_Solution(App, Row, Col, Unrolling_Vec, Blocking_Vec, IO_Buffers, DFG_Lat):

    Possible_Solution = Solution()
    Possible_Solution.Loop_Vec = Get_Loop_Vec(App) 
    Possible_Solution.SCGRA_Row = Row
    Possible_Solution.SCGRA_Col = Col
    Possible_Solution.SCGRA_Size = Row * Col
    Possible_Solution.Loop_Unrolling_Vec = copy.copy(Unrolling_Vec)
    Possible_Solution.DFG_Lat = DFG_Lat
    Possible_Solution.In_Buffer = IO_Buffers[0]
    Possible_Solution.Out_Buffer = IO_Buffers[1]
    Possible_Solution.In_Addr_Buffer = IO_Buffers[2]
    Possible_Solution.Out_Addr_Buffer = IO_Buffers[3]
    Possible_Solution.Inst_Mem = Get_Min_Inst_Mem(DFG_Lat)
    Possible_Solution.Loop_Blocking_Vec = copy.copy(Blocking_Vec)

    Possible_Solution.Update_HW_Cost()
    DFG_Num = Get_SB_Num(Unrolling_Vec, Blocking_Vec)
    Block_Num = Get_SB_Num(Blocking_Vec, Get_Loop_Vec(App))
    Loop_Transfer_Vec = Get_Loop_Transfer_Vec(App, Unrolling_Vec, Blocking_Vec)
    Possible_Solution.Update_Lat(DFG_Num, Block_Num, Loop_Transfer_Vec)
    Possible_Solution.Update_Power()
    Possible_Solution.Update_EDP()
    Solution_Str = Possible_Solution.Get_Syllabus()
    return Possible_Solution


def Get_Addr_Buffer(Unrolling_Vec, Blocking_Vec, DFG_Info):

    DFG_In_Num = DFG_Info[1]
    DFG_Out_Num = DFG_Info[2]
    DFG_Num = Get_SB_Num(Unrolling_Vec, Blocking_Vec)
    In_Addr_Buffer = DFG_Num * DFG_In_Num
    Out_Addr_Buffer = DFG_Num * DFG_Out_Num
    In_Addr_Buffer = math.ceil(In_Addr_Buffer * 1.0 / 1024)
    Out_Addr_Buffer = math.ceil(Out_Addr_Buffer * 1.0 / 1024)

    return [In_Addr_Buffer, Out_Addr_Buffer]
    
def IO_Buffer_Analysis(App, Unrolling_Vec, Blocking_Vec, DFG_Info):

    [In_Buffer, Out_Buffer] = Get_IO_Buffer(App, Unrolling_Vec, Blocking_Vec)
    [In_Addr_Buffer, Out_Addr_Buffer] = Get_Addr_Buffer(Unrolling_Vec, Blocking_Vec, DFG_Info)

    return [In_Buffer, Out_Buffer, In_Addr_Buffer, Out_Addr_Buffer] 

def Get_Loop_Transfer_Vec(App, Unrolling_Vec, Blocking_Vec):
    Loop_Transfer_Vec = []
    if(App == "mm"):
        Loop_Vec = copy.copy(MM_Para.Max_Loop_Unrolling_Vec)
        if(Unrolling_Vec[1] == 1 and Unrolling_Vec[2] == 1):
            n = MM_Para.Mat_Len / Blocking_Vec[0]
            m = Blocking_Vec[0] / Unrolling_Vec[0]
            for i in range(0, MM_Para.Mat_Len * MM_Para.Mat_Len * n):
                Loop_Transfer_Vec.append(Blocking_Vec[0])
            for j in range(0, MM_Para.Mat_Len * n):
                Loop_Transfer_Vec.append(Blocking_Vec[0])
            for k in range(0, MM_Para.Mat_Len * MM_Para.Mat_Len * n):
                Loop_Transfer_Vec.append(m)
        elif(Unrolling_Vec[1] > 1 and Unrolling_Vec[2] == 1):
            n = MM_Para.Mat_Len/Blocking_Vec[1]
            for i in range(0, MM_Para.Mat_Len):
                Loop_Transfer_Vec.append(Loop_Vec[0])
            for j in range(0, MM_Para.Mat_Len * n):
                Loop_Transfer_Vec.append(Blocking_Vec[1] * Blocking_Vec[0])
            for k in range(0, MM_Para.Mat_Len * n):
                Loop_Transfer_Vec.append(Blocking_Vec[1])
        elif(Unrolling_Vec[2] > 1):
            n = MM_Para.Mat_Len/Blocking_Vec[2]
            Loop_Transfer_Vec.append(MM_Para.Mat_Len * MM_Para.Mat_Len)
            for i in range(0, n):
                Loop_Transfer_Vec.append(Blocking_Vec[2] * MM_Para.Mat_Len)
        else:
            print "Unknwon unrolling and blocking for MM!"
            sys.exit(0)
    elif(App == "fir"):
        n = Fir_Para.In_Len/Blocking_Vec[1]
        Loop_Transfer_Vec.append(Fir_Para.Coeff_Len)
        for i in range(0, n):
            Loop_Transfer_Vec.append(Fir_Para.Coeff_Len + Blocking_Vec[1] - 1)
            Loop_Transfer_Vec.append(Blocking_Vec[1])
    elif(App == "sobel"):
        n = Sobel_Para.Fig_Row * Sobel_Para.Fig_Col / (Blocking_Vec[2] * Blocking_Vec[3])
        Loop_Transfer_Vec.append(9)
        Loop_Transfer_Vec.append(9)
        Loop_Transfer_Vec.append(5)
        for i in range(0, n):
            Loop_Transfer_Vec.append((Blocking_Vec[2]+2) * (Blocking_Vec[3]+2)/4)
            Loop_Transfer_Vec.append(Blocking_Vec[2] * Blocking_Vec[3]/4)
    elif(App == "kmean"):
        n = Kmean_Para.Node_Num / Blocking_Vec[2]
        m = Blocking_Vec[2] / Unrolling_Vec[2]
        Loop_Transfer_Vec.append(1)
        for i in range(0, n):
            Loop_Transfer_Vec.append(Unrolling_Vec[1] * Unrolling_Vec[0])
            Loop_Transfer_Vec.append(Unrolling_Vec[1] * (Unrolling_Vec[0] + 1) * m)
    else:
        print "Unknown application!"
        sys.exit(0)

    return Loop_Transfer_Vec



def Get_IO_Buffer(App, Unrolling_Vec, Blocking_Vec):
    In_Data_Size = 0
    Out_Data_Size = 0
    In_Buffer = 0
    Out_Buffer = 0
    if(App == "mm"):
        if(Unrolling_Vec[1] == 1 and Unrolling_Vec[2] == 1):
            In_Data_Size = Blocking_Vec[0]*2 + 1
            Out_Data_Size = 1
        elif(Unrolling_Vec[1] > 1 and Unrolling_Vec[2] ==1):
            In_Data_Size = 1 + Blocking_Vec[0] * (Blocking_Vec[1] + 1)
            Out_Data_Size = Blocking_Vec[1]
        elif(Unrolling_Vec[2] > 1):
            In_Data_Size = 1 + Blocking_Vec[0] * (Blocking_Vec[1] + Blocking_Vec[2])
            Out_Data_Size = Blocking_Vec[1] * Blocking_Vec[2]
        else:
            print "Unknown blocking setup!"
            sys.exit(0)

    elif(App == "fir"):
        In_Data_Size = 1 + (Blocking_Vec[0] * 2 - 1) + Blocking_Vec[1]
        Out_Data_Size = Blocking_Vec[1]

    elif(App == "sobel"):
        In_Data_Size = 5 + 2*9 + (Blocking_Vec[2] * Blocking_Vec[3] / 4)
        Out_Data_Size = Blocking_Vec[2] * Blocking_Vec[3] / 4

    elif(App == "kmean"):
        In_Data_Size = 1 + Blocking_Vec[0] * (Blocking_Vec[1] + Blocking_Vec[2])
        Out_Data_Size = Blocking_Vec[2]/Unrolling_Vec[2] * (Blocking_Vec[1]*Blocking_Vec[0]+Blocking_Vec[1])

    else:
        print "Unknown app name!"
        sys.exit(0)

    In_Buffer = math.ceil(In_Data_Size/1024.0)
    Out_Buffer = math.ceil(Out_Data_Size/1024.0)

    return [In_Buffer, Out_Buffer]

def Get_Potential_Blocking_Set(App, Unrolling_Vec):
    Blocking_Set = []
    Blocking_Set.append(Unrolling_Vec)

    if(App == "mm"):
        Blocking_Factors = Get_Factor_Vec(MM_Para.Mat_Len)
        if(Unrolling_Vec[1] == 1 and Unrolling_Vec[2] == 1):
            for factor in Blocking_Factors:
                if(factor > Unrolling_Vec[0] and factor%Unrolling_Vec[0] == 0):
                    Blocking_Vec = copy.copy(Unrolling_Vec)
                    Blocking_Vec[0] = factor
                    Blocking_Set.append(Blocking_Vec)

        elif(Unrolling_Vec[1] > 1 and Unrolling_Vec[2] ==1):
            for factor in Blocking_Factors:
                if(factor > Unrolling_Vec[1] and factor%Unrolling_Vec[1] == 0):
                    Blocking_Vec = copy.copy(Unrolling_Vec)
                    Blocking_Vec[1] = factor
                    Blocking_Set.append(Blocking_Vec)

        elif(Unrolling_Vec[2] > 1):
            for factor in Blocking_Factors:
                if(factor > Unrolling_Vec[2] and factor%Unrolling_Vec[2] == 0):
                    Blocking_Vec = copy.copy(Unrolling_Vec)
                    Blocking_Vec[2] = factor
                    Blocking_Set.append(Blocking_Vec)

        elif(Unrolling_Vec[0] > 1 and Unrolling_Vec[0] == Unrolling_Vec[1] and Unrolling_Vec[1] == Unrolling_Vec[2]):
            pass
        else:
            print "Unexpected unrolling level!"
            sys.exit(0)

    elif(App == "fir"):
        Blocking_Factors = Get_Factor_Vec(Fir_Para.In_Len)
        for factor in Blocking_Factors:
            if(factor > Unrolling_Vec[1] and factor%Unrolling_Vec[1] == 0):
                Blocking_Vec = copy.copy(Unrolling_Vec)
                Blocking_Vec[1] = factor
                Blocking_Set.append(Blocking_Vec)

    elif(App == "kmean"):
        Blocking_Factors = Get_Factor_Vec(Kmean_Para.Node_Num)
        for factor in Blocking_Factors:
            if(factor > Unrolling_Vec[2] and factor%Unrolling_Vec[2] == 0):
                Blocking_Vec = copy.copy(Unrolling_Vec)
                Blocking_Vec[2] = factor
                Blocking_Set.append(Blocking_Vec)

    elif(App == "sobel"):
        Blocking_Factors1 = Get_Factor_Vec(Sobel_Para.Fig_Col)
        Blocking_Factors2 = Get_Factor_Vec(Sobel_Para.Fig_Row)
        for factor1 in Blocking_Factors1:
            for factor2 in Blocking_Factors2:
                if(factor1 >= Unrolling_Vec[2] and factor2 > Unrolling_Vec[3] and factor1%Unrolling_Vec[2] == 0 and factor2%Unrolling_Vec[3] == 0):
                    Blocking_Vec = copy.copy(Unrolling_Vec)
                    Blocking_Vec[2] = factor1
                    Blocking_Vec[3] = factor2
                    Blocking_Set.append(Blocking_Vec)
    else:
        print "Unknown application!"
        sys.exit(0)

    return Blocking_Set 
   

def Get_DFG_Dump_Path(App, Unrolling_Vec):
    if(App == "mm"):
        if(Unrolling_Vec[1] == 1 and Unrolling_Vec[2] == 1):
            Dump_Path = Global_Def.Benchmark_Dir + App + "/" + App + "-L1/"
        elif(Unrolling_Vec[1] > 1 and Unrolling_Vec[2] ==1):
            Dump_Path = Global_Def.Benchmark_Dir + App + "/" + App + "-L2/"
        elif(Unrolling_Vec[2] > 1):
            Dump_Path = Global_Def.Benchmark_Dir + App + "/" + App + "-L3/"
        elif(Unrolling_Vec[0] > 1 and Unrolling_Vec[0] == Unrolling_Vec[1] and Unrolling_Vec[1] == Unrolling_Vec[2]):
            Dump_Path = Global_Def.Benchmark_Dir + App + "/" + App + "-fu/"
        else:
            print "Unexpected unrolling level!"
            sys.exit(0)

    elif(App == "fir" or App == "sobel" or App == "kmean"):
        Dump_Path = Global_Def.Benchmark_Dir + App + "/" + App + "/"
    else:
        print "Unknown application!"
        sys.exit(0)

    Dump_Path = Dump_Path + "dump/"
    return Dump_Path

def Get_DFG_Info(App, Dump_Path):
    os.chdir(Dump_Path)
    fHandle = open("loop-stat.txt", "r")
    DFG_In_Num = 0
    DFG_Out_Num = 0
    DFG_Operation_Num = 0
    for Line in fHandle:
        Line = Line.strip()
        Parts = Line.split(" ")
        if (Parts[0] == "DFG_In_Num"):
            DFG_In_Num = int(Parts[1])
        elif (Parts[0] == "DFG_Out_Num"):
            DFG_Out_Num = int(Parts[1])
        elif (Parts[0] == "DFG_Operation_Num"):
            DFG_Operation_Num = int(Parts[1])
        else:
            continue
    fHandle.close()
    return [DFG_Operation_Num, DFG_In_Num, DFG_Out_Num]

# Calculate the number of sub components such as # of DFG per block
def Get_SB_Num(Sub_Vec, Hyper_Vec):
    Comp_Num = 1
    for i in range(0, len(Sub_Vec)):
        Comp_Num = Comp_Num * Hyper_Vec[i]/Sub_Vec[i]

    return Comp_Num
   

def DFG_Check(DFG_Info):
    DFG_Operation_Num = DFG_Info[0]
    DFG_In_Num = DFG_Info[1]  
    DFG_Out_Num = DFG_Info[2]
    Optimal_OPC_Per_PE = 0.4
    DFG_Exe_Cycle = DFG_Operation_Num/(Optimal_OPC_Per_PE * SCGRA_Para.Max_SCGRA)

    if(SCGRA_Para.Max_In_Buffer*1024 <= DFG_In_Num):
        Skip_Scheduling = True
    elif(SCGRA_Para.Max_Out_Buffer*1024 <= DFG_Out_Num):
        Skip_Scheduling = True
    elif(DFG_Exe_Cycle >= SCGRA_Para.Max_Inst_Mem*1024):
        Skip_Scheduling = True
    else:
        Skip_Scheduling = False

    return Skip_Scheduling


def Get_Block_Info(App, Unrolling_Level):
    if(App == "mm"):
        if(Unrolling_Level == 0):
            DFG_Gen_Path = Global_Def.Benchmark_Dir + App + "/" + App + "-L1/"
        elif(Unrolling_Level == 1):
            DFG_Gen_Path = Global_Def.Benchmark_Dir + App + "/" + App + "-L2/"
        elif(Unrolling_Level == 2):
            DFG_Gen_Path = Global_Def.Benchmark_Dir + App + "/" + App + "-L3/"
        else:
            print "Unexpected unrolling level!"
            sys.exit(0)
    elif(App == "fir" or App == "sobel" or App == "kmean"):
        DFG_Gen_Path = Global_Def.Benchmark_Dir + App + "/" + App + "/"
    else:
        print "Unknown application!"
        sys.exit(0)

    DFG_Dump_Path = DFG_Gen_Path + "dump/"
    os.chdir(DFG_Dump_Path)
    fHandle = open("loop-stat.txt", "r")
    Block_In_Num = 0
    Block_Out_Num = 0
    for Line in fHandle:
        Line = Line.strip()
        Parts = Line.split(" ")
        if (Parts[0] == "Block_In_Num"):
            Block_In_Num = int(Parts[1])
        elif (Parts[0] == "Block_Out_Num"):
            Block_Out_Num = int(Parts[1])
        elif (Parts[0] == "Block_Reuse_Num"):
            Block_Level_Reuse_Num = int(Parts[1])
        else:
            continue
    fHandle.close()
    return [Block_Level_Reuse_Num, Block_In_Num, Block_Out_Num]


def Get_Possible_Blocking_Vec(Loop_Unrolling_Factor, Possible_Unrolling_Vec):
    Possible_Blocking_Vec = []
    for Factor in Possible_Unrolling_Vec:
        if (Factor % Loop_Unrolling_Factor == 0):
            Possible_Blocking_Vec.append(Factor)
    return Possible_Blocking_Vec


def Get_Optimal_Lat(CGRA_Size, OP_Ready_List):
    Lat = 0
    ID = 0
    while (ID < len(OP_Ready_List)-1):
        if(OP_Ready_List[ID] >= CGRA_Size):
            Lat = Lat + 1
            ID = ID + CGRA_Size
        else:
            Lat = Lat + 1
            ID = ID + OP_Ready_List[ID]

    return Lat


def Get_Max_SCGRA():
    Sim_Path = Global_Def.Scheduler_Dir + "result/"
    os.chdir(Sim_Path)
    fHandle = open("trace.txt", "r")
    for Line in fHandle.readlines():
        Line = Line.strip()
        Parts = Line.split(" ")
        if(Parts[0] == "OP_Ready_List"):
            OP_Ready_List = Parts[1:len(Parts)]
            break
    fHandle.close()

    Max_SCGRA = SCGRA_Para.Min_SCGRA
    Lat1 = Get_Optimal_Lat(Max_SCGRA, OP_Ready_List)
    Lat2 = Get_Optimal_Lat(Max_SCGRA + 1, OP_Ready_List)
    while(Lat1 > 1.1*Lat2):
        Max_SCGRA = Max_SCGRA + 1
        Lat1 = Get_Optimal_Lat(Max_SCGRA, OP_Ready_List)
        Lat2 = Get_Optimal_Lat(Max_SCGRA + 1, OP_Ready_List)

    Vec = Get_Factor_Vec(Max_SCGRA)
    while(len(Vec) == 2):
        Max_SCGRA = Max_SCGRA + 1
        Vec = Get_Factor_Vec(Max_SCGRA)

    return Max_SCGRA


def Get_Target_Vec(Loop_Vec,  Target_Loop_Level,  Factor):
    Vec = copy.copy(Loop_Vec)
    for i,  item in enumerate(Loop_Vec):
        if(i == Target_Loop_Level):
            Vec[i] = Factor
        elif(i > Target_Loop_Level):
            Vec[i] = 1
        else:
            Vec[i] = Loop_Vec[i]

    return Vec


def Get_Factor_Vec(Data):
    Factor_Vec = []
    for i in range(1, Data+1):
        if (Data % i) == 0:
            Factor_Vec.append(i)
    return Factor_Vec

def Get_Sim_Cmd(App, Row, Col, Sim_Only):
    Sim_Cmd = "./auto-sim -n " + App + " -r " + str(Row) + " -c " + str(Col)
    Sim_Cmd += " -l OLD" + " -s " + str(Sim_Only) 
    return Sim_Cmd

if __name__ == '__main__':
    main()
