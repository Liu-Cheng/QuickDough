#!/usr/bin/env python

import pdb
import sys
import os
import subprocess
import copy
import numpy as np
import matplotlib.pyplot as plt
from math import * 
from Global import *
from Solution import *

def main():
    """ A simple brute search is implemented for the customization and 
    it will be used as the metric to evaluate more advanced 
    customization algorithm.
    """
    Benchmark_List = ["mm"]
    Work_Path = os.getcwd()
    for App in Benchmark_List:
        [Avail_Config_Num, Sim_Cnt] = Search_Design_Space(App)
        print "Simulation for ", App,  " ",  Sim_Cnt, " Times, there are ", Avail_Config_Num, " available configurations!"
    os.chdir(Work_Path)
    print "Benchmark design space exploration is completed!"


def Search_Design_Space(App):
    Possible_Solutions = []
    Sim_Cnt = 0
    Avail_Config_Num = 0
    
    Original_Loop_Vec = Get_Loop_Structure(App)
    Max_Loop_Level = len(Original_Loop_Vec)
    for Unrolling_Level in range(0, Max_Loop_Level):
        Possible_Unrolling_Vec = Get_Factor_Vec(Original_Loop_Vec[Unrolling_Level])
        Stop_Unrolling = False
        for Loop_Unrolling_Factor in Possible_Unrolling_Vec:
            Possible_Blocking_Vec = Get_Possible_Blocking_Vec(Loop_Unrolling_Factor, Possible_Unrolling_Vec)
            Row = SCGRA_Para.Min_SCGRA_Row
            Col = SCGRA_Para.Min_SCGRA_Col
            while (Row < (3*sqrt(SCGRA_Para.Max_SCGRA)+1)):
                Col = SCGRA_Para.Min_SCGRA_Col
                while (Col <= Row):
                    Run_DFG_Gen(App,  Row,  Col,  Unrolling_Level, Loop_Unrolling_Factor)
                    
                    # Check the generated DFG to see if it is suitable
                    DFG_Info = Get_DFG_Info(App, Unrolling_Level)
                    Stop_Unrolling = DFG_Check(DFG_Info)
                    if(Stop_Unrolling):
                        break
                        
                    # Check the DFG simulation to see if it is necessary to perform larger blocking
                    Run_DFG_Sim(App,  Row,  Col,  Unrolling_Level, Loop_Unrolling_Factor)
                    Sim_Cnt = Sim_Cnt + 1
                    
                    if(Row == 2 and Col == 2):
                        Reset_Max_SCGRA() 

                    Run_Out_Of_Inst_Mem = DFG_Sim_Check()
                    if(Run_Out_Of_Inst_Mem == 1):
                        Col = Get_Next_Col(Row, Col)
                        continue

                    Tmp_Solution = Solution()
                    Update_DFG_Sim_To_Solution(App, Tmp_Solution, Row, Col, Unrolling_Level, Loop_Unrolling_Factor)

                    for Loop_Blocking_Factor in Possible_Blocking_Vec:
                        Base_Solution = copy.deepcopy(Tmp_Solution)
                        Base_Solution.Loop_Blocking_Vec = Get_Target_Vec(Original_Loop_Vec, Unrolling_Level, Loop_Blocking_Factor)
                        Update_Block_Info_To_Solution(App, Unrolling_Level, Base_Solution) # In/Out_Buffer_Depth, Loop_Perf, PBRAM Overhead
                        if(Base_Solution.Is_Acceptable()):
                            Possible_Solutions.append(Base_Solution)
                            print "Row =", Base_Solution.SCGRA_Row, " Col =", Base_Solution.SCGRA_Col, \
                            " Unrolling_Vec =", Base_Solution.Loop_Unrolling_Vec, \
                            " Blocking_Vec =", Base_Solution.Loop_Blocking_Vec
                    Col = Col + 1
                if(Stop_Unrolling):
                    break
                Row = Row + 1
            if(Stop_Unrolling == False):
                Stop_Unrolling = Marginal_Revenue_Test(Possible_Solutions);
            if(Stop_Unrolling):
                Stop_Unrolling = False
                break

    Avail_Config_Num = len(Possible_Solutions)
    Solutions_Perf_Filter(Possible_Solutions)
    Save_Possible_Solutions(App, Possible_Solutions)
    Plot_Overhead_Perf_Dist(App, Possible_Solutions)
    return [Avail_Config_Num, Sim_Cnt]

