
[
 Attempting to get a license: %s
78*common2"
Implementation2default:defaultZ17-78
Q
Feature available: %s
81*common2"
Implementation2default:defaultZ17-81
á
+Loading parts and site information from %s
36*device2C
/C:/EDA/Xilinx/Vivado/2013.3/data/parts/arch.xml2default:defaultZ21-36
î
!Parsing RTL primitives file [%s]
14*netlist2Y
EC:/EDA/Xilinx/Vivado/2013.3/data/parts/xilinx/rtl/prims/rtl_prims.xml2default:defaultZ29-14
ù
*Finished parsing RTL primitives file [%s]
11*netlist2Y
EC:/EDA/Xilinx/Vivado/2013.3/data/parts/xilinx/rtl/prims/rtl_prims.xml2default:defaultZ29-11
5
Refreshing IP repositories
234*coregenZ19-234
;
No user repositories specified
1154*coregenZ19-1704
t
Loaded Vivado repository '%s'.
1332*coregen27
#C:/EDA/Xilinx/Vivado/2013.3/data/ip2default:defaultZ19-2313
k
Command: %s
53*	vivadotcl2C
/synth_design -top cgra2x2 -part xc7z020clg484-12default:defaultZ4-113
/

Starting synthesis...

3*	vivadotclZ4-3
≤
%IP '%s' is locked. Locked reason: %s
1260*coregen2 
TDP_Data_Mem2default:default2M
9Property 'IS_LOCKED' is set to true by the system or user2default:defaultZ19-2162
±
%IP '%s' is locked. Locked reason: %s
1260*coregen2
SP_Inst_Mem2default:default2M
9Property 'IS_LOCKED' is set to true by the system or user2default:defaultZ19-2162
ï
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347
Ö
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349
õ
%s*synth2ã
wStarting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:10 . Memory (MB): peak = 241.965 ; gain = 77.797
2default:default
”
synthesizing module '%s'638*oasys2
cgra2x22default:default2g
QD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/cgra2x2.v2default:default2
222default:default8@Z8-638
W
%s*synth2H
4	Parameter SYS_DWIDTH bound to: 32 - type: integer 
2default:default
T
%s*synth2E
1	Parameter BYTE_LEN bound to: 4 - type: integer 
2default:default
S
%s*synth2D
0	Parameter DWIDTH bound to: 32 - type: integer 
2default:default
‘
synthesizing module '%s'638*oasys2
Torus2x22default:default2h
RD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/Torus2x2.v2default:default2
32default:default8@Z8-638
S
%s*synth2D
0	Parameter DWIDTH bound to: 32 - type: integer 
2default:default
W
%s*synth2H
4	Parameter SYS_DWIDTH bound to: 32 - type: integer 
2default:default
Õ
synthesizing module '%s'638*oasys2
PEIO2default:default2d
ND:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/PEIO.v2default:default2
222default:default8@Z8-638
S
%s*synth2D
0	Parameter DWIDTH bound to: 32 - type: integer 
2default:default
R
%s*synth2C
/	Parameter AWIDTH bound to: 8 - type: integer 
2default:default
X
%s*synth2I
5	Parameter INST_DWIDTH bound to: 72 - type: integer 
2default:default
X
%s*synth2I
5	Parameter INST_AWIDTH bound to: 10 - type: integer 
2default:default
À
synthesizing module '%s'638*oasys2
ALU2default:default2c
MD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/ALU.v2default:default2
382default:default8@Z8-638
S
%s*synth2D
0	Parameter DWIDTH bound to: 32 - type: integer 
2default:default
—
synthesizing module '%s'638*oasys2
MulAdd2default:default2f
PD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/MulAdd.v2default:default2
232default:default8@Z8-638
T
%s*synth2E
1	Parameter DWIDTH1 bound to: 16 - type: integer 
2default:default
T
%s*synth2E
1	Parameter DWIDTH2 bound to: 16 - type: integer 
2default:default
S
%s*synth2D
0	Parameter DWIDTH bound to: 32 - type: integer 
2default:default
å
%done synthesizing module '%s' (%s#%s)256*oasys2
MulAdd2default:default2
12default:default2
12default:default2f
PD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/MulAdd.v2default:default2
232default:default8@Z8-256
Œ
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322default:default2
a2default:default2
162default:default2
MulAdd2default:default2c
MD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/ALU.v2default:default2
1252default:default8@Z8-689
Œ
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322default:default2
b2default:default2
162default:default2
MulAdd2default:default2c
MD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/ALU.v2default:default2
1262default:default8@Z8-689
Ü
%done synthesizing module '%s' (%s#%s)256*oasys2
ALU2default:default2
22default:default2
12default:default2c
MD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/ALU.v2default:default2
382default:default8@Z8-256
’
synthesizing module '%s'638*oasys2
Data_Mem2default:default2h
RD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/Data_Mem.v2default:default2
222default:default8@Z8-638
S
%s*synth2D
0	Parameter DWIDTH bound to: 32 - type: integer 
2default:default
R
%s*synth2C
/	Parameter AWIDTH bound to: 8 - type: integer 
2default:default
ˇ
synthesizing module '%s'638*oasys2 
TDP_Data_Mem2default:default2é
xD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.runs/synth_1/.Xil/Vivado-89572-Liuchengstudent/realtime/TDP_Data_Mem_stub.v2default:default2
62default:default8@Z8-638
∫
%done synthesizing module '%s' (%s#%s)256*oasys2 
TDP_Data_Mem2default:default2
32default:default2
12default:default2é
xD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.runs/synth_1/.Xil/Vivado-89572-Liuchengstudent/realtime/TDP_Data_Mem_stub.v2default:default2
62default:default8@Z8-256
“
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
Mem02default:default2 
TDP_Data_Mem2default:default2
112default:default2
102default:default2h
RD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/Data_Mem.v2default:default2
682default:default8@Z8-350
“
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
Mem12default:default2 
TDP_Data_Mem2default:default2
112default:default2
102default:default2h
RD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/Data_Mem.v2default:default2
812default:default8@Z8-350
“
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
Mem22default:default2 
TDP_Data_Mem2default:default2
112default:default2
102default:default2h
RD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/Data_Mem.v2default:default2
942default:default8@Z8-350
ê
%done synthesizing module '%s' (%s#%s)256*oasys2
Data_Mem2default:default2
42default:default2
12default:default2h
RD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/Data_Mem.v2default:default2
222default:default8@Z8-256
’
synthesizing module '%s'638*oasys2
Inst_Mem2default:default2h
RD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/Inst_Mem.v2default:default2
212default:default8@Z8-638
X
%s*synth2I
5	Parameter INST_DWIDTH bound to: 72 - type: integer 
2default:default
X
%s*synth2I
5	Parameter INST_AWIDTH bound to: 10 - type: integer 
2default:default
˝
synthesizing module '%s'638*oasys2
SP_Inst_Mem2default:default2ç
wD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.runs/synth_1/.Xil/Vivado-89572-Liuchengstudent/realtime/SP_Inst_Mem_stub.v2default:default2
62default:default8@Z8-638
∏
%done synthesizing module '%s' (%s#%s)256*oasys2
SP_Inst_Mem2default:default2
52default:default2
12default:default2ç
wD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.runs/synth_1/.Xil/Vivado-89572-Liuchengstudent/realtime/SP_Inst_Mem_stub.v2default:default2
62default:default8@Z8-256
”
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
Inst_Rom2default:default2
SP_Inst_Mem2default:default2
42default:default2
32default:default2h
RD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/Inst_Mem.v2default:default2
512default:default8@Z8-350
ê
%done synthesizing module '%s' (%s#%s)256*oasys2
Inst_Mem2default:default2
62default:default2
12default:default2h
RD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/Inst_Mem.v2default:default2
212default:default8@Z8-256
à
%done synthesizing module '%s' (%s#%s)256*oasys2
PEIO2default:default2
72default:default2
12default:default2d
ND:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/PEIO.v2default:default2
222default:default8@Z8-256
…
synthesizing module '%s'638*oasys2
PE2default:default2b
LD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/PE.v2default:default2
222default:default8@Z8-638
S
%s*synth2D
0	Parameter DWIDTH bound to: 32 - type: integer 
2default:default
R
%s*synth2C
/	Parameter AWIDTH bound to: 8 - type: integer 
2default:default
X
%s*synth2I
5	Parameter INST_DWIDTH bound to: 72 - type: integer 
2default:default
X
%s*synth2I
5	Parameter INST_AWIDTH bound to: 10 - type: integer 
2default:default
Ñ
%done synthesizing module '%s' (%s#%s)256*oasys2
PE2default:default2
82default:default2
12default:default2b
LD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/PE.v2default:default2
222default:default8@Z8-256
è
%done synthesizing module '%s' (%s#%s)256*oasys2
Torus2x22default:default2
92default:default2
12default:default2h
RD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/Torus2x2.v2default:default2
32default:default8@Z8-256
—
synthesizing module '%s'638*oasys2
BramIF2default:default2f
PD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/BramIF.v2default:default2
212default:default8@Z8-638
W
%s*synth2H
4	Parameter SYS_DWIDTH bound to: 32 - type: integer 
2default:default
T
%s*synth2E
1	Parameter BYTE_LEN bound to: 4 - type: integer 
2default:default
]
%s*synth2N
:	Parameter CTRL_WORDS_NUM bound to: 1024 - type: integer 
2default:default
\
%s*synth2M
9	Parameter DBUF_ADDR_WIDTH bound to: 16 - type: integer 
2default:default
ç
%done synthesizing module '%s' (%s#%s)256*oasys2
BramIF2default:default2
102default:default2
12default:default2f
PD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/BramIF.v2default:default2
212default:default8@Z8-256
è
%done synthesizing module '%s' (%s#%s)256*oasys2
cgra2x22default:default2
112default:default2
12default:default2g
QD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/cgra2x2.v2default:default2
222default:default8@Z8-256
ú
%s*synth2å
xFinished RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:11 . Memory (MB): peak = 274.148 ; gain = 109.980
2default:default
ö
%s*synth2ä
vStart RTL Optimization : Time (s): cpu = 00:00:08 ; elapsed = 00:00:11 . Memory (MB): peak = 274.148 ; gain = 109.980
2default:default
;
%s*synth2,

Report Check Netlist: 
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
ö
Loading clock regions from %s
13*device2c
OC:/EDA/Xilinx/Vivado/2013.3/data\parts/xilinx/zynq/zynq/xc7z020/ClockRegion.xml2default:defaultZ21-13
õ
Loading clock buffers from %s
11*device2d
PC:/EDA/Xilinx/Vivado/2013.3/data\parts/xilinx/zynq/zynq/xc7z020/ClockBuffers.xml2default:defaultZ21-11
õ
&Loading clock placement rules from %s
318*place2[
GC:/EDA/Xilinx/Vivado/2013.3/data/parts/xilinx/zynq/ClockPlacerRules.xml2default:defaultZ30-318
ô
)Loading package pin functions from %s...
17*device2W
CC:/EDA/Xilinx/Vivado/2013.3/data\parts/xilinx/zynq/PinFunctions.xml2default:defaultZ21-17
ó
Loading package from %s
16*device2f
RC:/EDA/Xilinx/Vivado/2013.3/data\parts/xilinx/zynq/zynq/xc7z020/clg484/Package.xml2default:defaultZ21-16
é
Loading io standards from %s
15*device2X
DC:/EDA/Xilinx/Vivado/2013.3/data\./parts/xilinx/zynq/IOStandards.xml2default:defaultZ21-15
_
 Attempting to get a license: %s
78*common2&
Internal_bitstream2default:defaultZ17-78
]
Failed to get a license: %s
295*common2&
Internal_bitstream2default:defaultZ17-301
5

Processing XDC Constraints
244*projectZ1-262
í
Parsing XDC File [%s]
179*designutils2\
HD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.runs/synth_1/dont_touch.xdc2default:defaultZ20-179
õ
Finished Parsing XDC File [%s]
178*designutils2\
HD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.runs/synth_1/dont_touch.xdc2default:defaultZ20-178
∫
ŸImplementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2\
HD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.runs/synth_1/dont_touch.xdc2default:default2g
SD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.runs/synth_1/.Xil/cgra2x2_propImpl.xdc2default:defaultZ1-236
ì
Parsing XDC File [%s]
179*designutils2]
ID:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.runs/synth_1/dont_buffer.xdc2default:defaultZ20-179
ú
Finished Parsing XDC File [%s]
178*designutils2]
ID:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.runs/synth_1/dont_buffer.xdc2default:defaultZ20-178
ª
ŸImplementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2]
ID:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.runs/synth_1/dont_buffer.xdc2default:default2g
SD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.runs/synth_1/.Xil/cgra2x2_propImpl.xdc2default:defaultZ1-236
?
&Completed Processing XDC Constraints

245*projectZ1-263
|
MSuccessfully populated the BRAM INIT strings from the following elf files: %s96*memdata2
 2default:defaultZ28-143
u
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111
ö
%s*synth2ä
vStart RTL Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:26 . Memory (MB): peak = 525.395 ; gain = 361.227
2default:default
µ
%s*synth2•
êFinished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:20 ; elapsed = 00:00:26 . Memory (MB): peak = 525.395 ; gain = 361.227
2default:default
ù
%s*synth2ç
yFinished RTL Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:26 . Memory (MB): peak = 525.395 ; gain = 361.227
2default:default
∏
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the inputs of the operator3413*oasys2
adder2default:default2f
PD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/MulAdd.v2default:default2
1132default:default8@Z8-3537
µ
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the inputs of the operator3413*oasys2
adder2default:default2c
MD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/ALU.v2default:default2
1782default:default8@Z8-3537
<
%s*synth2-

Report RTL Partitions: 
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
N
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
ã
%s*synth2|
hPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB8 0 RAMB16 0 RAMB18 60 RAMB36 30)
2default:default
±
%s*synth2°
åFinished Loading Part and Timing Information : Time (s): cpu = 00:00:31 ; elapsed = 00:00:38 . Memory (MB): peak = 584.871 ; gain = 420.703
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input     32 Bit       Adders := 4     
2default:default
Q
%s*synth2B
.	   3 Input     32 Bit       Adders := 8     
2default:default
Q
%s*synth2B
.	   2 Input     16 Bit       Adders := 1     
2default:default
Q
%s*synth2B
.	   2 Input     10 Bit       Adders := 4     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               72 Bit    Registers := 8     
2default:default
Q
%s*synth2B
.	               32 Bit    Registers := 126   
2default:default
Q
%s*synth2B
.	               16 Bit    Registers := 5     
2default:default
Q
%s*synth2B
.	               10 Bit    Registers := 4     
2default:default
Q
%s*synth2B
.	                4 Bit    Registers := 8     
2default:default
Q
%s*synth2B
.	                3 Bit    Registers := 5     
2default:default
Q
%s*synth2B
.	                2 Bit    Registers := 8     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 33    
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   4 Input     32 Bit        Muxes := 26    
2default:default
Q
%s*synth2B
.	   2 Input     32 Bit        Muxes := 34    
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 7     
2default:default
F
%s*synth27
#Hierarchical RTL Component report 
2default:default
3
%s*synth2$
Module cgra2x2 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
Module Inst_Mem 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input     10 Bit       Adders := 1     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               10 Bit    Registers := 1     
2default:default
/
%s*synth2 
Module ALU 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:default
Q
%s*synth2B
.	   3 Input     32 Bit       Adders := 2     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               32 Bit    Registers := 11    
2default:default
Q
%s*synth2B
.	                4 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	                3 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                2 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 5     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input     32 Bit        Muxes := 7     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:default
?
%s*synth20
Module Data_Mem__xdcDup__2 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
2
%s*synth2#
Module MulAdd 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               32 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 1     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:default
4
%s*synth2%
Module Torus2x2 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
?
%s*synth20
Module Data_Mem__xdcDup__1 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
2
%s*synth2#
Module BramIF 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input     16 Bit       Adders := 1     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               16 Bit    Registers := 5     
2default:default
Q
%s*synth2B
.	                3 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 9     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:default
9
%s*synth2*
Module PE__xdcDup__1 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               72 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	               32 Bit    Registers := 17    
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   4 Input     32 Bit        Muxes := 6     
2default:default
;
%s*synth2,
Module PEIO__xdcDup__1 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               72 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	               32 Bit    Registers := 20    
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   4 Input     32 Bit        Muxes := 7     
2default:default
4
%s*synth2%
Module Data_Mem 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
?
%s*synth20
Module Inst_Mem__xdcDup__3 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input     10 Bit       Adders := 1     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               10 Bit    Registers := 1     
2default:default
.
%s*synth2
Module PE 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               72 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	               32 Bit    Registers := 17    
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   4 Input     32 Bit        Muxes := 6     
2default:default
?
%s*synth20
Module Inst_Mem__xdcDup__2 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input     10 Bit       Adders := 1     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               10 Bit    Registers := 1     
2default:default
?
%s*synth20
Module Inst_Mem__xdcDup__1 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input     10 Bit       Adders := 1     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               10 Bit    Registers := 1     
2default:default
0
%s*synth2!
Module PEIO 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               72 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	               32 Bit    Registers := 20    
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   4 Input     32 Bit        Muxes := 7     
2default:default
?
%s*synth20
Module Data_Mem__xdcDup__3 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
ä
merging register '%s' into '%s'3619*oasys2$
subtract_reg_reg2default:default2$
subtract_reg_reg2default:default2f
PD:/minibench/scgra/scgra-lib/cgra2x2/cgra2x2.srcs/sources_1/imports/src/MulAdd.v2default:default2
832default:default8@Z8-4471
p
%s*synth2a
MDSP Report: Generating DSP p_reg, operation Mode is: (C+(A2*B2)'+CarryIn')'.
2default:default
_
%s*synth2P
<DSP Report: register b_reg0_reg is absorbed into DSP p_reg.
2default:default
_
%s*synth2P
<DSP Report: register a_reg0_reg is absorbed into DSP p_reg.
2default:default
Z
%s*synth2K
7DSP Report: register p_reg is absorbed into DSP p_reg.
2default:default
e
%s*synth2V
BDSP Report: register subtract_reg_reg is absorbed into DSP p_reg.
2default:default
c
%s*synth2T
@DSP Report: register mul_result_reg is absorbed into DSP p_reg.
2default:default
W
%s*synth2H
4DSP Report: operator p0 is absorbed into DSP p_reg.
2default:default
`
%s*synth2Q
=DSP Report: operator mul_result0 is absorbed into DSP p_reg.
2default:default
¥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[71] 2default:default2#
PEIO__xdcDup__12default:defaultZ8-3332
¥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[70] 2default:default2#
PEIO__xdcDup__12default:defaultZ8-3332
¥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[69] 2default:default2#
PEIO__xdcDup__12default:defaultZ8-3332
¥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[71] 2default:default2#
PEIO__xdcDup__12default:defaultZ8-3332
¥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[70] 2default:default2#
PEIO__xdcDup__12default:defaultZ8-3332
¥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[69] 2default:default2#
PEIO__xdcDup__12default:defaultZ8-3332
¥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[71] 2default:default2#
PEIO__xdcDup__12default:defaultZ8-3332
¥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[70] 2default:default2#
PEIO__xdcDup__12default:defaultZ8-3332
¥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[69] 2default:default2#
PEIO__xdcDup__12default:defaultZ8-3332
¥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[71] 2default:default2#
PEIO__xdcDup__12default:defaultZ8-3332
¥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[70] 2default:default2#
PEIO__xdcDup__12default:defaultZ8-3332
¥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[69] 2default:default2#
PEIO__xdcDup__12default:defaultZ8-3332
p
%s*synth2a
MDSP Report: Generating DSP p_reg, operation Mode is: (C+(A2*B2)'+CarryIn')'.
2default:default
_
%s*synth2P
<DSP Report: register b_reg0_reg is absorbed into DSP p_reg.
2default:default
_
%s*synth2P
<DSP Report: register a_reg0_reg is absorbed into DSP p_reg.
2default:default
Z
%s*synth2K
7DSP Report: register p_reg is absorbed into DSP p_reg.
2default:default
e
%s*synth2V
BDSP Report: register subtract_reg_reg is absorbed into DSP p_reg.
2default:default
c
%s*synth2T
@DSP Report: register mul_result_reg is absorbed into DSP p_reg.
2default:default
W
%s*synth2H
4DSP Report: operator p0 is absorbed into DSP p_reg.
2default:default
`
%s*synth2Q
=DSP Report: operator mul_result0 is absorbed into DSP p_reg.
2default:default
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[71] 2default:default2
PEIO2default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[70] 2default:default2
PEIO2default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[69] 2default:default2
PEIO2default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[71] 2default:default2
PEIO2default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[70] 2default:default2
PEIO2default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[69] 2default:default2
PEIO2default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[71] 2default:default2
PEIO2default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[70] 2default:default2
PEIO2default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[69] 2default:default2
PEIO2default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[71] 2default:default2
PEIO2default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[70] 2default:default2
PEIO2default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[69] 2default:default2
PEIO2default:defaultZ8-3332
p
%s*synth2a
MDSP Report: Generating DSP p_reg, operation Mode is: (C+(A2*B2)'+CarryIn')'.
2default:default
_
%s*synth2P
<DSP Report: register b_reg0_reg is absorbed into DSP p_reg.
2default:default
_
%s*synth2P
<DSP Report: register a_reg0_reg is absorbed into DSP p_reg.
2default:default
Z
%s*synth2K
7DSP Report: register p_reg is absorbed into DSP p_reg.
2default:default
e
%s*synth2V
BDSP Report: register subtract_reg_reg is absorbed into DSP p_reg.
2default:default
c
%s*synth2T
@DSP Report: register mul_result_reg is absorbed into DSP p_reg.
2default:default
W
%s*synth2H
4DSP Report: operator p0 is absorbed into DSP p_reg.
2default:default
`
%s*synth2Q
=DSP Report: operator mul_result0 is absorbed into DSP p_reg.
2default:default
≤
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[71] 2default:default2!
PE__xdcDup__12default:defaultZ8-3332
≤
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[70] 2default:default2!
PE__xdcDup__12default:defaultZ8-3332
≤
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[69] 2default:default2!
PE__xdcDup__12default:defaultZ8-3332
≤
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[68] 2default:default2!
PE__xdcDup__12default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
\Inst_Mem_Out_Reg0_reg[9] 2default:default2!
PE__xdcDup__12default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
\Inst_Mem_Out_Reg0_reg[8] 2default:default2!
PE__xdcDup__12default:defaultZ8-3332
≤
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[71] 2default:default2!
PE__xdcDup__12default:defaultZ8-3332
≤
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[70] 2default:default2!
PE__xdcDup__12default:defaultZ8-3332
≤
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[69] 2default:default2!
PE__xdcDup__12default:defaultZ8-3332
≤
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[68] 2default:default2!
PE__xdcDup__12default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
\Inst_Mem_Out_Reg1_reg[9] 2default:default2!
PE__xdcDup__12default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
\Inst_Mem_Out_Reg1_reg[8] 2default:default2!
PE__xdcDup__12default:defaultZ8-3332
≤
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[71] 2default:default2!
PE__xdcDup__12default:defaultZ8-3332
≤
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[70] 2default:default2!
PE__xdcDup__12default:defaultZ8-3332
≤
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[69] 2default:default2!
PE__xdcDup__12default:defaultZ8-3332
≤
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[68] 2default:default2!
PE__xdcDup__12default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
\Inst_Mem_Out_Reg1_reg[9] 2default:default2!
PE__xdcDup__12default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
\Inst_Mem_Out_Reg1_reg[8] 2default:default2!
PE__xdcDup__12default:defaultZ8-3332
≤
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[71] 2default:default2!
PE__xdcDup__12default:defaultZ8-3332
≤
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[70] 2default:default2!
PE__xdcDup__12default:defaultZ8-3332
≤
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[69] 2default:default2!
PE__xdcDup__12default:defaultZ8-3332
≤
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[68] 2default:default2!
PE__xdcDup__12default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
\Inst_Mem_Out_Reg0_reg[9] 2default:default2!
PE__xdcDup__12default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
\Inst_Mem_Out_Reg0_reg[8] 2default:default2!
PE__xdcDup__12default:defaultZ8-3332
p
%s*synth2a
MDSP Report: Generating DSP p_reg, operation Mode is: (C+(A2*B2)'+CarryIn')'.
2default:default
_
%s*synth2P
<DSP Report: register b_reg0_reg is absorbed into DSP p_reg.
2default:default
_
%s*synth2P
<DSP Report: register a_reg0_reg is absorbed into DSP p_reg.
2default:default
Z
%s*synth2K
7DSP Report: register p_reg is absorbed into DSP p_reg.
2default:default
e
%s*synth2V
BDSP Report: register subtract_reg_reg is absorbed into DSP p_reg.
2default:default
c
%s*synth2T
@DSP Report: register mul_result_reg is absorbed into DSP p_reg.
2default:default
W
%s*synth2H
4DSP Report: operator p0 is absorbed into DSP p_reg.
2default:default
`
%s*synth2Q
=DSP Report: operator mul_result0 is absorbed into DSP p_reg.
2default:default
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[71] 2default:default2
PE2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[70] 2default:default2
PE2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[69] 2default:default2
PE2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[68] 2default:default2
PE2default:defaultZ8-3332
¶
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
\Inst_Mem_Out_Reg0_reg[9] 2default:default2
PE2default:defaultZ8-3332
¶
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
\Inst_Mem_Out_Reg0_reg[8] 2default:default2
PE2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[71] 2default:default2
PE2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[70] 2default:default2
PE2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[69] 2default:default2
PE2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[68] 2default:default2
PE2default:defaultZ8-3332
¶
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
\Inst_Mem_Out_Reg1_reg[9] 2default:default2
PE2default:defaultZ8-3332
¶
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
\Inst_Mem_Out_Reg1_reg[8] 2default:default2
PE2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[71] 2default:default2
PE2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[70] 2default:default2
PE2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[69] 2default:default2
PE2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg1_reg[68] 2default:default2
PE2default:defaultZ8-3332
¶
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
\Inst_Mem_Out_Reg1_reg[9] 2default:default2
PE2default:defaultZ8-3332
¶
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
\Inst_Mem_Out_Reg1_reg[8] 2default:default2
PE2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[71] 2default:default2
PE2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[70] 2default:default2
PE2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[69] 2default:default2
PE2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Inst_Mem_Out_Reg0_reg[68] 2default:default2
PE2default:defaultZ8-3332
¶
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
\Inst_Mem_Out_Reg0_reg[9] 2default:default2
PE2default:defaultZ8-3332
¶
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
\Inst_Mem_Out_Reg0_reg[8] 2default:default2
PE2default:defaultZ8-3332
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port0_Addr[31]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port0_Addr[30]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port0_Addr[29]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port0_Addr[28]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port0_Addr[27]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port0_Addr[26]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port0_Addr[25]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port0_Addr[24]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port0_Addr[23]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port0_Addr[22]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port0_Addr[21]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port0_Addr[20]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port0_Addr[19]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port0_Addr[18]2default:default2
02default:defaultZ8-3917
õ
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2!
Port0_Addr[1]2default:default2
02default:defaultZ8-3917
õ
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2!
Port0_Addr[0]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port1_Addr[31]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port1_Addr[30]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port1_Addr[29]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port1_Addr[28]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port1_Addr[27]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port1_Addr[26]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port1_Addr[25]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port1_Addr[24]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port1_Addr[23]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port1_Addr[22]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port1_Addr[21]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port1_Addr[20]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port1_Addr[19]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port1_Addr[18]2default:default2
02default:defaultZ8-3917
õ
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2!
Port1_Addr[1]2default:default2
02default:defaultZ8-3917
õ
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2!
Port1_Addr[0]2default:default2
02default:defaultZ8-3917
ñ
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2
Port2_En2default:default2
12default:defaultZ8-3917
ö
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2 
Port2_Wen[3]2default:default2
02default:defaultZ8-3917
ö
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2 
Port2_Wen[2]2default:default2
02default:defaultZ8-3917
ö
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2 
Port2_Wen[1]2default:default2
02default:defaultZ8-3917
ö
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2 
Port2_Wen[0]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port2_Addr[31]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port2_Addr[30]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port2_Addr[29]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port2_Addr[28]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port2_Addr[27]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port2_Addr[26]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port2_Addr[25]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port2_Addr[24]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port2_Addr[23]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port2_Addr[22]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port2_Addr[21]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port2_Addr[20]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port2_Addr[19]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port2_Addr[18]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port2_Addr[17]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port2_Addr[16]2default:default2
02default:defaultZ8-3917
§
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2*
Port2_Data_To_Bram[31]2default:default2
02default:defaultZ8-3917
§
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2*
Port2_Data_To_Bram[30]2default:default2
02default:defaultZ8-3917
§
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2*
Port2_Data_To_Bram[29]2default:default2
02default:defaultZ8-3917
§
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2*
Port2_Data_To_Bram[28]2default:default2
02default:defaultZ8-3917
§
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2*
Port2_Data_To_Bram[27]2default:default2
02default:defaultZ8-3917
§
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2*
Port2_Data_To_Bram[26]2default:default2
02default:defaultZ8-3917
§
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2*
Port2_Data_To_Bram[25]2default:default2
02default:defaultZ8-3917
§
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2*
Port2_Data_To_Bram[24]2default:default2
02default:defaultZ8-3917
§
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2*
Port2_Data_To_Bram[23]2default:default2
02default:defaultZ8-3917
§
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2*
Port2_Data_To_Bram[22]2default:default2
02default:defaultZ8-3917
§
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2*
Port2_Data_To_Bram[21]2default:default2
02default:defaultZ8-3917
§
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2*
Port2_Data_To_Bram[20]2default:default2
02default:defaultZ8-3917
§
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2*
Port2_Data_To_Bram[19]2default:default2
02default:defaultZ8-3917
§
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2*
Port2_Data_To_Bram[18]2default:default2
02default:defaultZ8-3917
§
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2*
Port2_Data_To_Bram[17]2default:default2
02default:defaultZ8-3917
§
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2*
Port2_Data_To_Bram[16]2default:default2
02default:defaultZ8-3917
§
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2*
Port2_Data_To_Bram[15]2default:default2
02default:defaultZ8-3917
§
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2*
Port2_Data_To_Bram[14]2default:default2
02default:defaultZ8-3917
§
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2*
Port2_Data_To_Bram[13]2default:default2
02default:defaultZ8-3917
§
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2*
Port2_Data_To_Bram[12]2default:default2
02default:defaultZ8-3917
§
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2*
Port2_Data_To_Bram[11]2default:default2
02default:defaultZ8-3917
§
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2*
Port2_Data_To_Bram[10]2default:default2
02default:defaultZ8-3917
£
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2)
Port2_Data_To_Bram[9]2default:default2
02default:defaultZ8-3917
£
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2)
Port2_Data_To_Bram[8]2default:default2
02default:defaultZ8-3917
£
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2)
Port2_Data_To_Bram[7]2default:default2
02default:defaultZ8-3917
£
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2)
Port2_Data_To_Bram[6]2default:default2
02default:defaultZ8-3917
£
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2)
Port2_Data_To_Bram[5]2default:default2
02default:defaultZ8-3917
£
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2)
Port2_Data_To_Bram[4]2default:default2
02default:defaultZ8-3917
£
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2)
Port2_Data_To_Bram[3]2default:default2
02default:defaultZ8-3917
£
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2)
Port2_Data_To_Bram[2]2default:default2
02default:defaultZ8-3917
£
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2)
Port2_Data_To_Bram[1]2default:default2
02default:defaultZ8-3917
£
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2)
Port2_Data_To_Bram[0]2default:default2
02default:defaultZ8-3917
ñ
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2
Port3_En2default:default2
12default:defaultZ8-3917
ö
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2 
Port3_Wen[3]2default:default2
02default:defaultZ8-3917
ö
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2 
Port3_Wen[2]2default:default2
02default:defaultZ8-3917
ö
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2 
Port3_Wen[1]2default:default2
02default:defaultZ8-3917
ö
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2 
Port3_Wen[0]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port3_Addr[31]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port3_Addr[30]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port3_Addr[29]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port3_Addr[28]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port3_Addr[27]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port3_Addr[26]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port3_Addr[25]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port3_Addr[24]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port3_Addr[23]2default:default2
02default:defaultZ8-3917
ú
+design %s has port %s driven by constant %s3447*oasys2
cgra2x22default:default2"
Port3_Addr[22]2default:default2
02default:defaultZ8-3917
‘
ÅMessage '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-39172default:default2
1002default:defaultZ17-14
Ö
!design %s has unconnected port %s3331*oasys2
cgra2x22default:default2,
Port2_Data_From_Bram[23]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2
cgra2x22default:default2,
Port2_Data_From_Bram[22]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2
cgra2x22default:default2,
Port2_Data_From_Bram[21]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2
cgra2x22default:default2,
Port2_Data_From_Bram[20]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2
cgra2x22default:default2,
Port2_Data_From_Bram[19]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2
cgra2x22default:default2,
Port2_Data_From_Bram[18]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2
cgra2x22default:default2,
Port2_Data_From_Bram[17]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2
cgra2x22default:default2,
Port2_Data_From_Bram[16]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2
cgra2x22default:default2,
Port3_Data_From_Bram[26]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2
cgra2x22default:default2,
Port3_Data_From_Bram[25]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2
cgra2x22default:default2,
Port3_Data_From_Bram[24]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2
cgra2x22default:default2,
Port3_Data_From_Bram[23]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2
cgra2x22default:default2,
Port3_Data_From_Bram[22]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2
cgra2x22default:default2,
Port3_Data_From_Bram[21]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2
cgra2x22default:default2,
Port3_Data_From_Bram[20]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2
cgra2x22default:default2,
Port3_Data_From_Bram[19]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2
cgra2x22default:default2,
Port3_Data_From_Bram[18]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2
cgra2x22default:default2,
Port3_Data_From_Bram[17]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2
cgra2x22default:default2,
Port3_Data_From_Bram[16]2default:defaultZ8-3331
©
%s*synth2ô
ÑFinished Cross Boundary Optimization : Time (s): cpu = 00:00:34 ; elapsed = 00:00:41 . Memory (MB): peak = 588.000 ; gain = 423.832
2default:default
¢
%s*synth2í
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
)
%s*synth2

