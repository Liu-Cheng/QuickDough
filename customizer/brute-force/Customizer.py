#!/usr/bin/env python

# import pdb
import sys
import os
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
    print "It took ", Elapsed_Time/60, " min to complete the benchmark design \
            space exploration!"


# The DFG generation program may need to skip some of the inner loops
def Get_Min_Loop_Level(App):
    Min_Loop_Level = 0
    if(App == "fir"):
        Min_Loop_Level = 1
    elif(App == "sobel"):
        Min_Loop_Level = 3
    elif(App == "kmean"):
        Min_Loop_Level = 2
    else:
        Min_Loop_Level = 0

    return Min_Loop_Level


def Search_Design_Space(App):
    Possible_Solutions = []
    Sim_Cnt = 0
    Avail_Config_Num = 0
    Search_Std = sqrt(SCGRA_Para.Max_SCGRA)
    if(Global_Def.Full_Search):
        Search_Gap = Search_Std
    else:
        Search_Gap = Search_Std/3
    Original_Loop_Vec = Get_Loop_Structure(App)
    Min_Loop_Level = Get_Min_Loop_Level(App)
    Max_Loop_Level = len(Original_Loop_Vec)
    for Unrolling_Level in range(Min_Loop_Level, Max_Loop_Level):
        Possible_Unrolling_Vec = Get_Factor_Vec(
            Original_Loop_Vec[Unrolling_Level])
        Stop_Unrolling = False
        for Loop_Unrolling_Factor in Possible_Unrolling_Vec:
            if(App == "kmean" and
               Loop_Unrolling_Factor <= Original_Loop_Vec[1]):
                continue
            if(Unrolling_Level != 0 and Loop_Unrolling_Factor == 1):
                continue
            Possible_Blocking_Vec = \
                Get_Possible_Blocking_Vec(Loop_Unrolling_Factor,
                                          Possible_Unrolling_Vec)

            Row = SCGRA_Para.Min_SCGRA_Row
            Max_SCGRA = SCGRA_Para.Max_SCGRA
            while (Row < (Search_Std + Search_Gap)):
                Col = SCGRA_Para.Min_SCGRA_Col
                if(Col < (Row - Search_Gap)):
                    Col = int(Row - Search_Gap)
                while (Col <= Row and (Row*Col <= SCGRA_Para.Max_SCGRA)):
                    # Stop increasing the Col
                    if(Max_SCGRA < Row*Col):
                        print "More than required! Max_SCGRA = ", Max_SCGRA
                        break

                    Run_DFG_Gen(App,  Row,  Col,  Unrolling_Level,
                                Loop_Unrolling_Factor)

                    # Check the generated DFG to see if it is suitable
                    DFG_Info = Get_DFG_Info(App, Unrolling_Level)
                    #if(not Global_Def.Full_Search):
                    Stop_Unrolling = DFG_Check(DFG_Info)
                    #else:
                        #Stop_Unrolling = False
                    if(Stop_Unrolling):
                        break

                    # Check the DFG simulation to see if it is necessary
                    # to perform larger blocking
                    Run_DFG_Sim(App,  Row,  Col,  Unrolling_Level,
                                Loop_Unrolling_Factor)
                    Sim_Cnt = Sim_Cnt + 1

                    # if(Sim_Flag == False):
                    #    Max_SCGRA = Get_Max_SCGRA()
                    #    Sim_Flag = True

                    Run_Out_Of_Inst_Mem = DFG_Sim_Check()
                    if(Run_Out_Of_Inst_Mem):
                        Col = Col + 1
                        continue

                    Tmp_Solution = Solution()
                    Update_DFG_Sim_To_Solution(App, Tmp_Solution, Row, Col,
                                               Unrolling_Level,
                                               Loop_Unrolling_Factor)

                    for Loop_Blocking_Factor in Possible_Blocking_Vec:
                        Base_Solution = copy.deepcopy(Tmp_Solution)
                        Base_Solution.Loop_Blocking_Vec = \
                            Get_Target_Vec(Original_Loop_Vec, Unrolling_Level,
                                           Loop_Blocking_Factor)
                        # In/Out_Buffer_Depth, Loop_Perf, PBRAM Overhead
                        Update_Block_Info_To_Solution(App, Unrolling_Level,
                                                      Base_Solution)
                        if(Base_Solution.Is_Acceptable()):
                            Possible_Solutions.append(Base_Solution)
                            print "Row =", Base_Solution.SCGRA_Row, " Col =", \
                                Base_Solution.SCGRA_Col, " Unrolling_Vec =", \
                                Base_Solution.Loop_Unrolling_Vec, \
                                " Blocking_Vec =", \
                                Base_Solution.Loop_Blocking_Vec
                    if((not Col_Inc_Revenue_Test(Possible_Solutions))
                            and (not Global_Def.Full_Search)):
                        break
                    Col = Col + 1
                if(Stop_Unrolling):
                    break
                if((not Row_Inc_Revenue_Test(Possible_Solutions))
                        and (not Global_Def.Full_Search)):
                    break
                Row = Row + 1
            if((not Stop_Unrolling) and (not Global_Def.Full_Search)):
                Stop_Unrolling = Unrolling_Revenue_Test(Possible_Solutions)
            if(Stop_Unrolling):
                Stop_Unrolling = False
                break

    Avail_Config_Num = len(Possible_Solutions)
    Save_Possible_Solutions(App, Possible_Solutions)
    #Solutions_Perf_Filter(Possible_Solutions)
    Plot_Solutions(App, Possible_Solutions)
    return [Avail_Config_Num, Sim_Cnt]


