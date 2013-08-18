#!/bin/bash

# Target function
fName="mm"

# IR without any optimization
clang $fName".cpp" -emit-llvm -S -o fun1.ll

# loop unroll
#opt fun1.ll -mem2reg -loops -indvars -loop-simplify -loop-rotate -lcssa -loop-unroll -unroll-threshold=8000000 -unroll-count=100 -o fun2.bc
opt fun1.ll -mem2reg -indvars -loop-rotate -loop-unroll -unroll-threshold=8000000 -unroll-count=100 -o fun2.bc
# Merge the basic blocks connected with unconditional branch
# Promote memory to register
#opt fun2.bc -simplifycfg -o fun3.bc
opt fun2.bc -simplifycfg -constprop -ipconstprop -mem2reg -o fun3.bc

# Turn the byte code to human read code
llvm-dis fun3.bc -o fun3.ll
llvm-dis fun2.bc -o fun2.ll

# Load DFGDump pass
opt -load $PASS/DFGDump.so -DFGDump <fun3.ll> /dev/null

# Transfor dot to ps
dot -Tps dfg.dot -o dfg.ps

# Rename the files
mv fun3.ll $fName".ll"
mv fun1.ll $fName"Original.ll"
mv fun2.ll $fName"Mid.ll"
mv dfg.txt $fName".txt"
mv dfg.s   $fName".s"
mv in.h    $fName"-in.h"
mv io.txt  $fName".txt"
mv dfg.dot $fName".dot"
mv dfg.ps $fName".ps"
ps2pdf $fName".ps" $fName".pdf"
rm fun2.bc
rm fun3.bc

