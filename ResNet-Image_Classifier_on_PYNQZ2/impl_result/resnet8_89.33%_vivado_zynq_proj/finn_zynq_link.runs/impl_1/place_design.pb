
k
Command: %s
53*	vivadotcl2:
&place_design -directive ExtraTimingOpt2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
u
/The placer was invoked with the '%s' directive.14*	placeflow2"
ExtraTimingOpt2default:defaultZ46-5h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
82default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
3996.2342default:default2
0.0002default:default2
78722default:default2
386282default:defaultZ17-722h px? 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: a1eefd45
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.02 ; elapsed = 00:00:00.04 . Memory (MB): peak = 3996.234 ; gain = 0.000 ; free physical = 7872 ; free virtual = 386282default:defaulth px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:00.012default:default2
3996.2342default:default2
0.0002default:default2
78722default:default2
386282default:defaultZ17-722h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: f94d4088
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 3996.234 ; gain = 0.000 ; free physical = 7920 ; free virtual = 386732default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
?
?High register utilization is forcing place_design to place up to %s registers per slice which may impact placement success and/or routing congestion.622*place2
82default:defaultZ30-770h px? 
O
:Phase 1.3 Build Placer Netlist Model | Checksum: c3d99abc
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:18 ; elapsed = 00:00:09 . Memory (MB): peak = 4083.180 ; gain = 86.945 ; free physical = 7848 ; free virtual = 386012default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
L
7Phase 1.4 Constrain Clocks/Macros | Checksum: c3d99abc
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:18 ; elapsed = 00:00:09 . Memory (MB): peak = 4083.180 ; gain = 86.945 ; free physical = 7848 ; free virtual = 386012default:defaulth px? 
H
3Phase 1 Placer Initialization | Checksum: c3d99abc
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:19 ; elapsed = 00:00:09 . Memory (MB): peak = 4083.180 ; gain = 86.945 ; free physical = 7846 ; free virtual = 385992default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px? 
B
-Phase 2.1 Floorplanning | Checksum: 7faa0f6b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:26 ; elapsed = 00:00:11 . Memory (MB): peak = 4147.898 ; gain = 151.664 ; free physical = 7760 ; free virtual = 385132default:defaulth px? 
?

Phase %s%s
101*constraints2
2.2 2default:default25
!Update Timing before SLR Path Opt2default:defaultZ18-101h px? 
V
APhase 2.2 Update Timing before SLR Path Opt | Checksum: ef973615
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:31 ; elapsed = 00:00:12 . Memory (MB): peak = 4147.898 ; gain = 151.664 ; free physical = 7762 ; free virtual = 385152default:defaulth px? 
?

Phase %s%s
101*constraints2
2.3 2default:default24
 Post-Processing in Floorplanning2default:defaultZ18-101h px? 
U
@Phase 2.3 Post-Processing in Floorplanning | Checksum: ef973615
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:31 ; elapsed = 00:00:12 . Memory (MB): peak = 4147.898 ; gain = 151.664 ; free physical = 7762 ; free virtual = 385152default:defaulth px? 
x

Phase %s%s
101*constraints2
2.4 2default:default2)
Global Placement Core2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
2.4.1 2default:default20
Physical Synthesis In Placer2default:defaultZ18-101h px? 
?
FFound %s LUTNM shape to break, %s LUT instances to create LUTNM shape
553*physynth2
452default:default2
16652default:defaultZ32-1035h px? 
?
YBreak lutnm for timing: one critical %s, two critical %s, total %s, new lutff created %s
561*physynth2
412default:default2
42default:default2
452default:default2
02default:defaultZ32-1044h px? 
?
^End %s Pass. Optimized %s %s. Breaked %s %s, combined %s existing %s and moved %s existing %s
576*physynth2
12default:default2
7772default:default2 
nets or LUTs2default:default2
452default:default2
LUTs2default:default2
7322default:default2
LUTs2default:default2
02default:default2
LUT2default:defaultZ32-1138h px? 
K
)No high fanout nets found in the design.
65*physynthZ32-65h px? 
?
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
i
DNo candidate cells found for Shift Register to Pipeline optimization564*physynthZ32-1123h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
h
DNo candidate cells for SRL register optimization found in the design349*physynthZ32-677h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
i
ENo candidate cells for BRAM register optimization found in the design297*physynthZ32-526h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
j
FNo candidate cells for URAM register optimization found in the design
437*physynthZ32-846h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
o
KNo candidate nets found for dynamic/static region interface net replication521*physynthZ32-949h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
4175.8982default:default2
0.0002default:default2
77102default:default2
384682default:defaultZ17-722h px? 
B
-
Summary of Physical Synthesis Optimizations
*commonh px? 
B
-============================================
*commonh px? 


