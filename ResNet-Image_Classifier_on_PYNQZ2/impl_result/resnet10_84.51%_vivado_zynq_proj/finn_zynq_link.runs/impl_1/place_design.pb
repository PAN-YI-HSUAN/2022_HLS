
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
3954.2972default:default2
0.0002default:default2
59402default:default2
388162default:defaultZ17-722h px? 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: d85e3801
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.02 ; elapsed = 00:00:00.05 . Memory (MB): peak = 3954.297 ; gain = 0.000 ; free physical = 5940 ; free virtual = 388162default:defaulth px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:002default:default2
3954.2972default:default2
0.0002default:default2
59402default:default2
388162default:defaultZ17-722h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: e95faaab
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 3954.297 ; gain = 0.000 ; free physical = 5982 ; free virtual = 388582default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
O
:Phase 1.3 Build Placer Netlist Model | Checksum: d4c22b99
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:15 ; elapsed = 00:00:07 . Memory (MB): peak = 3981.980 ; gain = 27.684 ; free physical = 5913 ; free virtual = 387892default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
L
7Phase 1.4 Constrain Clocks/Macros | Checksum: d4c22b99
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:15 ; elapsed = 00:00:07 . Memory (MB): peak = 3981.980 ; gain = 27.684 ; free physical = 5913 ; free virtual = 387892default:defaulth px? 
H
3Phase 1 Placer Initialization | Checksum: d4c22b99
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:15 ; elapsed = 00:00:07 . Memory (MB): peak = 3981.980 ; gain = 27.684 ; free physical = 5913 ; free virtual = 387892default:defaulth px? 
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
-Phase 2.1 Floorplanning | Checksum: 9f04cc9f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:21 ; elapsed = 00:00:09 . Memory (MB): peak = 4057.074 ; gain = 102.777 ; free physical = 5815 ; free virtual = 386902default:defaulth px? 
?

Phase %s%s
101*constraints2
2.2 2default:default25
!Update Timing before SLR Path Opt2default:defaultZ18-101h px? 
V
APhase 2.2 Update Timing before SLR Path Opt | Checksum: c0fa2f99
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:26 ; elapsed = 00:00:10 . Memory (MB): peak = 4057.074 ; gain = 102.777 ; free physical = 5816 ; free virtual = 386912default:defaulth px? 
?

Phase %s%s
101*constraints2
2.3 2default:default24
 Post-Processing in Floorplanning2default:defaultZ18-101h px? 
U
@Phase 2.3 Post-Processing in Floorplanning | Checksum: c0fa2f99
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:26 ; elapsed = 00:00:10 . Memory (MB): peak = 4057.074 ; gain = 102.777 ; free physical = 5815 ; free virtual = 386912default:defaulth px? 
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
412default:default2
13692default:defaultZ32-1035h px? 
?
YBreak lutnm for timing: one critical %s, two critical %s, total %s, new lutff created %s
561*physynth2
372default:default2
42default:default2
412default:default2
02default:defaultZ32-1044h px? 
?
^End %s Pass. Optimized %s %s. Breaked %s %s, combined %s existing %s and moved %s existing %s
576*physynth2
12default:default2
6432default:default2 
nets or LUTs2default:default2
412default:default2
LUTs2default:default2
6022default:default2
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
00:00:002default:default2
00:00:002default:default2
4065.0782default:default2
0.0002default:default2
58052default:default2
386812default:defaultZ17-722h px? 
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
?|  LUT Combining                                    |           41  |            602  |                   643  |           0  |           1  |  00:00:01  |
|  Retime                                           |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Very High Fanout                                 |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  DSP Register                                     |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register to Pipeline                       |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register                                   |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  BRAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  URAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Dynamic/Static Region Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                                            |           41  |            602  |                   643  |           0  |           9  |  00:00:01  |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
T
?Phase 2.4.1 Physical Synthesis In Placer | Checksum: 101ba8bf4
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:24 ; elapsed = 00:00:30 . Memory (MB): peak = 4065.078 ; gain = 110.781 ; free physical = 5783 ; free virtual = 386642default:defaulth px? 
K
6Phase 2.4 Global Placement Core | Checksum: 142f86865
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:28 ; elapsed = 00:00:31 . Memory (MB): peak = 4065.078 ; gain = 110.781 ; free physical = 5778 ; free virtual = 386602default:defaulth px? 
D
/Phase 2 Global Placement | Checksum: 142f86865
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:28 ; elapsed = 00:00:31 . Memory (MB): peak = 4065.078 ; gain = 110.781 ; free physical = 5804 ; free virtual = 386862default:defaulth px? 
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
;Phase 3.1 Commit Multi Column Macros | Checksum: 10fe2d80e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:33 ; elapsed = 00:00:32 . Memory (MB): peak = 4065.078 ; gain = 110.781 ; free physical = 5799 ; free virtual = 386802default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
Q
<Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 9dd5e1e5
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:43 ; elapsed = 00:00:36 . Memory (MB): peak = 4065.078 ; gain = 110.781 ; free physical = 5781 ; free virtual = 386622default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 125e63f7c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:44 ; elapsed = 00:00:37 . Memory (MB): peak = 4065.078 ; gain = 110.781 ; free physical = 5781 ; free virtual = 386622default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 12b562084
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:44 ; elapsed = 00:00:37 . Memory (MB): peak = 4065.078 ; gain = 110.781 ; free physical = 5781 ; free virtual = 386622default:defaulth px? 
t

