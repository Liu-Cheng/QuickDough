#!/bin/sh

# 
# PlanAhead(TM)
# runme.sh: a PlanAhead-generated Runs Script for UNIX
# Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=C:/EDA/14.7/ISE_DS/EDK/bin/nt64;C:/EDA/14.7/ISE_DS/EDK/lib/nt64;C:/EDA/14.7/ISE_DS/ISE/bin/nt64;C:/EDA/14.7/ISE_DS/ISE/lib/nt64;C:/EDA/14.7/ISE_DS/common/bin/nt64;C:/EDA/14.7/ISE_DS/common/lib/nt64:C:/EDA/14.7/ISE_DS/PlanAhead/bin
else
  PATH=C:/EDA/14.7/ISE_DS/EDK/bin/nt64;C:/EDA/14.7/ISE_DS/EDK/lib/nt64;C:/EDA/14.7/ISE_DS/ISE/bin/nt64;C:/EDA/14.7/ISE_DS/ISE/lib/nt64;C:/EDA/14.7/ISE_DS/common/bin/nt64;C:/EDA/14.7/ISE_DS/common/lib/nt64:C:/EDA/14.7/ISE_DS/PlanAhead/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD=`dirname "$0"`
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep ngdbuild -intstyle ise -p xc7z020clg484-1 -dd _ngo -uc "base_sys_stub.ucf" -bm "base_sys_stub.bmm" "base_sys_stub.edf"
EAStep map -intstyle pa -w "base_sys_stub.ngd"
EAStep par -intstyle pa "base_sys_stub.ncd" -w "base_sys_stub_routed.ncd"
EAStep trce -intstyle ise -o "base_sys_stub.twr" -v 30 -l 30 "base_sys_stub_routed.ncd" "base_sys_stub.pcf"
EAStep xdl -secure -ncd2xdl -nopips "base_sys_stub_routed.ncd" "base_sys_stub_routed.xdl"