# For current unrolling vector and specific Row, check if
# improvement of DFG_Perf is significant enough for further
# increasing Col.
def Col_Inc_Revenue_Test(Possible_Solutions):
    Curr_Sol = Possible_Solutions[-1]
    Curr_Perf = Curr_Sol.DFG_Perf
    Revenue_Standard = 0.05
    Comparison_Perf_List = []
    for Sol in Possible_Solutions:
        # Different blocking solutions are ignored
        if(Is_Vec_EQ(Sol.Loop_Unrolling_Vec, Sol.Loop_Blocking_Vec)):
            if(Col_Compare(Curr_Sol, Sol)):
                Comparison_Perf_List.append(Sol.DFG_Perf)

    if(len(Comparison_Perf_List) >= 5):
        Comparison_Perf_List.sort()
        Perf_Metric = (Comparison_Perf_List[2]- \
                Comparison_Perf_List[1])/(1.0*Comparison_Perf_List[1])
        if(Perf_Metric <= Revenue_Standard):
            return False

    return True


def Col_Compare(Sol1, Sol2):
    if(Is_Vec_EQ(Sol1.Loop_Unrolling_Vec, Sol2.Loop_Unrolling_Vec)):
        if(Sol1.SCGRA_Row == Sol2.SCGRA_Row and
           Sol1.SCGRA_Col != Sol2.SCGRA_Col):
            return True
    return False


def Row_Compare(Sol1, Sol2):
    if(Is_Vec_EQ(Sol1.Loop_Unrolling_Vec, Sol2.Loop_Unrolling_Vec)):
        if(Sol1.SCGRA_Row >= Sol2.SCGRA_Row and
           Sol1.SCGRA_Col >= Sol2.SCGRA_Col):
            return True
    return False


def Is_Vec_EQ(Vec1, Vec2):
    if(len(Vec1) == len(Vec2)):
        for ID, Data in enumerate(Vec1):
            if(Data != Vec2[ID]):
                return False
        return True
    return False


# For current unrolling vector and (Row, Col) pair, check if
# improvement of DFG_Perf is significant enough for further
# increasing Row
def Row_Inc_Revenue_Test(Possible_Solutions):
    Curr_Sol = Possible_Solutions[-1]
    Curr_Perf = Curr_Sol.DFG_Perf
    Revenue_Standard = 0.05
    Comparison_Perf_List = []
    for Sol in Possible_Solutions:
        # Different blocking solutions are ignored
        if(Is_Vec_EQ(Sol.Loop_Unrolling_Vec, Sol.Loop_Blocking_Vec)):
            if(Row_Compare(Curr_Sol, Sol)):
                Comparison_Perf_List.append(Sol.DFG_Perf)

    if(len(Comparison_Perf_List) >= 5):
        Comparison_Perf_List.sort()
        print Comparison_Perf_List
        Perf_Metric = (Comparison_Perf_List[2]-\
                Comparison_Perf_List[1])/(1.0*Comparison_Perf_List[1])
        if(Perf_Metric <= Revenue_Standard):
            return False

    return True


# If there are more than two different unrolling choices, search the best
# CGRA configuration for each unrolling choices. If best two loop unrolling
# achives little performance enhancement, there is no need for further loop
# unrolling.
def Unrolling_Revenue_Test(Possible_Solutions):
    Stop_Unrolling = False
    Revenue_Standard = 0.05
    Dict = {}
    for Sol in Possible_Solutions:
        Key = Get_Total_Unrolling_Num(Sol.Loop_Unrolling_Vec)
        Val = Sol.Compu_Time
        if Key in Dict:
            if(Dict[Key] > Val):
                Dict[Key] = Val
        else:
            Dict[Key] = Val

    # if there are less than 4 unrolling performed, skip the test
    if(len(Dict) >= 3):
        [Num1, Num2] = Get_Top2_Keys(Dict)
        Revenue = (Dict[Num2] - Dict[Num1])/(1.0*Dict[Num2])
        if(Revenue <= Revenue_Standard):
            Stop_Unrolling = True

    return Stop_Unrolling


