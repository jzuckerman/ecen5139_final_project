
N
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px
m
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px
M
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px
_
DRC finished with %s
79*	vivadotcl2(
0 Errors, 1 Warnings2default:defaultZ4-198h px
b
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px
S

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px
v
BMultithreading enabled for route_design using a maximum of %s CPUs97*route2
42default:defaultZ35-254h px
Q

Starting %s Task
103*constraints2
Route2default:defaultZ18-103h px
m

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px
@
.Phase 1 Build RT Design | Checksum: 1c30c5240
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:00:21 ; elapsed = 00:00:17 . Memory (MB): peak = 1614.508 ; gain = 95.6682default:defaulth px
s

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px
l

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px
?
-Phase 2.1 Create Timer | Checksum: 1c30c5240
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:00:21 ; elapsed = 00:00:17 . Memory (MB): peak = 1614.512 ; gain = 95.6722default:defaulth px
m

Phase %s%s
101*constraints2
2.2 2default:default2!
Update Timing2default:defaultZ18-101h px
@
.Phase 2.2 Update Timing | Checksum: 13dea98fa
*commonh px
�

%s
*constraints2q
]Time (s): cpu = 00:00:23 ; elapsed = 00:00:18 . Memory (MB): peak = 1648.562 ; gain = 129.7232default:defaulth px
�
Estimated Timing Summary %s
57*route2J
6| WNS=1.1    | TNS=0      | WHS=-0.18  | THS=-36.8  |
2default:defaultZ35-57h px
F
4Phase 2 Router Initialization | Checksum: 13dea98fa
*commonh px
�

%s
*constraints2q
]Time (s): cpu = 00:00:23 ; elapsed = 00:00:19 . Memory (MB): peak = 1648.562 ; gain = 129.7232default:defaulth px
m

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px
@
.Phase 3 Initial Routing | Checksum: 101d96812
*commonh px
�

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 1648.562 ; gain = 129.7232default:defaulth px
p

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px
r

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px
�
�The following overlapped %s exist in the design and there is low overall congestion. 
Resolution: Check for routing resource conflicts on the identified nets or significant localized congestion using the Route Congestion Metrics in the Device View. %s125*route2
node2default:default2�
�
1. INT_R_X27Y75/IMUX38
Overlapping nets: 2
	design_1_i/runQueue_0/inst/runQueue_U/cmdOut_V_preg1010_out
	design_1_i/runQueue_0/inst/runQueue_U/n_4_cmdOut_V[1]_INST_0_i_8
2default:defaultZ35-325h px
o

Phase %s%s
101*constraints2
4.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px
A
/Phase 4.1.1 Update Timing | Checksum: c4ca4893
*commonh px
�

%s
*constraints2q
]Time (s): cpu = 00:00:27 ; elapsed = 00:00:20 . Memory (MB): peak = 1648.562 ; gain = 129.7232default:defaulth px
�
Estimated Timing Summary %s
57*route2J
6| WNS=0.795  | TNS=0      | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57h px
E
3Phase 4.1 Global Iteration 0 | Checksum: 16787fc3f
*commonh px
�

%s
*constraints2q
]Time (s): cpu = 00:00:27 ; elapsed = 00:00:20 . Memory (MB): peak = 1648.562 ; gain = 129.7232default:defaulth px
C
1Phase 4 Rip-up And Reroute | Checksum: 16787fc3f
*commonh px
�

%s
*constraints2q
]Time (s): cpu = 00:00:27 ; elapsed = 00:00:20 . Memory (MB): peak = 1648.562 ; gain = 129.7232default:defaulth px
k

Phase %s%s
101*constraints2
5 2default:default2!
Delay CleanUp2default:defaultZ18-101h px
m

Phase %s%s
101*constraints2
5.1 2default:default2!
Update Timing2default:defaultZ18-101h px
@
.Phase 5.1 Update Timing | Checksum: 16787fc3f
*commonh px
�

%s
*constraints2q
]Time (s): cpu = 00:00:27 ; elapsed = 00:00:21 . Memory (MB): peak = 1648.562 ; gain = 129.7232default:defaulth px
�
Estimated Timing Summary %s
57*route2J
6| WNS=0.91   | TNS=0      | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57h px
>
,Phase 5 Delay CleanUp | Checksum: 16787fc3f
*commonh px
�

%s
*constraints2q
]Time (s): cpu = 00:00:27 ; elapsed = 00:00:21 . Memory (MB): peak = 1648.562 ; gain = 129.7232default:defaulth px
u

Phase %s%s
101*constraints2
6 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px
H
6Phase 6 Clock Skew Optimization | Checksum: 16787fc3f
*commonh px
�

