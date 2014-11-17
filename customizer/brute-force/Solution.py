#!/usr/bin/env python

import sys
from Global import *

class Solution():

    def __init__(self):
        self.Loop_Vec = []
        self.Loop_Unrolling_Vec = []
        self.Loop_Unrolling_Level = 0 # Assume it is the same with Loop_Blocking_Level
        self.SCGRA_Row = SCGRA_Para.Min_SCGRA_Row
        self.SCGRA_Col = SCGRA_Para.Min_SCGRA_Col

        self.DFG_Perf = 0
        self.Block_Perf = 0
        self.Loop_Perf = 0
        self.PBRAM_Overhead = 0
        self.Compu_Time = 0
        self.Commu_Time = 0

        self.Loop_Blocking_Vec = []
        self.SCGRA_Size = SCGRA_Para.Min_SCGRA
        self.In_Buffer_Depth = SCGRA_Para.Min_In_Buffer_Depth
        self.Out_Buffer_Depth = SCGRA_Para.Min_Out_Buffer_Depth
        self.IO_Buffer_Width = SCGRA_Para.Min_IO_Buffer_Width
        self.Inst_Mem_Depth = SCGRA_Para.Min_Inst_Mem_Depth
        self.Inst_Mem_Width = SCGRA_Para.Min_Inst_Mem_Width
        self.Data_Mem_Depth = SCGRA_Para.Max_Data_Mem_Depth
        self.Data_Mem_Width = SCGRA_Para.Max_Data_Mem_Width

    def Is_Acceptable(self):
        if(self.In_Buffer_Depth > SCGRA_Para.Max_In_Buffer_Depth):
            print "Insuffient input buffer!"
            return 0
        elif(self.Out_Buffer_Depth > SCGRA_Para.Max_Out_Buffer_Depth):
            print "Insuffient output buffer!"
            return 0
        elif(self.Inst_Mem_Depth > SCGRA_Para.Max_Inst_Mem_Depth):
            print "Insuffient Inst Mem!"
            return 0
        elif(self.Data_Mem_Depth > SCGRA_Para.Max_Data_Mem_Depth):
            print "Data Mem overflow!"
            return 0
        elif(self.PBRAM_Overhead > SCGRA_Para.Total_PBRAM):
            print "Insuffient BRAM Resource!"
            return 0
        else:
            return 1

    def Get_Block_Num(self):
        Block_Num = 1
        for i in range(0, len(self.Loop_Blocking_Vec)):
            Block_Num = Block_Num * self.Loop_Vec[i]/self.Loop_Blocking_Vec[i]
        return Block_Num
   
    # Return the number of DFG per Block
    def Get_DFG_Num(self):
        DFG_Num = 1
        for i in range(0, len(self.Loop_Blocking_Vec)):
            DFG_Num = DFG_Num * self.Loop_Blocking_Vec[i]/self.Loop_Unrolling_Vec[i]

        return DFG_Num

    def Update_Inst_Mem(self):
        Unit_Depth = 1.0/(self.Inst_Mem_Width/18)
        Inst_Depth = 0
        while(self.DFG_Perf/1024.0 > Inst_Depth):
            Inst_Depth = Inst_Depth + Unit_Depth
        self.Inst_Mem_Depth = Inst_Depth

        return Inst_Depth

    def Update_PBRAM_Overhead(self):
        # IO Buffer
        In_Buffer = self.In_Buffer_Depth * self.IO_Buffer_Width/16.0
        Out_Buffer = self.Out_Buffer_Depth * self.IO_Buffer_Width/16.0
        if(In_Buffer < 1):
            In_Buffer = 1
        if(Out_Buffer < 1):
            Out_Buffer = 1
        IO_Buffer = int(In_Buffer+0.5) + int(Out_Buffer + 0.5)

        In_Addr_Buffer = self.In_Buffer_Depth
        Out_Addr_Buffer = self.Out_Buffer_Depth
        if(In_Addr_Buffer < 1):
            In_Addr_Buffer = 1
        if(Out_Addr_Buffer < 1):
            Out_Addr_Buffer = 1
        Addr_Buffer = int(In_Addr_Buffer + 0.5) + int(Out_Addr_Buffer + 0.5)

        In_Addr_Bitmap = int(self.Block_Perf/1024.0/18 + 0.5)
        if(In_Addr_Bitmap < 1):
            In_Addr_Bitmap = 1
        Out_Addr_Bitmap = In_Addr_Bitmap
        Addr_Bitmap = In_Addr_Bitmap + Out_Addr_Bitmap

        # Data Memory
        Single_Data_Mem = self.Data_Mem_Depth/1024.0 * self.Data_Mem_Width/16
        if(Single_Data_Mem < 1):
            Single_Data_Mem = 1
        Single_Data_Mem = 3 * int(Single_Data_Mem + 0.5)
        Data_Mem = self.SCGRA_Size * Single_Data_Mem

        # Inst. Memory
        Single_Inst_Mem = self.Inst_Mem_Depth * self.Inst_Mem_Width/18
        if(Single_Inst_Mem < 1):
            Single_Inst_Mem = 1
        Inst_Mem = self.SCGRA_Size * int(Single_Inst_Mem)
        self.PBRAM_Overhead = IO_Buffer + Addr_Buffer + Addr_Bitmap + Data_Mem + Inst_Mem

        return self.PBRAM_Overhead

    def Update_IO_Buffer(self, Block_In_Num, Block_Out_Num):
        self.In_Buffer_Depth = self.Get_Buffer_Depth(Block_In_Num, self.IO_Buffer_Width)
        self.Out_Buffer_Depth = self.Get_Buffer_Depth(Block_Out_Num, self.IO_Buffer_Width)

    def Get_Buffer_Depth(self, Data_Num, Buffer_Width):
        Unit_Depth = 1.0/int(Buffer_Width/16) # 1024*18bit is assumed as a basic BRAM Block
        Buffer_Depth = 0
        while((Data_Num/1024.0) > Buffer_Depth):
            Buffer_Depth = Buffer_Depth + Unit_Depth
        return Buffer_Depth

    def Update_Perf(self, Block_Level_Reuse_Num, Block_In_Num, Block_Out_Num):
        DFG_Switch_Time = 5
        Block_Compu_Time = self.Get_DFG_Num()*(self.DFG_Perf + DFG_Switch_Time) - DFG_Switch_Time
        self.Block_Perf = Block_Compu_Time

        Compu_Time = self.Get_Block_Num()*Block_Compu_Time
        Commu_Time = self.Get_Block_Num()*(self.Get_Trans_Time(Block_In_Num - Block_Level_Reuse_Num) + self.Get_Trans_Time(Block_Out_Num)) + self.Get_Trans_Time(Block_Level_Reuse_Num)
        self.Compu_Time = Compu_Time
        self.Commu_Time = Commu_Time
        Loop_Sim_Perf = Compu_Time + Commu_Time 
        self.Loop_Perf = Loop_Sim_Perf

    def Get_Trans_Time(self, Block_Size):
        GPIO_Lat_Per_Data = 79
        DMA16_Lat = 1468
        DMA32_Lat = 1472
        DMA64_Lat = 1585
        DMA128_Lat = 2013
        DMA256_Lat = 2883
        DMA_Lat_Per_Data = 12
        # Transmission using GPIO
        if(Block_Size <= 16):
            Block_Trans_Time = Block_Size * GPIO_Lat_Per_Data
        # Transmission using DMA, each section is assumed as a linear model(transmission-lat, block-size)
        elif(Block_Size <= 32):
            Block_Trans_Time = self.Get_Linear_Model_Lat([16, 32], [DMA16_Lat, DMA32_Lat], Block_Size)
        elif(Block_Size <= 64):
            Block_Trans_Time = self.Get_Linear_Model_Lat([32, 64], [DMA32_Lat, DMA64_Lat], Block_Size)
        elif(Block_Size <= 128):
            Block_Trans_Time = self.Get_Linear_Model_Lat([64, 128], [DMA64_Lat, DMA128_Lat], Block_Size)
        elif(Block_Size <= 256):
            Block_Trans_Time = self.Get_Linear_Model_Lat([128, 256], [DMA128_Lat, DMA256_Lat], Block_Size)
        else:
            Block_Trans_Time = Block_Size * DMA_Lat_Per_Data

        return int(Block_Trans_Time)

    def Get_Linear_Model_Lat(self, Block_Vec, Lat_Vec, Block_Size):
        Slope_Rate = (Lat_Vec[1]-Lat_Vec[0])*1.0/(Block_Vec[1]-Block_Vec[0])
        Intercept = Lat_Vec[0] - Slope_Rate * Block_Vec[0]
        Lat = Slope_Rate * Block_Size + Intercept
        return Lat

    def Get_Syllabus(self):
        Solution_Str = str(self.Loop_Blocking_Vec) + " "
        Solution_Str += str(self.Loop_Unrolling_Vec) + " "
        Solution_Str += str(self.SCGRA_Row) + " "
        Solution_Str += str(self.SCGRA_Col) + " "
        Solution_Str += str(self.In_Buffer_Depth) + "k "
        Solution_Str += str(self.Out_Buffer_Depth) + "k "
        Solution_Str += str(self.Inst_Mem_Depth) + "k "
        Solution_Str += str(self.Data_Mem_Depth) + " "
        Solution_Str += str(self.DFG_Perf) + " "
        Solution_Str += str(self.Commu_Time) + " "
        Solution_Str += str(self.Compu_Time) + " "
        Solution_Str += str(self.Loop_Perf) + " "
        Solution_Str += str(self.PBRAM_Overhead) + "\n"

        return Solution_Str