def Get_Total_Unrolling_Num(Unrolling_Vec):
    Total_Unrolling = 1
    for Factor in Unrolling_Vec:
        Total_Unrolling *= Factor

    return Total_Unrolling


def Get_Top2_Keys(Dict):
    Keys = Dict.keys()
    Num1 = Keys[0]
    Num2 = Keys[0]

    for Data in Keys:
        if(Num1 < Data):
            Num1 = Data

    for Data in Keys:
        if((Num2 < Data and Data != Num1) or (Num2 == Num1 and Data != Num1)):
            Num2 = Data

    return [Num1, Num2]


def Get_Next_Col(Row, Col):
    Col = Col + 2
    return Col


def Solutions_Perf_Filter(Possible_Solutions):
    Perf = []
    for Sol in Possible_Solutions:
        Perf.append(Sol.Loop_Perf)
    Perf.sort()
    Perf_Metric = 0
    if(len(Perf) > 100):
        Perf_Metric = Perf[50]
    elif(len(Perf) > 20):
        Perf_Metric = Perf[20]
    else:
        Perf_Metric = Perf[-1]

    # Worst_Perf = max(Perf)
    # Best_Perf = min(Perf)
    # Perf_Metric = Best_Perf + 0.1*(Worst_Perf-Best_Perf)
    Possible_Solutions[:] = [Sol for Sol in Possible_Solutions if
                             Sol.Loop_Perf < Perf_Metric]


def Plot_Solutions(App, Possible_Solutions):
    fName1 = Global_Def.Customizer_Dir + "./" + App + "-EDP-Overhead.pdf"
    fName2 = Global_Def.Customizer_Dir + "./" + App + "-Power-Overhead.pdf"
    fName3 = Global_Def.Customizer_Dir + "./" + App + "-Energy-Overhead.pdf"
    fName4 = Global_Def.Customizer_Dir + "./" + App + "-Perf-Overhead.pdf"
    BRAM = []
    CGRA_Size = []
    Perf = []
    Power = []
    Energy_Delay_Product = []
    Energy = []
    Config_ID = []
    Pareto_BRAM = []
    Pareto_Perf = []
    ID = 1
    for Tmp in Possible_Solutions:
        Config_ID.append(ID)
        CGRA_Size.append(Tmp.SCGRA_Row * Tmp.SCGRA_Col)
        BRAM.append(Tmp.PBRAM_Overhead)
        Perf.append(Tmp.Loop_Perf)
        Power.append(Tmp.Power)
        Energy.append(Tmp.Energy)
        Energy_Delay_Product.append(Tmp.Energy_Delay_Product)
        ID += 1

    Get_Pareto_Points(BRAM, Perf, Pareto_BRAM, Pareto_Perf)
    Save_Arrays(App, "Pareto-Points", Pareto_BRAM, Pareto_Perf)
    Save_Arrays(App, "BRAM-Perf", BRAM, Perf)
    Save_Arrays(App, "Energy-Perf", Perf, Energy)
    Save_Arrays(App, "EDP-Perf", Perf, Energy_Delay_Product)
    # fig, ax1 = plt.subplots()
    # ax1.plot(Config_ID, Perf, 'bp')
    # ax1.set_xlabel("Different Design Parameters")
    # ax1.set_ylabel("Loop Execution Time (cycles)")
    # ax1.set_xlim(min(Config_ID)*0.8, max(Config_ID)*1.1)
    # ax1.set_ylim(min(Perf)*0.8, max(Perf)*1.1)
    # ax2 = ax1.twinx()
    # ax2.plot(Config_ID, Power_Perf_Production, 'r.')
    # ax2.set_ylabel("Power Performance Production (w)")

    fig1 = plt.figure()
    ax1 = fig1.add_subplot(1, 1, 1)
    ax1.scatter(Perf, Energy_Delay_Product, color='blue', s=8, alpha=0.5)
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
    ax4.plot(Pareto_BRAM, Pareto_Perf)
    ax4.set_xlabel("BRAM Overhead")
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


def Get_Loop_Structure(App):
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