%s
*constraints2q
]Time (s): cpu = 00:00:27 ; elapsed = 00:00:21 . Memory (MB): peak = 1648.562 ; gain = 129.7232default:defaulth px
k

Phase %s%s
101*constraints2
7 2default:default2!
Post Hold Fix2default:defaultZ18-101h px
m

Phase %s%s
101*constraints2
7.1 2default:default2!
Update Timing2default:defaultZ18-101h px
@
.Phase 7.1 Update Timing | Checksum: 16787fc3f
*commonh px
�

%s
*constraints2q
]Time (s): cpu = 00:00:27 ; elapsed = 00:00:21 . Memory (MB): peak = 1648.562 ; gain = 129.7232default:defaulth px
�
Estimated Timing Summary %s
57*route2J
6| WNS=0.91   | TNS=0      | WHS=0.03   | THS=0      |
2default:defaultZ35-57h px
>
,Phase 7 Post Hold Fix | Checksum: 16787fc3f
*commonh px
�

%s
*constraints2q
]Time (s): cpu = 00:00:27 ; elapsed = 00:00:21 . Memory (MB): peak = 1648.562 ; gain = 129.7232default:defaulth px
l

Phase %s%s
101*constraints2
8 2default:default2"
Route finalize2default:defaultZ18-101h px
?
-Phase 8 Route finalize | Checksum: 16787fc3f
*commonh px
�

%s
*constraints2q
]Time (s): cpu = 00:00:27 ; elapsed = 00:00:21 . Memory (MB): peak = 1648.562 ; gain = 129.7232default:defaulth px
s

Phase %s%s
101*constraints2
9 2default:default2)
Verifying routed nets2default:defaultZ18-101h px
F
4Phase 9 Verifying routed nets | Checksum: 16787fc3f
*commonh px
�

%s
*constraints2q
]Time (s): cpu = 00:00:27 ; elapsed = 00:00:21 . Memory (MB): peak = 1648.562 ; gain = 129.7232default:defaulth px
p

Phase %s%s
101*constraints2
10 2default:default2%
Depositing Routes2default:defaultZ18-101h px
C
1Phase 10 Depositing Routes | Checksum: 12f28d7e3
*commonh px
�

%s
*constraints2q
]Time (s): cpu = 00:00:27 ; elapsed = 00:00:21 . Memory (MB): peak = 1648.562 ; gain = 129.7232default:defaulth px
q

Phase %s%s
101*constraints2
11 2default:default2&
Post Router Timing2default:defaultZ18-101h px
�
Estimated Timing Summary %s
57*route2J
6| WNS=0.91   | TNS=0      | WHS=0.03   | THS=0      |
2default:defaultZ35-57h px
�
�The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px
D
2Phase 11 Post Router Timing | Checksum: 12f28d7e3
*commonh px
�

%s
*constraints2q
]Time (s): cpu = 00:00:27 ; elapsed = 00:00:21 . Memory (MB): peak = 1648.562 ; gain = 129.7232default:defaulth px
:
Router Completed Successfully
16*routeZ35-16h px
:
(Ending Route Task | Checksum: 12f28d7e3
*commonh px
�

%s
*constraints2q
]Time (s): cpu = 00:00:27 ; elapsed = 00:00:21 . Memory (MB): peak = 1648.562 ; gain = 129.7232default:defaulth px
�

%s
*constraints2q
]Time (s): cpu = 00:00:27 ; elapsed = 00:00:21 . Memory (MB): peak = 1648.562 ; gain = 129.7232default:defaulth px
W
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
482default:default2
22default:default2
52default:default2
02default:defaultZ4-41h px
[
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:00:282default:default2
00:00:222default:default2
1648.5622default:default2
129.7232default:defaultZ17-268h px
:
Writing XDEF routing.
211*designutilsZ20-211h px
G
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px
G
#Writing XDEF routing special nets.
210*designutilsZ20-210h px
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:00.422default:default2
00:00:00.422default:default2
1648.5662default:default2
0.0002default:defaultZ17-268h px
M
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px
�
#The results of DRC are in file %s.
168*coretcl2�
t/home/michael/ecen5139_final_project/CAV_Vivado_NoHdmi/CAV_Vivado_NoHdmi.runs/impl_1/design_1_wrapper_drc_routed.rptt/home/michael/ecen5139_final_project/CAV_Vivado_NoHdmi/CAV_Vivado_NoHdmi.runs/impl_1/design_1_wrapper_drc_routed.rpt2default:default8Z2-168h px
�
UpdateTimingParams:%s.
91*timing2P
< Speed grade: -1, Delay Type: min_max, Constraints type: SDC2default:defaultZ38-91h px
y
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
42default:defaultZ38-191h px
H
,Running Vector-less Activity Propagation...
51*powerZ33-51h px
M
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px


End Record