# If there are more than two different unrolling choices, search the best
# CGRA configuration for each unrolling choices. If best two loop unrolling 
# achives little performance enhancement, there is no need for further loop
# unrolling.
def Marginal_Revenue_Test(Possible_Solutions):
    Stop_Unrolling = False
    Revenue_Standard = 0.05
    Dict = {}
    for Sol in Possible_Solutions:
        Key = Get_Total_Unrolling_Num(Sol.Loop_Unrolling_Vec)
        Val = Sol.Compu_Time
        if(Dict.has_key(Key)):
            if(Dict[Key] > Val):
                Dict[Key] = Val
        else:
            Dict[Key] = Val
    print Dict
    sys.exit(0)

    # if there are less than 4 unrolling performed, skip the test
    if(len(Dict) >= 4):
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
    Curr_Perf = Get_DFG_Perf()
    Min_CGRA = Curr_Perf/(SCGRA_Para.Max_Inst_Mem_Depth*1024*0.6)
    Min_Col = int(Min_CGRA/Row)
    if(Min_Col < (Col+1)):
        Col = Col + 1
    elif(Min_Col > Row):
        Col = Row
    else:
        Col = Min_Col
    return Col

def Solutions_Perf_Filter(Possible_Solutions):
    Perf = []
    for Sol in Possible_Solutions:
        Perf.append(Sol.Loop_Perf) 
    Worst_Perf = max(Perf)
    Best_Perf = min(Perf)
    Perf_Metric = Best_Perf + 0.1*(Worst_Perf-Best_Perf)
    Possible_Solutions[:] = [Sol for Sol in Possible_Solutions if Sol.Loop_Perf<Perf_Metric]


def Plot_Overhead_Perf_Dist(App, Possible_Solutions):
    fName = Global_Def.Customizer_Dir + "./" + App + "-dp.pdf"
    BRAM = []
    Perf = []
    for Tmp in Possible_Solutions:
        BRAM.append(Tmp.PBRAM_Overhead)
        Perf.append(Tmp.Loop_Perf)

    A = 80
    M = ">"
    fig = plt.figure(figsize=(12,8))
    plt.scatter(BRAM, Perf, s = A, marker = M)
    plt.xlabel("PBRAM Overhead")
    plt.ylabel("Loop Execution Time (cycles)")
    plt.title("MM Design Space Using SCGRA Based Design Framework")
    plt.xlim(min(BRAM)*0.8, max(BRAM)*1.1)
    plt.ylim(min(Perf)*0.8, max(Perf)*1.1)
    plt.grid()
    #plt.show()
    fig.savefig(fName, bbox_inches='tight')


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
    Run_Sim = Get_Sim_Cmd(App, Row, Col, Schedule_Off, Sim_Only, Unrolling_Level, Blocking_Vec, Unrolling_Vec)
    os.system(Run_Sim)
    
    
def Run_DFG_Sim(App, Row, Col, Unrolling_Level, Loop_Unrolling_Factor):
    Sim_Path = Global_Def.Scheduler_Dir + "util/auto-sim/"
    os.chdir(Sim_Path)
    Schedule_Off = 0
    Sim_Only = 1
    Original_Loop_Vec = Get_Loop_Structure(App)
    Unrolling_Vec = Get_Target_Vec(Original_Loop_Vec, Unrolling_Level, Loop_Unrolling_Factor)
    Blocking_Vec = Unrolling_Vec
    Run_Sim = Get_Sim_Cmd(App, Row, Col, Schedule_Off, Sim_Only, Unrolling_Level, Blocking_Vec, Unrolling_Vec)
    os.system(Run_Sim)

def Run_DFG_Gen(App, Row, Col, Unrolling_Level, Loop_Unrolling_Factor):
    Sim_Path = Global_Def.Scheduler_Dir + "util/auto-sim/"
    os.chdir(Sim_Path)
    Schedule_Off = 1
    Sim_Only = 1
    Original_Loop_Vec = Get_Loop_Structure(App)
    Unrolling_Vec = Get_Target_Vec(Original_Loop_Vec, Unrolling_Level, Loop_Unrolling_Factor)
    Blocking_Vec = Unrolling_Vec
    Run_Sim = Get_Sim_Cmd(App, Row, Col, Schedule_Off, Sim_Only, Unrolling_Level, Blocking_Vec, Unrolling_Vec)
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
        Run_Out_Of_Inst_Mem = 1
    else:
        Run_Out_Of_Inst_Mem = 0
    return Run_Out_Of_Inst_Mem
    
