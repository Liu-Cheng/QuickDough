#!/usr/bin/env python

import sys
import pdb
from Global import *

class Solution():

    def __init__(self):
        self.Loop_Vec = []
        self.Loop_Unrolling_Vec = []
        self.SCGRA_Row = SCGRA_Para.Min_SCGRA_Row
        self.SCGRA_Col = SCGRA_Para.Min_SCGRA_Col

        self.DFG_Lat = 0
        self.Loop_Lat = 0
        self.Compu_Lat = 0
        self.Commu_Lat = 0
        self.BRAM_Cost = 0
        self.FF_Cost = 0
        self.LUT_Cost = 0
        self.Power = 0
        self.Energy = 0
        self.EDP = 0

        self.Loop_Blocking_Vec = []
        self.SCGRA_Size = SCGRA_Para.Min_SCGRA
        self.In_Buffer = SCGRA_Para.Min_In_Buffer
        self.Out_Buffer = SCGRA_Para.Min_Out_Buffer
        self.In_Addr_Buffer = 2 * SCGRA_Para.Min_In_Buffer
        self.Out_Addr_Buffer = 2 * SCGRA_Para.Min_Out_Buffer
        self.Inst_Mem = SCGRA_Para.Min_Inst_Mem
        self.Data_Mem = SCGRA_Para.Max_Data_Mem



    def Update_HW_Cost(self):
        self.Update_BRAM_Cost()
        self.Update_LUT_Cost()
        self.Update_FF_Cost()

    def Update_LUT_Cost(self):
        LUT_Slope = 726.44
        LUT_Intercept = 2676.4
        LUT_Cost = LUT_Slope * self.SCGRA_Row * self.SCGRA_Col + LUT_Intercept
        self.LUT_Cost = LUT_Cost

        return LUT_Cost

    def Update_FF_Cost(self):
        FF_Slope = 1329
        FF_Intercept = 2802
        FF_Cost = FF_Slope * self.SCGRA_Row * self.SCGRA_Col + FF_Intercept
        self.FF_Cost = FF_Cost

        return FF_Cost


    # Update overhead of RAM36B 
    def Update_BRAM_Cost(self):
        tmp = (self.In_Buffer + self.Out_Buffer) 
        tmp = tmp + (self.In_Addr_Buffer + self.Out_Addr_Buffer)/2.0
        tmp = tmp + (self.Inst_Mem * 2 + 3) * self.SCGRA_Size 
        self.BRAM_Cost = tmp

        return self.BRAM_Cost

    ''' The DMA transmission data is obtained from Zedboard using DMA through HP port. 
    The clock runs at 333.333MHz. Since the function returns ns in the end, clock cycle is 
    calculated as well. '''
    def Get_DMA_Lat(self, TF_Size):

        Clock_Cycle = 3
        Avg_Lat = 0
        if(TF_Size <= 8):
            Avg_Lat = 21
        elif(TF_Size > 8 and TF_Size <= 16):
            Avg_Lat = self.Get_Linear_Avg([8, 21], [16, 12.08], TF_Size)
        elif(TF_Size > 16 and TF_Size <= 32):
            Avg_Lat = self.Get_Linear_Avg([16, 12.08], [32, 7.15], TF_Size)
        elif(TF_Size > 32 and TF_Size <= 64):
            Avg_Lat = self.Get_Linear_Avg([32, 7.15], [64, 5.06], TF_Size)
        elif(TF_Size > 64 and TF_Size <= 128):
            Avg_Lat = self.Get_Linear_Avg([64, 5.06], [128, 4.44], TF_Size)
        elif(TF_Size > 128 and TF_Size <= 256):
            Avg_Lat = self.Get_Linear_Avg([128, 4.44], [256, 3.76], TF_Size)
        elif(TF_Size > 256 and TF_Size <= 512):
            Avg_Lat = self.Get_Linear_Avg([256, 3.76], [512, 3.36], TF_Size)
        else:
            Avg_Lat = 3.36
            
        return Clock_Cycle * Avg_Lat

    def Get_Linear_Avg(self, vec0, vec1, x):
        a1 = vec0[0]
        b1 = vec0[1]
        a2 = vec1[0]
        b2 = vec1[1]
        slope = (b2 - b1) / (a2 - a1)
        return (b1 + slope * (x - a1))

   
    def Update_Lat(self, DFG_Num, Block_Num, Loop_Transfer_Vec):
        CGRA_Clock_Cycle = 4
        Block_Compu_Lat = DFG_Num * (self.DFG_Lat + 5) * 4
        self.Compu_Lat = Block_Num * Block_Compu_Lat * CGRA_Clock_Cycle

        Loop_Commu_Lat = 0
        for x in Loop_Transfer_Vec:
            Loop_Commu_Lat += x * self.Get_DMA_Lat(x)

        self.Commu_Lat = Loop_Commu_Lat 
        self.Loop_Lat = self.Commu_Lat + self.Compu_Lat
        return self.Loop_Lat


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

    def Update_EDP(self):
        Delay = self.Loop_Lat/1000000000.0
        self.Energy = self.Power * Delay * 1000000
        self.EDP = self.Power * Delay * self.Loop_Lat
        return self.EDP


    def Update_Power(self):
        Base_Power_Slope = 0.0166
        Base_Power_Intercept = 0.1566
        CGRA_Size = self.SCGRA_Row * self.SCGRA_Col
        Addr_Buffer_Power = 0.00225 #per RAMB18
        IO_Buffer_Power = 0.00405 #per RAM32
        Inst_Mem_Power = 0.00425 #per RAM32
        Data_Mem_Power = 0.0077 #per 3x RAM32

        Base_Power = Base_Power_Slope * CGRA_Size + Base_Power_Intercept
        Power = Base_Power + (self.In_Addr_Buffer + self.Out_Addr_Buffer)*Addr_Buffer_Power
        Power += (self.In_Buffer + self.Out_Buffer)*IO_Buffer_Power
        Power += self.Inst_Mem * 2 * CGRA_Size * Inst_Mem_Power
        Power += CGRA_Size * Data_Mem_Power

        self.Power = Power

        return Power



    def Get_Linear_Model_Lat(self, Block_Vec, Lat_Vec, Block_Size):
        Slope_Rate = (Lat_Vec[1]-Lat_Vec[0])*1.0/(Block_Vec[1]-Block_Vec[0])
        Intercept = Lat_Vec[0] - Slope_Rate * Block_Vec[0]
        Lat = Slope_Rate * Block_Size + Intercept
        return Lat

    def Get_Syllabus(self):
        Solution_Str = "Loop_Blocking_Vec" + " "
        Solution_Str += str(self.Loop_Blocking_Vec) + " " + "\n"

        Solution_Str += "Loop_Unrolling_Vec" + " "
        Solution_Str += str(self.Loop_Unrolling_Vec) + " " + "\n"

        Solution_Str += "SCGRA_Row" + " "
        Solution_Str += str(self.SCGRA_Row) + " " + "\n"

        Solution_Str += "SCGRA_Col" + " "
        Solution_Str += str(self.SCGRA_Col) + " " + "\n"

        Solution_Str += "In_Buffer" + " "
        Solution_Str += str(self.In_Buffer) + "k " + "\n"

        Solution_Str += "In_Addr_Buffer" + " "
        Solution_Str += str(self.In_Addr_Buffer) + "k " + "\n"

        Solution_Str += "Out_Buffer" + " "
        Solution_Str += str(self.Out_Buffer) + "k " + "\n"

        Solution_Str += "Out_Addr_Buffer" + " "
        Solution_Str += str(self.Out_Addr_Buffer) + "k " + "\n"

        Solution_Str += "Inst_Mem" + " "
        Solution_Str += str(self.Inst_Mem) + "k " + "\n"

        Solution_Str += "Data_Mem" + " "
        Solution_Str += str(self.Data_Mem) + " " + "\n"

        Solution_Str += "DFG_Lat" + " "
        Solution_Str += str(self.DFG_Lat) + " " + "\n"

        Solution_Str += "Commu_Lat" + " "
        Solution_Str += str(self.Commu_Lat) + " " + "\n"

        Solution_Str += "Compu_Lat" + " "
        Solution_Str += str(self.Compu_Lat) + " " + "\n"

        Solution_Str += "Loop_Lat" + " "
        Solution_Str += str(self.Loop_Lat) + " " + "\n"

        Solution_Str += "BRAM_Cost" + " "
        Solution_Str += str(self.BRAM_Cost) + " " + "\n"

        Solution_Str += "LUT_Cost" + " "
        Solution_Str += str(self.LUT_Cost) + " " + "\n"

        Solution_Str += "FF_Cost" + " "
        Solution_Str += str(self.FF_Cost) + " " + "\n"

        Solution_Str += "Power" + " "
        Solution_Str += str(self.Power) + " " + "\n"

        Solution_Str += "Energy" + " "
        Solution_Str += str(self.Energy) + " " + "\n"

        Solution_Str += "EDP" + " "
        Solution_Str += str(self.EDP) + " " + "\n"

        return Solution_Str