DSP:
2default:default
∂
%s*synth2¶
ë+------------+------------------------+--------------+------------------+--------+--------+--------+--------+------+------+------+------+------+
2default:default
∑
%s*synth2ß
í|Module Name | OP MODE                | Neg Edge Clk | A Size (Signed?) | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | PREG | 
2default:default
∂
%s*synth2¶
ë+------------+------------------------+--------------+------------------+--------+--------+--------+--------+------+------+------+------+------+
2default:default
∑
%s*synth2ß
í|MulAdd      | (C+(A2*B2)'+CarryIn')' | No           | 16 (Y)           | 16 (Y) | 32 (N) | 25 (N) | 32 (N) | 1    | 1    | 0    | 1    | 1    | 
2default:default
∑
%s*synth2ß
í|MulAdd      | (C+(A2*B2)'+CarryIn')' | No           | 16 (Y)           | 16 (Y) | 32 (N) | 25 (N) | 32 (N) | 1    | 1    | 0    | 1    | 1    | 
2default:default
∑
%s*synth2ß
í|MulAdd      | (C+(A2*B2)'+CarryIn')' | No           | 16 (Y)           | 16 (Y) | 32 (N) | 25 (N) | 32 (N) | 1    | 1    | 0    | 1    | 1    | 
2default:default
∑
%s*synth2ß
í|MulAdd      | (C+(A2*B2)'+CarryIn')' | No           | 16 (Y)           | 16 (Y) | 32 (N) | 25 (N) | 32 (N) | 1    | 1    | 0    | 1    | 1    | 
2default:default
∑
%s*synth2ß
í+------------+------------------------+--------------+------------------+--------+--------+--------+--------+------+------+------+------+------+

