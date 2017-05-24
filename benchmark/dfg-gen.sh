#!/bin/bash

###########################################################
# Initial directories
###########################################################

DFG_Dir=/home/liucheng/gitrepo/project/benchmark

###########################################################
# Read and check input options
###########################################################

if [ ! $# -ge 8 ]; then
    echo "The parameters must be provided in the following order!"
    echo "$0 [-n App_Name] [-u Unrolling] [-b Blocking]"
    exit 1
fi

if [ ! "$1" = "-n" ]; then
    echo "Unknown option $1"
    exit 1
fi
App_Name=$2

if [ ! "$3" = "-u" ]; then
    echo "Unknown option $3"
    exit 1
fi
u1=$4
u2=$5
u3=$6

if [ ! "$7" = "-b" ]; then
    echo "Unknown option $7"
    exit 1
fi
b1=$8

###########################################################
# DFG Generator Configuration
###########################################################

cd $DFG_Dir"/"$App_Name
if [ "$App_Name" = "mm" ]; then
    if [ "$u3" -eq "$u2" ] && [ "$u2" -eq "$u1" ] && [ "$u1" -gt 1 ]; then
        cd mm-fu/
        sed -i "/^\#define N/c\\#define N $u1" config.h

    elif [ "$u1" -gt 1 ] && [ "$u2" -gt 1 ] && [ "$u1" -eq "$u2" ] && [ "$u3" -gt 1 ]; then
        cd mm-L3/
        sed -i "/^\#define B/c\\#define B $b1" config.h
        sed -i "/^\#define M/c\\#define M $u3" config.h
        sed -i "/^\#define N/c\\#define N $u1" config.h

    elif [ "$u1" -gt 1 ] && [ "$u2" -gt 1 ] && [ "$u3" -eq 1 ]; then
        cd mm-L2/
        sed -i "/^\#define B/c\\#define B $b1" config.h
        sed -i "/^\#define M/c\\#define M $u2" config.h
        sed -i "/^\#define N/c\\#define N $u1" config.h

    elif [ "$u1" -ge 1 ] && [ "$u2" -eq 1 ] && [ "$u3" -eq 1 ]; then
        cd mm-L1/
        sed -i "/^\#define B/c\\#define B $b1" config.h
        sed -i "/^\#define M/c\\#define M $u1" config.h

    else
        echo "Unexpected mm unrolling factors"
        exit 1 

    fi

elif [ "$App_Name" = "fir" ]; then
        cd fir/
        sed -i "/^\#define B/c\\#define B $b1" config.h
        sed -i "/^\#define L/c\\#define L $u2" config.h
        sed -i "/^\#define N/c\\#define N $u1" config.h

elif [ "$App_Name" = "sobel" ]; then
        cd sobel/
        sed -i "/^\#define B/c\\#define B ($b1+2)" config.h
        sed -i "/^\#define R/c\\#define R ($u2+2)" config.h
        sed -i "/^\#define C/c\\#define C $u1" config.h

elif [ "$App_Name" = "kmean" ]; then
    cd kmean/
    sed -i "/^\#define B/c\\#define B $b1" config.h
    sed -i "/^\#define M/c\\#define M $u2" config.h
    sed -i "/^\#define N/c\\#define N $u1" config.h
fi

make clean > /dev/null 
make > /dev/null


###########################################################
# DFG Generation
###########################################################

echo "DFG generation starts..."
Start_Time=$(date +%s%N)
./dfg-gen > /dev/null 
End_Time=$(date +%s%N)
echo "DFG Genertion is done, time elapsed: $((($End_Time - $Start_Time)/1000000))""ms"