Phase %s%s
101*constraints2
3.5 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
F
1Phase 3.5 Fast Optimization | Checksum: 71382475
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:55 ; elapsed = 00:00:39 . Memory (MB): peak = 4065.078 ; gain = 110.781 ; free physical = 5787 ; free virtual = 386682default:defaulth px? 


Phase %s%s
101*constraints2
3.6 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
Q
<Phase 3.6 Small Shape Detail Placement | Checksum: eaa4130a
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:07 ; elapsed = 00:00:50 . Memory (MB): peak = 4065.078 ; gain = 110.781 ; free physical = 5718 ; free virtual = 385932default:defaulth px? 
u

Phase %s%s
101*constraints2
3.7 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
G
2Phase 3.7 Re-assign LUT pins | Checksum: 908fabea
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:08 ; elapsed = 00:00:52 . Memory (MB): peak = 4065.078 ; gain = 110.781 ; free physical = 5717 ; free virtual = 385932default:defaulth px? 
?

Phase %s%s
101*constraints2
3.8 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.8 Pipeline Register Optimization | Checksum: 1234e8ec1
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:09 ; elapsed = 00:00:52 . Memory (MB): peak = 4065.078 ; gain = 110.781 ; free physical = 5717 ; free virtual = 385932default:defaulth px? 
t

Phase %s%s
101*constraints2
3.9 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
G
2Phase 3.9 Fast Optimization | Checksum: 1bcc7c7fa
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:24 ; elapsed = 00:00:55 . Memory (MB): peak = 4095.098 ; gain = 140.801 ; free physical = 5703 ; free virtual = 385792default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 1bcc7c7fa
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:24 ; elapsed = 00:00:56 . Memory (MB): peak = 4095.098 ; gain = 140.801 ; free physical = 5703 ; free virtual = 385792default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px? 
V
APost Placement Optimization Initialization | Checksum: 234223d86
*commonh px? 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px? 
a

Starting %s Task
103*constraints2&
Physical Synthesis2default:defaultZ18-103h px? 
?

Phase %s%s
101*constraints2
1 2default:default25
!Physical Synthesis Initialization2default:defaultZ18-101h px? 
?
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
82default:defaultZ32-721h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.9252default:default2
-59.2392default:defaultZ32-619h px? 
U
@Phase 1 Physical Synthesis Initialization | Checksum: 1b7cdf724
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.76 . Memory (MB): peak = 4143.895 ; gain = 0.000 ; free physical = 5714 ; free virtual = 385902default:defaulth px? 
?
?BUFG insertion identified %s candidate nets. Inserted BUFG: %s, Replicated BUFG Driver: %s, Skipped due to Placement/Routing Conflicts: %s, Skipped due to Timing Degradation: %s, Skipped due to Illegal Netlist: %s.43*	placeflow2
02default:default2
02default:default2
02default:default2
02default:default2
02default:default2
02default:defaultZ46-56h px? 
J
5Ending Physical Synthesis Task | Checksum: 19e6827c4
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:01 . Memory (MB): peak = 4143.895 ; gain = 0.000 ; free physical = 5714 ; free virtual = 385902default:defaulth px? 
H
3Phase 4.1.1.1 BUFG Insertion | Checksum: 234223d86
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:43 ; elapsed = 00:01:02 . Memory (MB): peak = 4143.895 ; gain = 189.598 ; free physical = 5716 ; free virtual = 385912default:defaulth px? 
?