2default:default
¶
%s*synth2ñ
Å---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\BramIF/CGRA_Cnt_reg[0] 2default:default2
cgra2x22default:defaultZ8-3332
Æ
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\BramIF/CGRA_Cnt_Reg3_reg[0] 2default:default2
cgra2x22default:defaultZ8-3332
Æ
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\BramIF/CGRA_Cnt_Reg2_reg[0] 2default:default2
cgra2x22default:defaultZ8-3332
Æ
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\BramIF/CGRA_Cnt_Reg1_reg[0] 2default:default2
cgra2x22default:defaultZ8-3332
Æ
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\BramIF/CGRA_Cnt_Reg0_reg[0] 2default:default2
cgra2x22default:defaultZ8-3332
O
%s*synth2@
,info: *** Multidriven port on net douta[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[71]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[70]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[69]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[68]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[67]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[66]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[65]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[64]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[63]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[62]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[61]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[60]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[59]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[58]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[57]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[56]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[55]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[54]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[53]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[52]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[51]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[50]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[49]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[48]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[47]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[46]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[45]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[44]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[43]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[42]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[41]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[40]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[39]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[38]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[37]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[36]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[35]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[34]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[33]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[32]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[71]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[70]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[69]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[68]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[67]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[66]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[65]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[64]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[63]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[62]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[61]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[60]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[59]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[58]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[57]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[56]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[55]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[54]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[53]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[52]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[51]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[50]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[49]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[48]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[47]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[46]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[45]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[44]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[43]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[42]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[41]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[40]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[39]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[38]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[37]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[36]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[35]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[34]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[33]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[32]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[71]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[70]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[69]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[68]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[67]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[66]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[65]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[64]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[63]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[62]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[61]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[60]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[59]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[58]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[57]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[56]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[55]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[54]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[53]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[52]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[51]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[50]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[49]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[48]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[47]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[46]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[45]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[44]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[43]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[42]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[41]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[40]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[39]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[38]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[37]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[36]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[35]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[34]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[33]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[32]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net doutb[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net doutb[0]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[71]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[70]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[69]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[68]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[67]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[66]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[65]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[64]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[63]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[62]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[61]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[60]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[59]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[58]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[57]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[56]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[55]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[54]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[53]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[52]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[51]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[50]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[49]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[48]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[47]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[46]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[45]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[44]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[43]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[42]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[41]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[40]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[39]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[38]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[37]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[36]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[35]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[34]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[33]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[32]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[31]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[30]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[29]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[28]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[27]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[26]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[25]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[24]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[23]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[22]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[21]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[20]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[19]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[18]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[17]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[16]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[15]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[14]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[13]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[12]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[11]
2default:default
O
%s*synth2@
,info: *** Multidriven port on net douta[10]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[9]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[8]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[7]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[6]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[5]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[4]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[3]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[2]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[1]
2default:default
N
%s*synth2?
+info: *** Multidriven port on net douta[0]
2default:default
û
%s*synth2é
zFinished Area Optimization : Time (s): cpu = 00:00:41 ; elapsed = 00:00:47 . Memory (MB): peak = 628.387 ; gain = 464.219
2default:default
≠
%s*synth2ù
àFinished Applying XDC Timing Constraints : Time (s): cpu = 00:00:45 ; elapsed = 00:00:52 . Memory (MB): peak = 646.410 ; gain = 482.242
2default:default
†
%s*synth2ê
|Finished Timing Optimization : Time (s): cpu = 00:00:46 ; elapsed = 00:00:53 . Memory (MB): peak = 652.273 ; gain = 488.105
2default:default
ü
%s*synth2è
{Finished Technology Mapping : Time (s): cpu = 00:00:50 ; elapsed = 00:00:57 . Memory (MB): peak = 703.867 ; gain = 539.699
2default:default
è
*BlackBox module %s has unconnected pin %s
3599*oasys21
\Torus2x2/PE00/Data_Mem/Mem0 2default:default2
enb2default:defaultZ8-4442
è
*BlackBox module %s has unconnected pin %s
3599*oasys21
\Torus2x2/PE00/Data_Mem/Mem1 2default:default2
enb2default:defaultZ8-4442
è
*BlackBox module %s has unconnected pin %s
3599*oasys21
\Torus2x2/PE00/Data_Mem/Mem2 2default:default2
enb2default:defaultZ8-4442
ì
*BlackBox module %s has unconnected pin %s
3599*oasys25
!\Torus2x2/PE00/Inst_Mem/Inst_Rom 2default:default2
ena2default:defaultZ8-4442
è
*BlackBox module %s has unconnected pin %s
3599*oasys21
\Torus2x2/PE01/Data_Mem/Mem0 2default:default2
enb2default:defaultZ8-4442
è
*BlackBox module %s has unconnected pin %s
3599*oasys21
\Torus2x2/PE01/Data_Mem/Mem1 2default:default2
enb2default:defaultZ8-4442
è
*BlackBox module %s has unconnected pin %s
3599*oasys21
\Torus2x2/PE01/Data_Mem/Mem2 2default:default2
enb2default:defaultZ8-4442
ì
*BlackBox module %s has unconnected pin %s
3599*oasys25
!\Torus2x2/PE01/Inst_Mem/Inst_Rom 2default:default2
ena2default:defaultZ8-4442
è
*BlackBox module %s has unconnected pin %s
3599*oasys21
\Torus2x2/PE10/Data_Mem/Mem0 2default:default2
enb2default:defaultZ8-4442
è
*BlackBox module %s has unconnected pin %s
3599*oasys21
\Torus2x2/PE10/Data_Mem/Mem1 2default:default2
enb2default:defaultZ8-4442
è
*BlackBox module %s has unconnected pin %s
3599*oasys21
\Torus2x2/PE10/Data_Mem/Mem2 2default:default2
enb2default:defaultZ8-4442
ì
*BlackBox module %s has unconnected pin %s
3599*oasys25
!\Torus2x2/PE10/Inst_Mem/Inst_Rom 2default:default2
ena2default:defaultZ8-4442
è
*BlackBox module %s has unconnected pin %s
3599*oasys21
\Torus2x2/PE11/Data_Mem/Mem0 2default:default2
enb2default:defaultZ8-4442
è
*BlackBox module %s has unconnected pin %s
3599*oasys21
\Torus2x2/PE11/Data_Mem/Mem1 2default:default2
enb2default:defaultZ8-4442
è
*BlackBox module %s has unconnected pin %s
3599*oasys21
\Torus2x2/PE11/Data_Mem/Mem2 2default:default2
enb2default:defaultZ8-4442
ì
*BlackBox module %s has unconnected pin %s
3599*oasys25
!\Torus2x2/PE11/Inst_Mem/Inst_Rom 2default:default2
ena2default:defaultZ8-4442
ô
%s*synth2â
uFinished IO Insertion : Time (s): cpu = 00:00:51 ; elapsed = 00:00:58 . Memory (MB): peak = 703.867 ; gain = 539.699
2default:default
;
%s*synth2,

Report Check Netlist: 
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
™
%s*synth2ö
ÖFinished Renaming Generated Instances : Time (s): cpu = 00:00:51 ; elapsed = 00:00:58 . Memory (MB): peak = 703.867 ; gain = 539.699
2default:default
ß
%s*synth2ó
ÇFinished Rebuilding User Hierarchy : Time (s): cpu = 00:00:51 ; elapsed = 00:00:59 . Memory (MB): peak = 703.867 ; gain = 539.699
2default:default
¢
%s*synth2í
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
;
%s*synth2,

Static Shift Register:
2default:default
Ø
%s*synth2ü
ä+------------+------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:default
∞
%s*synth2†
ã|Module Name | RTL Name                     | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
2default:default
Ø
%s*synth2ü
ä+------------+------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:default
∞
%s*synth2†
ã|cgra2x2     | BramIF/CGRA_Cnt_Reg3_reg[15] | 4      | 15    | YES          | NO                 | NO                | 15     | 0       | 
2default:default
∞
%s*synth2†
ã+------------+------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

2default:default
¶
%s*synth2ñ
Å---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
8
%s*synth2)

Report BlackBoxes: 
2default:default
F
%s*synth27
#+------+--------------+----------+
2default:default
F
%s*synth27
#|      |BlackBox name |Instances |
2default:default
F
%s*synth27
#+------+--------------+----------+
2default:default
F
%s*synth27
#|1     |SP_Inst_Mem   |         4|
2default:default
F
%s*synth27
#|2     |TDP_Data_Mem  |        12|
2default:default
F
%s*synth27
#+------+--------------+----------+
2default:default
8
%s*synth2)

Report Cell Usage: 
2default:default
E
%s*synth26
"+------+-----------------+------+
2default:default
E
%s*synth26
"|      |Cell             |Count |
2default:default
E
%s*synth26
"+------+-----------------+------+
2default:default
E
%s*synth26
"|1     |SP_Inst_Mem      |     1|
2default:default
E
%s*synth26
"|2     |SP_Inst_Mem__4   |     1|
2default:default
E
%s*synth26
"|3     |SP_Inst_Mem__5   |     1|
2default:default
E
%s*synth26
"|4     |SP_Inst_Mem__6   |     1|
2default:default
E
%s*synth26
"|5     |TDP_Data_Mem     |     1|
2default:default
E
%s*synth26
"|6     |TDP_Data_Mem__10 |     1|
2default:default
E
%s*synth26
"|7     |TDP_Data_Mem__11 |     1|
2default:default
E
%s*synth26
"|8     |TDP_Data_Mem__12 |     1|
2default:default
E
%s*synth26
"|9     |TDP_Data_Mem__13 |     1|
2default:default
E
%s*synth26
"|10    |TDP_Data_Mem__14 |     1|
2default:default
E
%s*synth26
"|11    |TDP_Data_Mem__4  |     1|
2default:default
E
%s*synth26
"|12    |TDP_Data_Mem__5  |     1|
2default:default
E
%s*synth26
"|13    |TDP_Data_Mem__6  |     1|
2default:default
E
%s*synth26
"|14    |TDP_Data_Mem__7  |     1|
2default:default
E
%s*synth26
"|15    |TDP_Data_Mem__8  |     1|
2default:default
E
%s*synth26
"|16    |TDP_Data_Mem__9  |     1|
2default:default
E
%s*synth26
"|17    |BUFG             |     1|
2default:default
E
%s*synth26
"|18    |CARRY4           |   164|
2default:default
E
%s*synth26
"|19    |DSP48E1_1        |     4|
2default:default
E
%s*synth26
"|20    |LUT1             |   148|
2default:default
E
%s*synth26
"|21    |LUT2             |   419|
2default:default
E
%s*synth26
"|22    |LUT3             |   588|
2default:default
E
%s*synth26
"|23    |LUT4             |   646|
2default:default
E
%s*synth26
"|24    |LUT5             |   403|
2default:default
E
%s*synth26
"|25    |LUT6             |  1281|
2default:default
E
%s*synth26
"|26    |SRL16E           |    15|
2default:default
E
%s*synth26
"|27    |FDCE             |  4473|
2default:default
E
%s*synth26
"|28    |FDRE             |   275|
2default:default
E
%s*synth26
"|29    |IBUF             |   112|
2default:default
E
%s*synth26
"|30    |OBUF             |   281|
2default:default
E
%s*synth26
"+------+-----------------+------+
2default:default
<
%s*synth2-

Report Instance Areas: 
2default:default
X
%s*synth2I
5+------+---------------+--------------------+------+
2default:default
X
%s*synth2I
5|      |Instance       |Module              |Cells |
2default:default
X
%s*synth2I
5+------+---------------+--------------------+------+
2default:default
X
%s*synth2I
5|1     |top            |                    | 19178|
2default:default
X
%s*synth2I
5|2     |  BramIF       |BramIF              |   131|
2default:default
X
%s*synth2I
5|3     |  Torus2x2     |Torus2x2            | 18649|
2default:default
X
%s*synth2I
5|4     |    PE11       |PE                  |  4579|
2default:default
X
%s*synth2I
5|5     |      Inst_Mem |Inst_Mem            |   309|
2default:default
X
%s*synth2I
5|6     |      ALU      |ALU_4               |  1098|
2default:default
X
%s*synth2I
5|7     |        MulAdd |MulAdd_5            |    98|
2default:default
X
%s*synth2I
5|8     |      Data_Mem |Data_Mem            |  2304|
2default:default
X
%s*synth2I
5|9     |    PE00       |PEIO__xdcDup__1     |  4746|
2default:default
X
%s*synth2I
5|10    |      Inst_Mem |Inst_Mem__xdcDup__1 |   309|
2default:default
X
%s*synth2I
5|11    |      ALU      |ALU_2               |  1099|
2default:default
X
%s*synth2I
5|12    |        MulAdd |MulAdd_3            |    99|
2default:default
X
%s*synth2I
5|13    |      Data_Mem |Data_Mem__xdcDup__1 |  2304|
2default:default
X
%s*synth2I
5|14    |    PE01       |PEIO                |  4745|
2default:default
X
%s*synth2I
5|15    |      Inst_Mem |Inst_Mem__xdcDup__2 |   309|
2default:default
X
%s*synth2I
5|16    |      ALU      |ALU_0               |  1098|
2default:default
X
%s*synth2I
5|17    |        MulAdd |MulAdd_1            |    98|
2default:default
X
%s*synth2I
5|18    |      Data_Mem |Data_Mem__xdcDup__2 |  2304|
2default:default
X
%s*synth2I
5|19    |    PE10       |PE__xdcDup__1       |  4579|
2default:default
X
%s*synth2I
5|20    |      Inst_Mem |Inst_Mem__xdcDup__3 |   309|
2default:default
X
%s*synth2I
5|21    |      ALU      |ALU                 |  1098|
2default:default
X
%s*synth2I
5|22    |        MulAdd |MulAdd              |    98|
2default:default
X
%s*synth2I
5|23    |      Data_Mem |Data_Mem__xdcDup__3 |  2304|
2default:default
X
%s*synth2I
5+------+---------------+--------------------+------+
2default:default
¶
%s*synth2ñ
ÅFinished Writing Synthesis Report : Time (s): cpu = 00:00:52 ; elapsed = 00:00:59 . Memory (MB): peak = 703.867 ; gain = 539.699
2default:default
l
%s*synth2]
ISynthesis finished with 0 errors, 16 critical warnings and 234 warnings.
2default:default
£
%s*synth2ì
Synthesis Optimization Complete : Time (s): cpu = 00:00:52 ; elapsed = 00:00:59 . Memory (MB): peak = 703.867 ; gain = 539.699
2default:default
^
-Analyzing %s Unisim elements for replacement
17*netlist2
1162default:defaultZ29-17
a
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28
^
1Inserted %s IBUFs to IO ports without IO buffers.100*opt2
02default:defaultZ31-140
^
1Inserted %s OBUFs to IO ports without IO buffers.101*opt2
02default:defaultZ31-141
C
Pushed %s inverter(s).
98*opt2
02default:defaultZ31-138
|
MSuccessfully populated the BRAM INIT strings from the following elf files: %s96*memdata2
 2default:defaultZ28-143
u
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111
L
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83
¿
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
422default:default2
2032default:default2
162default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42
¸
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:01:042default:default2
00:01:112default:default2
948.7972default:default2
748.4182default:defaultZ17-268
<
%Done setting XDC timing constraints.
35*timingZ38-35

sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.150 . Memory (MB): peak = 948.797 ; gain = 0.000
*common
w
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Jul 21 19:21:42 20142default:defaultZ17-206