def Run_Block_Sim(App, Row, Col, Unrolling_Level, Blocking_Vec, Unrolling_Vec):
    Sim_Path = Global_Def.Scheduler_Dir + "util/auto-sim/"
    os.chdir(Sim_Path)
    Schedule_Off = 1
    Sim_Only = 1
    Run_Sim = Get_Sim_Cmd(App, Row, Col, Schedule_Off, Sim_Only,
                          Unrolling_Level, Blocking_Vec, Unrolling_Vec)
    os.system(Run_Sim)


def Run_DFG_Sim(App, Row, Col, Unrolling_Level, Loop_Unrolling_Factor):
    Sim_Path = Global_Def.Scheduler_Dir + "util/auto-sim/"
    os.chdir(Sim_Path)
    Schedule_Off = 0
    Sim_Only = 1
    Original_Loop_Vec = Get_Loop_Structure(App)
    Unrolling_Vec = Get_Target_Vec(Original_Loop_Vec, Unrolling_Level,
                                   Loop_Unrolling_Factor)
    Blocking_Vec = Unrolling_Vec
    Run_Sim = Get_Sim_Cmd(App, Row, Col, Schedule_Off, Sim_Only,
                          Unrolling_Level, Blocking_Vec, Unrolling_Vec)
    os.system(Run_Sim)


def Run_DFG_Gen(App, Row, Col, Unrolling_Level, Loop_Unrolling_Factor):
    Sim_Path = Global_Def.Scheduler_Dir + "util/auto-sim/"
    os.chdir(Sim_Path)
    Schedule_Off = 1
    Sim_Only = 1
    Original_Loop_Vec = Get_Loop_Structure(App)
    Unrolling_Vec = Get_Target_Vec(Original_Loop_Vec, Unrolling_Level,
                                   Loop_Unrolling_Factor)
    Blocking_Vec = Unrolling_Vec
    Run_Sim = Get_Sim_Cmd(App, Row, Col, Schedule_Off, Sim_Only,
                          Unrolling_Level, Blocking_Vec, Unrolling_Vec)
    os.system(Run_Sim)


def Get_DFG_Perf():
    Sim_Path = Global_Def.Scheduler_Dir + "result/"
    os.chdir(Sim_Path)
    fHandle = open("trace.txt", "r")
    for Line in fHandle.readlines():
        Line = Line.strip()
        Parts = Line.split(" ")
        if(Parts[0] == "Sim_Perf"):
            return int(Parts[1])

    fHandle.close()
    print "Failed to find Sim_Perf entry from trace.txt"
    sys.exit(0)


def DFG_Sim_Check():
    Sim_Perf = Get_DFG_Perf()
    if((SCGRA_Para. Max_Inst_Mem_Depth*1024) < Sim_Perf):
        Run_Out_Of_Inst_Mem = True
    else:
        Run_Out_Of_Inst_Mem = False
    return Run_Out_Of_Inst_Mem


def Update_DFG_Sim_To_Solution(App, Tmp_Solution, Row, Col, Unrolling_Level,
                               Loop_Unrolling_Factor):
    Original_Loop_Vec = Get_Loop_Structure(App)
    Tmp_Solution.Loop_Vec = Original_Loop_Vec
    Tmp_Solution.Loop_Unrolling_Vec = Get_Target_Vec(Original_Loop_Vec,
                                                     Unrolling_Level,
                                                     Loop_Unrolling_Factor)
    Tmp_Solution.SCGRA_Row = Row
    Tmp_Solution.SCGRA_Col = Col
    Tmp_Solution.SCGRA_Size = Row * Col
    Tmp_Solution.DFG_Perf = Get_DFG_Perf()
    Tmp_Solution.Update_Inst_Mem()


def Update_Block_Info_To_Solution(App, Unrolling_Level, Curr_Solution):
    # Must be manually adapted for different benchmark
    Unrolling_Vec = copy.copy(Curr_Solution.Loop_Unrolling_Vec)
    Blocking_Vec = copy.copy(Curr_Solution.Loop_Blocking_Vec)
    Run_Block_Sim(App, Curr_Solution.SCGRA_Row, Curr_Solution.SCGRA_Col,
                  Unrolling_Level, Blocking_Vec, Unrolling_Vec)
    [Block_Level_Reuse_Num, Block_In_Num, Block_Out_Num] = \
        Get_Block_Info(App, Unrolling_Level)
    Curr_Solution.Update_IO_Buffer(Block_In_Num, Block_Out_Num)
    Curr_Solution.Update_Perf(Block_Level_Reuse_Num, Block_In_Num,
                              Block_Out_Num)
    Curr_Solution.Update_Addr_Mapper()
    Curr_Solution.Update_HW_Overhead()
    Curr_Solution.Update_Power()
    Curr_Solution.Update_Energy_Delay_Product()


