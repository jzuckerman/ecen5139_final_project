
�
&Problem parsing board_part file - %s%s4*board2_
K/Xilinx/Vivado/2014.2/data/boards/board_parts/zynq/zc706/1.0/board_part.xml2default:default2Z
F, The board part 'xc7z045ffg900-2' is either not supported or invalid.2default:defaultZ49-4h px
�
&Problem parsing board_part file - %s%s4*board2_
K/Xilinx/Vivado/2014.2/data/boards/board_parts/zynq/zc706/0.9/board_part.xml2default:default2Z
F, The board part 'xc7z045ffg900-2' is either not supported or invalid.2default:defaultZ49-4h px
�
&Problem parsing board_part file - %s%s4*board2b
N/Xilinx/Vivado/2014.2/data/boards/board_parts/kintex7/kc705/1.0/board_part.xml2default:default2[
G, The board part 'xc7k325tffg900-2' is either not supported or invalid.2default:defaultZ49-4h px
�
&Problem parsing board_part file - %s%s4*board2b
N/Xilinx/Vivado/2014.2/data/boards/board_parts/kintex7/kc705/0.9/board_part.xml2default:default2[
G, The board part 'xc7k325tffg900-2' is either not supported or invalid.2default:defaultZ49-4h px
�
TSetting library on Verilog or System Verilog file is ignored by Synthesis tool. [%s]175*filemgmt2�
t/home/michael/ecen5139_final_project/project_1/project_1.srcs/sources_1/imports/CAV_Midterm_PriorityQueue/gpqueue.sv2default:defaultZ20-1763h px
~
]hardware handoff file cannot be generated as there is no block diagram instance in the design132*	vivadotclZ4-279h px
p
Command: %s
53*	vivadotcl2B
.synth_design -top pqueue -part xc7z020clg484-12default:defaultZ4-113h px
5

Starting synthesis...

3*	vivadotclZ4-3h px
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347h px
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349h px
�
Pparameter declaration becomes local in %s with formal parameter declaration list2507*oasys2
pqueue2default:default2�
t/home/michael/ecen5139_final_project/project_1/project_1.srcs/sources_1/imports/CAV_Midterm_PriorityQueue/gpqueue.sv2default:default2
1172default:default8@Z8-2507h px
�
%s*synth2�
xStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 796.723 ; gain = 160.000
2default:defaulth px
�
synthesizing module '%s'638*oasys2
pqueue2default:default2�
t/home/michael/ecen5139_final_project/project_1/project_1.srcs/sources_1/imports/CAV_Midterm_PriorityQueue/gpqueue.sv2default:default2
1132default:default8@Z8-638h px
V
%s*synth2A
-	Parameter N bound to: 3000 - type: integer 
2default:defaulth px
V
%s*synth2A
-	Parameter MSB bound to: 11 - type: integer 
2default:defaulth px
V
%s*synth2A
-	Parameter NOOP bound to: 0 - type: integer 
2default:defaulth px
V
%s*synth2A
-	Parameter PUSH bound to: 1 - type: integer 
2default:defaulth px
U
%s*synth2@
,	Parameter POP bound to: 2 - type: integer 
2default:defaulth px
T
%s*synth2?
+	Parameter C bound to: 11 - type: integer 
2default:defaulth px
�
found unpartitioned %s node3665*oasys2
	construct2default:default2�
t/home/michael/ecen5139_final_project/project_1/project_1.srcs/sources_1/imports/CAV_Midterm_PriorityQueue/gpqueue.sv2default:default2
1302default:default8@Z8-4512h px
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pqueue2default:default2
12default:default2
12default:default2�
t/home/michael/ecen5139_final_project/project_1/project_1.srcs/sources_1/imports/CAV_Midterm_PriorityQueue/gpqueue.sv2default:default2
1132default:default8@Z8-256h px
�
+design %s has port %s driven by constant %s3447*oasys2
pqueue2default:default2
full2default:default2
02default:defaultZ8-3917h px
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:01:08 ; elapsed = 00:01:16 . Memory (MB): peak = 1194.434 ; gain = 557.711
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
@
%s*synth2+
Start RTL Optimization
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
A
%s*synth2,

Report Check Netlist: 
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
r
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
r
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
�
Loading clock regions from %s
13*device2]
I/Xilinx/Vivado/2014.2/data/parts/xilinx/zynq/zynq/xc7z020/ClockRegion.xml2default:defaultZ21-13h px
�
Loading clock buffers from %s
11*device2^
J/Xilinx/Vivado/2014.2/data/parts/xilinx/zynq/zynq/xc7z020/ClockBuffers.xml2default:defaultZ21-11h px
�
&Loading clock placement rules from %s
318*place2U
A/Xilinx/Vivado/2014.2/data/parts/xilinx/zynq/ClockPlacerRules.xml2default:defaultZ30-318h px
�
)Loading package pin functions from %s...
17*device2Q
=/Xilinx/Vivado/2014.2/data/parts/xilinx/zynq/PinFunctions.xml2default:defaultZ21-17h px
�
Loading package from %s
16*device2`
L/Xilinx/Vivado/2014.2/data/parts/xilinx/zynq/zynq/xc7z020/clg484/Package.xml2default:defaultZ21-16h px
�
Loading io standards from %s
15*device2R
>/Xilinx/Vivado/2014.2/data/./parts/xilinx/zynq/IOStandards.xml2default:defaultZ21-15h px
;

Processing XDC Constraints
244*projectZ1-262h px
�
Parsing XDC File [%s]
179*designutils2x
d/home/michael/ecen5139_final_project/project_1/project_1.srcs/constrs_1/imports/verilog/runQueue.xdc2default:defaultZ20-179h px
�
!port, pin or net '%s' not found.
663*	planAhead2
ap_clk2default:default2z
d/home/michael/ecen5139_final_project/project_1/project_1.srcs/constrs_1/imports/verilog/runQueue.xdc2default:default2
12default:default8@Z12-663h px
�
=No valid object(s) found for %s constraint with option '%s'.
1387*	planAhead2 
create_clock2default:default2#
-objects ap_clk2default:default2z
d/home/michael/ecen5139_final_project/project_1/project_1.srcs/constrs_1/imports/verilog/runQueue.xdc2default:default2
12default:default8@Z12-1387h px
�
Finished Parsing XDC File [%s]
178*designutils2x
d/home/michael/ecen5139_final_project/project_1/project_1.srcs/constrs_1/imports/verilog/runQueue.xdc2default:defaultZ20-178h px
E
&Completed Processing XDC Constraints

245*projectZ1-263h px
{
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
@
%s*synth2+
Start RTL Optimization
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
S
%s*synth2>
*Start Loading Part and Timing Information
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
G
%s*synth22
Loading part: xc7z020clg484-1
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:01:28 ; elapsed = 00:01:39 . Memory (MB): peak = 1434.160 ; gain = 797.438
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
W
%s*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:01:28 ; elapsed = 00:01:39 . Memory (MB): peak = 1434.160 ; gain = 797.438
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
zFinished RTL Optimization : Time (s): cpu = 00:01:28 ; elapsed = 00:01:39 . Memory (MB): peak = 1434.160 ; gain = 797.438
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the inputs of the operator3413*oasys2
adder2default:default2�
t/home/michael/ecen5139_final_project/project_1/project_1.srcs/sources_1/imports/CAV_Midterm_PriorityQueue/gpqueue.sv2default:default2
1302default:default8@Z8-3537h px
B
%s*synth2-

Report RTL Partitions: 
2default:defaulth px
Y
%s*synth2D
0+------+--------------+------------+----------+
2default:defaulth px
Y
%s*synth2D
0|      |RTL Partition |Replication |Instances |
2default:defaulth px
Y
%s*synth2D
0+------+--------------+------------+----------+
2default:defaulth px
Y
%s*synth2D
0|1     |pqueue__GB0   |           1|     33693|
2default:defaulth px
Y
%s*synth2D
0|2     |pqueue__GB1   |           1|     23066|
2default:defaulth px
Y
%s*synth2D
0|3     |pqueue__GB2   |           1|     35170|
2default:defaulth px
Y
%s*synth2D
0|4     |pqueue__GB3   |           1|     35381|
2default:defaulth px
Y
%s*synth2D
0|5     |pqueue__GB4   |           1|      9418|
2default:defaulth px
Y
%s*synth2D
0|6     |pqueue__GB5   |           1|     18146|
2default:defaulth px
Y
%s*synth2D
0|7     |pqueue__GB6   |           1|     31724|
2default:defaulth px
Y
%s*synth2D
0|8     |pqueue__GB7   |           1|      9227|
2default:defaulth px
Y
%s*synth2D
0|9     |pqueue__GB8   |           1|      9850|
2default:defaulth px
Y
%s*synth2D
0|10    |pqueue__GB9   |           1|     30307|
2default:defaulth px
Y
%s*synth2D
0|11    |pqueue__GB10  |           1|      9860|
2default:defaulth px
Y
%s*synth2D
0|12    |pqueue__GB11  |           1|     11250|
2default:defaulth px
Y
%s*synth2D
0|13    |pqueue__GB12  |           1|     28763|
2default:defaulth px
Y
%s*synth2D
0|14    |pqueue__GB13  |           1|     18367|
2default:defaulth px
Y
%s*synth2D
0|15    |pqueue__GB14  |           1|     16813|
2default:defaulth px
Y
%s*synth2D
0+------+--------------+------------+----------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
I
%s*synth24
 Start RTL Component Statistics 
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               12 Bit    Registers := 3000  
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     12 Bit        Muxes := 5996  
2default:defaulth px
W
%s*synth2B
.	   3 Input     12 Bit        Muxes := 3000  
2default:defaulth px
W
%s*synth2B
.	   3 Input      1 Bit        Muxes := 2     
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
L
%s*synth27
#Finished RTL Component Statistics 
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
V
%s*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
L
%s*synth27
#Hierarchical RTL Component report 
2default:defaulth px
8
%s*synth2#
Module pqueue 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               12 Bit    Registers := 3000  
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     12 Bit        Muxes := 5996  
2default:defaulth px
W
%s*synth2B
.	   3 Input     12 Bit        Muxes := 3000  
2default:defaulth px
W
%s*synth2B
.	   3 Input      1 Bit        Muxes := 2     
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
X
%s*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
E
%s*synth20
Start Part Resource Summary
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
H
%s*synth23
Finished Part Resource Summary
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Workers Ready, Starting Parallel Section  : Time (s): cpu = 00:03:44 ; elapsed = 00:04:10 . Memory (MB): peak = 1434.160 ; gain = 797.438
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
K
%s*synth26
"Start Cross Boundary Optimization
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Cross Boundary Optimization : Time (s): cpu = 00:04:14 ; elapsed = 00:04:46 . Memory (MB): peak = 1434.160 ; gain = 797.438
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
{Finished Parallel Reinfer  : Time (s): cpu = 00:04:14 ; elapsed = 00:04:46 . Memory (MB): peak = 1434.160 ; gain = 797.438
2default:defaulth px
�
%s*synth2�
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
A
%s*synth2,
Start Area Optimization
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
|Finished Area Optimization : Time (s): cpu = 00:06:27 ; elapsed = 00:07:06 . Memory (MB): peak = 1997.211 ; gain = 1360.488
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
}Finished Parallel Area Opt  : Time (s): cpu = 00:06:27 ; elapsed = 00:07:06 . Memory (MB): peak = 1997.211 ; gain = 1360.488
2default:defaulth px
�
%s*synth2�
|Finished Parallel Section  : Time (s): cpu = 00:06:27 ; elapsed = 00:07:06 . Memory (MB): peak = 1997.211 ; gain = 1360.488
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
C
%s*synth2.
Start Timing Optimization
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
O
%s*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:06:36 ; elapsed = 00:07:15 . Memory (MB): peak = 1997.215 ; gain = 1360.492
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
~Finished Timing Optimization : Time (s): cpu = 00:06:36 ; elapsed = 00:07:15 . Memory (MB): peak = 1997.215 ; gain = 1360.492
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
B
%s*synth2-
Start Technology Mapping
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
}Finished Technology Mapping : Time (s): cpu = 00:07:25 ; elapsed = 00:08:44 . Memory (MB): peak = 2357.297 ; gain = 1720.574
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
<
%s*synth2'
Start IO Insertion
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
N
%s*synth29
%Start Flattening Before IO Insertion
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
Q
%s*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
E
%s*synth20
Start Final Netlist Cleanup
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
H
%s*synth23
Finished Final Netlist Cleanup
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
wFinished IO Insertion : Time (s): cpu = 00:09:02 ; elapsed = 00:10:26 . Memory (MB): peak = 2357.297 ; gain = 1720.574
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
A
%s*synth2,

Report Check Netlist: 
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
r
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
r
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
L
%s*synth27
#Start Renaming Generated Instances
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:09:03 ; elapsed = 00:10:28 . Memory (MB): peak = 2357.297 ; gain = 1720.574
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
I
%s*synth24
 Start Rebuilding User Hierarchy
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:09:05 ; elapsed = 00:10:30 . Memory (MB): peak = 2357.297 ; gain = 1720.574
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
H
%s*synth23
Start Writing Synthesis Report
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
>
%s*synth2)

Report BlackBoxes: 
2default:defaulth px
G
%s*synth22
+-+--------------+----------+
2default:defaulth px
G
%s*synth22
| |BlackBox name |Instances |
2default:defaulth px
G
%s*synth22
+-+--------------+----------+
2default:defaulth px
G
%s*synth22
+-+--------------+----------+
2default:defaulth px
>
%s*synth2)

Report Cell Usage: 
2default:defaulth px
B
%s*synth2-
+------+--------+------+
2default:defaulth px
B
%s*synth2-
|      |Cell    |Count |
2default:defaulth px
B
%s*synth2-
+------+--------+------+
2default:defaulth px
B
%s*synth2-
|1     |BUFG    |     1|
2default:defaulth px
B
%s*synth2-
|2     |CARRY4  |  3000|
2default:defaulth px
B
%s*synth2-
|3     |LUT1    |     1|
2default:defaulth px
B
%s*synth2-
|4     |LUT2    |    22|
2default:defaulth px
B
%s*synth2-
|5     |LUT3    |     1|
2default:defaulth px
B
%s*synth2-
|6     |LUT4    | 51427|
2default:defaulth px
B
%s*synth2-
|7     |LUT5    |  2476|
2default:defaulth px
B
%s*synth2-
|8     |LUT6    | 36019|
2default:defaulth px
B
%s*synth2-
|9     |MUXCY_L |    11|
2default:defaulth px
B
%s*synth2-
|10    |XORCY   |    12|
2default:defaulth px
B
%s*synth2-
|11    |FDRE    | 36037|
2default:defaulth px
B
%s*synth2-
|12    |IBUF    |    15|
2default:defaulth px
B
%s*synth2-
|13    |OBUF    |    14|
2default:defaulth px
B
%s*synth2-
+------+--------+------+
2default:defaulth px
B
%s*synth2-

Report Instance Areas: 
2default:defaulth px
L
%s*synth27
#+------+---------+-------+-------+
2default:defaulth px
L
%s*synth27
#|      |Instance |Module |Cells  |
2default:defaulth px
L
%s*synth27
#+------+---------+-------+-------+
2default:defaulth px
L
%s*synth27
#|1     |top      |       | 129036|
2default:defaulth px
L
%s*synth27
#+------+---------+-------+-------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 01:09:22 ; elapsed = 01:11:37 . Memory (MB): peak = 2357.297 ; gain = 1720.574
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
o
%s*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth px
�
%s*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 01:09:22 ; elapsed = 01:11:37 . Memory (MB): peak = 2357.297 ; gain = 1720.574
2default:defaulth px
e
-Analyzing %s Unisim elements for replacement
17*netlist2
30382default:defaultZ29-17h px
g
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px
�
�Netlist '%s' is not ideal for floorplanning, since the cellview '%s' contains a large number of primitives.  Please consider enabling hierarchy in synthesis if you want to do floorplanning.
310*netlist2
pqueue2default:default2
pqueue2default:defaultZ29-101h px
d
1Inserted %s IBUFs to IO ports without IO buffers.100*opt2
02default:defaultZ31-140h px
d
1Inserted %s OBUFs to IO ports without IO buffers.101*opt2
02default:defaultZ31-141h px
r
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px
�
!Unisim Transformation Summary:
%s111*project2f
R  A total of 3 instances were transformed.
  (MUXCY,XORCY) => CARRY4: 3 instances
2default:defaultZ1-111h px
R
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
132default:default2
42default:default2
12default:default2
02default:defaultZ4-41h px
[
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
01:09:462default:default2
01:12:012default:default2
2357.3012default:default2
1618.4492default:defaultZ17-268h px
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:092default:default2
00:00:092default:default2
2357.3012default:default2
0.0002default:defaultZ17-268h px
�
sreport_utilization: Time (s): cpu = 00:00:00.99 ; elapsed = 00:00:01 . Memory (MB): peak = 2357.301 ; gain = 0.000
*commonh px
}
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Dec  7 23:29:56 20152default:defaultZ17-206h px