Phase %s%s
101*constraints2
4.1.1.2 2default:default26
"Post Placement Timing Optimization2default:defaultZ18-101h px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
0.5012default:defaultZ30-746h px? 
\
GPhase 4.1.1.2 Post Placement Timing Optimization | Checksum: 143b9b176
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:03 ; elapsed = 00:01:21 . Memory (MB): peak = 4143.895 ; gain = 189.598 ; free physical = 5685 ; free virtual = 385602default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:03 ; elapsed = 00:01:21 . Memory (MB): peak = 4143.895 ; gain = 189.598 ; free physical = 5685 ; free virtual = 385602default:defaulth px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 143b9b176
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:03 ; elapsed = 00:01:22 . Memory (MB): peak = 4143.895 ; gain = 189.598 ; free physical = 5685 ; free virtual = 385602default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 143b9b176
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:04 ; elapsed = 00:01:22 . Memory (MB): peak = 4143.895 ; gain = 189.598 ; free physical = 5686 ; free virtual = 385612default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 


Phase %s%s
101*constraints2
4.3.1 2default:default2.
Print Estimated Congestion2default:defaultZ18-101h px? 
?
'Post-Placement Estimated Congestion %s
38*	placeflow2?
?
 ____________________________________________________
|           | Global Congestion | Short Congestion  |
| Direction | Region Size       | Region Size       |
|___________|___________________|___________________|
|      North|                1x1|                4x4|
|___________|___________________|___________________|
|      South|                1x1|                4x4|
|___________|___________________|___________________|
|       East|                1x1|                1x1|
|___________|___________________|___________________|
|       West|                1x1|                1x1|
|___________|___________________|___________________|
2default:defaultZ30-612h px? 
R
=Phase 4.3.1 Print Estimated Congestion | Checksum: 143b9b176
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:04 ; elapsed = 00:01:22 . Memory (MB): peak = 4143.895 ; gain = 189.598 ; free physical = 5687 ; free virtual = 385622default:defaulth px? 
F
1Phase 4.3 Placer Reporting | Checksum: 143b9b176
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:04 ; elapsed = 00:01:23 . Memory (MB): peak = 4143.895 ; gain = 189.598 ; free physical = 5687 ; free virtual = 385622default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
4143.8952default:default2
0.0002default:default2
56872default:default2
385622default:defaultZ17-722h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:05 ; elapsed = 00:01:23 . Memory (MB): peak = 4143.895 ; gain = 189.598 ; free physical = 5687 ; free virtual = 385622default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 1631c8467
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:05 ; elapsed = 00:01:23 . Memory (MB): peak = 4143.895 ; gain = 189.598 ; free physical = 5687 ; free virtual = 385622default:defaulth px? 
>
)Ending Placer Task | Checksum: 14f890aa4
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:05 ; elapsed = 00:01:23 . Memory (MB): peak = 4143.895 ; gain = 189.598 ; free physical = 5687 ; free virtual = 385622default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1702default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
place_design: 2default:default2
00:03:072default:default2
00:01:242default:default2
4143.8952default:default2
189.5982default:default2
57822default:default2
386572default:defaultZ17-722h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:072default:default2
00:00:022default:default2
4159.9022default:default2
8.0042default:default2
56332default:default2
386392default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?/home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.runs/impl_1/top_wrapper_placed.dcp2default:defaultZ17-1381h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:132default:default2
00:00:072default:default2
4167.9062default:default2
24.0122default:default2
57382default:default2
386382default:defaultZ17-722h px? 
f
%s4*runtcl2J
6Executing : report_io -file top_wrapper_io_placed.rpt
2default:defaulth px? 
?
?report_io: Time (s): cpu = 00:00:00.06 ; elapsed = 00:00:00.15 . Memory (MB): peak = 4167.906 ; gain = 0.000 ; free physical = 5725 ; free virtual = 38627
*commonh px? 
?
%s4*runtcl2?
nExecuting : report_utilization -file top_wrapper_utilization_placed.rpt -pb top_wrapper_utilization_placed.pb
2default:defaulth px? 
?
%s4*runtcl2g
SExecuting : report_control_sets -verbose -file top_wrapper_control_sets_placed.rpt
2default:defaulth px? 
?
?report_control_sets: Time (s): cpu = 00:00:00.18 ; elapsed = 00:00:00.27 . Memory (MB): peak = 4167.906 ; gain = 0.000 ; free physical = 5728 ; free virtual = 38631
*commonh px? 


End Record