def Get_DFG_Info(App, Unrolling_Level):
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


def DFG_Check(DFG_Info):
    [DFG_Operation_Num,  DFG_In_Num,  DFG_Out_Num] = DFG_Info
    Optimal_OPC_Per_PE = 0.8
    Max_Operation_Num = SCGRA_Para.Max_SCGRA * \
        SCGRA_Para.Max_Inst_Mem_Depth * 1024 * Optimal_OPC_Per_PE
    if(SCGRA_Para.Max_In_Buffer_Depth*1024 <= DFG_In_Num):
        Stop_Unrolling = True
    elif(SCGRA_Para.Max_Out_Buffer_Depth*1024 <= DFG_Out_Num):
        Stop_Unrolling = True
    elif(Max_Operation_Num <= DFG_Operation_Num):
        Stop_Unrolling = True
    else:
        Stop_Unrolling = False

    return Stop_Unrolling


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


def Get_Sim_Cmd(App, Row, Col, Schedule_Off, Sim_Only, Unrolling_Level,
                Blocking_Vec, Unrolling_Vec):
    Loop_Unrolling_Factor = Unrolling_Vec[Unrolling_Level]
    Loop_Blocking_Factor = Blocking_Vec[Unrolling_Level]
    Original_Loop_Vec = Get_Loop_Structure(App)
    if(App == "mm"):
        if(Unrolling_Level == 0):
            Run_Sim = "./auto-sim -n " + App + " -t large -r " \
                + str(Row) + " -c " + str(Col)
            Run_Sim += " -l OLD" + " -k " + str(Schedule_Off)
            Run_Sim += " -s " + str(Sim_Only) + " -p "
            Run_Sim += str(Loop_Blocking_Factor) + " " \
                + str(Loop_Unrolling_Factor)
        elif(Unrolling_Level == 1):
            Run_Sim = "./auto-sim -n " + App + " -t medium -r " \
                + str(Row) + " -c " + str(Col)
            Run_Sim += " -l OLD" + " -k " + str(Schedule_Off)
            Run_Sim += " -s " + str(Sim_Only) + " -p "
            Run_Sim += str(Loop_Blocking_Factor) + " " \
                + str(Loop_Unrolling_Factor) + " " + str(Original_Loop_Vec[0])
        elif(Unrolling_Level == 2):
            Run_Sim = "./auto-sim -n " + App + " -t small -r " \
                + str(Row) + " -c " + str(Col)
            Run_Sim += " -l OLD" + " -k " + str(Schedule_Off)
            Run_Sim += " -s " + str(Sim_Only) + " -p "
            Run_Sim += str(Loop_Blocking_Factor) + " " \
                + str(Loop_Unrolling_Factor) + " " + str(Original_Loop_Vec[0])
        else:
            print "Undefined unrolling level!"
            sys.exit(0)
    elif(App == "fir"):
        Run_Sim = "./auto-sim -n " + App + " -t small -r " \
            + str(Row) + " -c " + str(Col)
        Run_Sim += " -l OLD" + " -k " + str(Schedule_Off)
        Run_Sim += " -s " + str(Sim_Only) + " -p "
        Run_Sim += str(Loop_Blocking_Factor) + " " \
            + str(Loop_Unrolling_Factor) + " " + str(Original_Loop_Vec[0])
    elif(App == "sobel"):
        Run_Sim = "./auto-sim -n " + App + " -t small -r " \
            + str(Row) + " -c " + str(Col)
        Run_Sim += " -l OLD" + " -k " + str(Schedule_Off)
        Run_Sim += " -s " + str(Sim_Only) + " -p "
        Run_Sim += str(Loop_Blocking_Factor) + " " \
            + str(Loop_Unrolling_Factor) + " " + str(Original_Loop_Vec[2])
    elif(App == "kmean"):
        Run_Sim = "./auto-sim -n " + App + " -t small -r " \
            + str(Row) + " -c " + str(Col)
        Run_Sim += " -l OLD" + " -k " + str(Schedule_Off)
        Run_Sim += " -s " + str(Sim_Only) + " -p "
        Run_Sim += str(Loop_Blocking_Factor) + " " \
            + str(Loop_Unrolling_Factor) + " " + str(Original_Loop_Vec[1]) \
            + " " + str(Original_Loop_Vec[0])
    else:
        print "Unknown application!"
        sys.exit(0)

    return Run_Sim

if __name__ == '__main__':
    main()
