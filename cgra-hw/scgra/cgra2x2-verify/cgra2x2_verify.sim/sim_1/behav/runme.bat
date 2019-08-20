@echo off


rem  PlanAhead(TM)
rem  runme.bat: a PlanAhead-generated ISim simulation Script
rem  Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.


set PATH=%XILINX%\lib\%PLATFORM%;%XILINX%\bin\%PLATFORM%;C:/EDA/14.7/ISE_DS/EDK/bin/nt64;C:/EDA/14.7/ISE_DS/EDK/lib/nt64;C:/EDA/14.7/ISE_DS/ISE/bin/nt64;C:/EDA/14.7/ISE_DS/ISE/lib/nt64;C:/EDA/14.7/ISE_DS/common/bin/nt64;C:/EDA/14.7/ISE_DS/common/lib/nt64;C:/EDA/14.7/ISE_DS/PlanAhead/bin;%PATH%

set XILINX_PLANAHEAD=C:/EDA/14.7/ISE_DS/PlanAhead

fuse -intstyle pa -incremental -L work -L unisims_ver -L unimacro_ver -L xilinxcorelib_ver -L secureip -o top_testbench.exe --prj D:/minibench/scgra/cgra2x2_verify/cgra2x2_verify.sim/sim_1/behav/top_testbench.prj -top work.top_testbench -top work.glbl
if errorlevel 1 (
   cmd /c exit /b %errorlevel%
)