*commonh px? 


*commonh px? 
?
?-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Optimization                                     |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  LUT Combining                                    |           45  |            732  |                   777  |           0  |           1  |  00:00:01  |
|  Retime                                           |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Very High Fanout                                 |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  DSP Register                                     |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register to Pipeline                       |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register                                   |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  BRAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  URAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Dynamic/Static Region Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                                            |           45  |            732  |                   777  |           0  |           9  |  00:00:01  |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
T
?Phase 2.4.1 Physical Synthesis In Placer | Checksum: 20c7674d0
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:43 ; elapsed = 00:00:36 . Memory (MB): peak = 4175.898 ; gain = 179.664 ; free physical = 7706 ; free virtual = 384642default:defaulth px? 
K
6Phase 2.4 Global Placement Core | Checksum: 1ddf57537
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:47 ; elapsed = 00:00:38 . Memory (MB): peak = 4175.898 ; gain = 179.664 ; free physical = 7701 ; free virtual = 384602default:defaulth px? 
D
/Phase 2 Global Placement | Checksum: 1ddf57537
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:47 ; elapsed = 00:00:38 . Memory (MB): peak = 4175.898 ; gain = 179.664 ; free physical = 7739 ; free virtual = 384972default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 170c8eadb
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:52 ; elapsed = 00:00:39 . Memory (MB): peak = 4175.898 ; gain = 179.664 ; free physical = 7722 ; free virtual = 384802default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 12d4a38dc
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:06 ; elapsed = 00:00:45 . Memory (MB): peak = 4175.898 ; gain = 179.664 ; free physical = 7712 ; free virtual = 384712default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 1e1bad2ce
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:07 ; elapsed = 00:00:45 . Memory (MB): peak = 4175.898 ; gain = 179.664 ; free physical = 7711 ; free virtual = 384662default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 113a2af7a
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:07 ; elapsed = 00:00:46 . Memory (MB): peak = 4175.898 ; gain = 179.664 ; free physical = 7711 ; free virtual = 384662default:defaulth px? 
t

Phase %s%s
101*constraints2
3.5 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
G
2Phase 3.5 Fast Optimization | Checksum: 18ebe8c22
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:20 ; elapsed = 00:00:49 . Memory (MB): peak = 4175.898 ; gain = 179.664 ; free physical = 7729 ; free virtual = 384842default:defaulth px? 


Phase %s%s
101*constraints2
3.6 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
R
=Phase 3.6 Small Shape Detail Placement | Checksum: 17b41aa3e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:28 ; elapsed = 00:00:56 . Memory (MB): peak = 4175.898 ; gain = 179.664 ; free physical = 7694 ; free virtual = 384492default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 17b41aa3e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:28 ; elapsed = 00:00:56 . Memory (MB): peak = 4175.898 ; gain = 179.664 ; free physical = 7694 ; free virtual = 384492default:defaulth px? 
?
 The packing of instances into %s487*place2?
?the device could not be obeyed. There are a total of 13300 slices in the device, of which 9469 slices are available, however, the unplaced instances require 9761 slices. Please analyze your design to determine if the number of LUTs, FFs, and/or control sets can be reduced.

Number of control sets and instances constrained to the design
	Control sets: 2686
	Luts: 40719 (combined) 48926 (total), available capacity: 53200 
	Flip flops: 61112, available capacity: 106400
	NOTE: each slice can only accommodate 1 unique control set so FFs cannot be packed to fully fill every slice

2default:defaultZ30-487h px? 
?
?Placer failed with error: '%s'
Please review all ERROR and WARNING messages during placement to understand the cause for failure.
1*	placeflow2U
ADetail Placement failed please check previous errors for details.2default:defaultZ30-99h px? 
=
(Ending Placer Task | Checksum: e4871657
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:29 ; elapsed = 00:00:56 . Memory (MB): peak = 4175.898 ; gain = 179.664 ; free physical = 7805 ; free virtual = 385602default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1562default:default2
12default:default2
02default:default2
32default:defaultZ4-41h px? 
N

%s failed
30*	vivadotcl2 
place_design2default:defaultZ4-43h px? 
m
Command failed: %s
69*common28
$Placer could not place all instances2default:defaultZ17-69h px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Dec 28 08:51:15 20222default:defaultZ17-206h px? 


End Record