def Update_DFG_Sim_To_Solution(App, Tmp_Solution, Row, Col, Unrolling_Level, Loop_Unrolling_Factor):
    Original_Loop_Vec = Get_Loop_Structure(App)
    Tmp_Solution.Loop_Vec = Original_Loop_Vec
    Tmp_Solution.Loop_Unrolling_Vec = Get_Target_Vec(Original_Loop_Vec, Unrolling_Level, Loop_Unrolling_Factor)
    Tmp_Solution.SCGRA_Row = Row
    Tmp_Solution.SCGRA_Col = Col
    Tmp_Solution.SCGRA_Size = Row * Col
    Tmp_Solution.DFG_Perf = Get_DFG_Perf()
    Tmp_Solution.Update_Inst_Mem()
                        
def Update_Block_Info_To_Solution(App, Unrolling_Level, Curr_Solution):
    # Must be manually adapted for different benchmark
    Unrolling_Vec = copy.copy(Curr_Solution.Loop_Unrolling_Vec)
    Blocking_Vec = copy.copy(Curr_Solution.Loop_Blocking_Vec)
    Run_Block_Sim(App, Curr_Solution.SCGRA_Row, Curr_Solution.SCGRA_Col, Unrolling_Level, Blocking_Vec, Unrolling_Vec)
    [Block_Level_Reuse_Num, Block_In_Num, Block_Out_Num] = Get_Block_Info(App, Unrolling_Level)
    Curr_Solution.Update_IO_Buffer(Block_In_Num, Block_Out_Num)
    Curr_Solution.Update_Perf(Block_Level_Reuse_Num, Block_In_Num, Block_Out_Num)
    Curr_Solution.Update_PBRAM_Overhead()

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
    Max_Operation_Num = SCGRA_Para.Max_SCGRA*SCGRA_Para.Max_Inst_Mem_Depth*1024*Optimal_OPC_Per_PE
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
        if (Factor%Loop_Unrolling_Factor == 0):
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

def Reset_Max_SCGRA():
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

    SCGRA_Para.Max_SCGRA = Max_SCGRA
    

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
        if (Data%i) == 0:
            Factor_Vec.append(i)
    return Factor_Vec

def Get_Sim_Cmd(App, Row, Col, Schedule_Off, Sim_Only, Unrolling_Level, Blocking_Vec, Unrolling_Vec):
    Loop_Unrolling_Factor = Unrolling_Vec[Unrolling_Level]
    Loop_Blocking_Factor = Blocking_Vec[Unrolling_Level]
    Original_Loop_Vec = Get_Loop_Structure(App)
    if(App == "mm"):
        if(Unrolling_Level == 0):
            Run_Sim = "./auto-sim -n " + App + " -t large -r " + str(Row) + " -c " + str(Col) 
            Run_Sim += " -l OLD" + " -k " + str(Schedule_Off)
            Run_Sim += " -s " + str(Sim_Only) + " -p " 
            Run_Sim += str(Loop_Blocking_Factor) + " " + str(Loop_Unrolling_Factor)
        elif(Unrolling_Level == 1):
            Run_Sim = "./auto-sim -n " + App + " -t medium -r " + str(Row) + " -c " + str(Col) 
            Run_Sim += " -l OLD" + " -k " + str(Schedule_Off)
            Run_Sim += " -s " + str(Sim_Only) + " -p "  
            Run_Sim += str(Loop_Blocking_Factor) + " " + str(Loop_Unrolling_Factor) + " " + str(Original_Loop_Vec[0])
        elif(Unrolling_Level == 2):
            Run_Sim = "./auto-sim -n " + App + " -t small -r " + str(Row) + " -c " + str(Col) 
            Run_Sim += " -l OLD" + " -k " + str(Schedule_Off)
            Run_Sim += " -s " + str(Sim_Only) + " -p "
            Run_Sim += str(Loop_Blocking_Factor) + " " + str(Loop_Unrolling_Factor) + " " + str(Original_Loop_Vec[0])
        else:
            print "Undefined unrolling level!"
            sys.exit(0)

    return Run_Sim

if __name__ == '__main__':
    main()

