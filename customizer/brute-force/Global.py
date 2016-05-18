#!/usr/bin/env python

class Global_Def(object):
    Home = "/home/liucheng/gitrepo/"
    Benchmark_Dir = Home + "project/benchmark/"
    Scheduler_Dir = Home + "project/scheduler/"
    Customizer_Dir = Home + "project/customizer/brute-force/"
    Full_Search = True 

class MM_Para(object):
    Mat_Len = 100
    Max_Loop_Level = 3
    Max_Loop_Unrolling_Vec = [Mat_Len, Mat_Len, Mat_Len]

class Fir_Para(object):
    In_Len = 10000
    Coeff_Len = 50
    Max_Loop_Level = 2
    Max_Loop_Unrolling_Vec = [Coeff_Len, In_Len]

class Kmean_Para(object):
    Node_Num = 5000
    Centroid_Num = 4
    Node_Dim = 2
    Max_Loop_Level = 3
    Max_Loop_Unrolling_Vec = [Node_Dim, Centroid_Num, Node_Num]

# Note that Fig_Col should be divisible by 4
class Sobel_Para(object):
    Fig_Row = 128
    Fig_Col = 128
    Max_Loop_Level = 4
    Max_Loop_Unrolling_Vec = [3, 3, Fig_Col, Fig_Row]

class SCGRA_Para(object):
    Min_SCGRA_Row = 2
    Min_SCGRA_Col = 2
    Min_SCGRA = 4
    Max_SCGRA = 36 
    Min_In_Buffer = 1   # number of Ki/1024
    Max_In_Buffer = 64  # number of Ki/1024
    Min_Out_Buffer = 1  # number of Ki/1024
    Max_Out_Buffer = 64 # number of Ki/1024
    Min_Inst_Mem = 0.5  # number of Ki/1024
    Max_Inst_Mem = 8    # number of ki/1024
    Max_Data_Mem = 256  # number of data that each PE can accommodate
    Min_Data_Mem = 16   # number of data that each PE can accommodate
    Total_BRAM = 140   # number of 36kb primitive BRAM block
