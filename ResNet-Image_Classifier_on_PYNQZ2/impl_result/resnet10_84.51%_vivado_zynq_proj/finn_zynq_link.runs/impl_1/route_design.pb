
o
Command: %s
53*	vivadotcl2>
*route_design -directive NoTimingRelaxation2default:defaultZ4-113h px? 
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
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
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
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
i
Using Router directive '%s'.
20*	routeflow2&
NoTimingRelaxation2default:defaultZ35-270h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
82default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
B
-Phase 1 Build RT Design | Checksum: 92ae41bd
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:26 ; elapsed = 00:00:14 . Memory (MB): peak = 4215.566 ; gain = 0.000 ; free physical = 5565 ; free virtual = 384902default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
2.1 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.1 Fix Topology Constraints | Checksum: 92ae41bd
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:26 ; elapsed = 00:00:14 . Memory (MB): peak = 4215.566 ; gain = 0.000 ; free physical = 5530 ; free virtual = 384552default:defaulth px? 
t

Phase %s%s
101*constraints2
2.2 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.2 Pre Route Cleanup | Checksum: 92ae41bd
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:27 ; elapsed = 00:00:14 . Memory (MB): peak = 4215.566 ; gain = 0.000 ; free physical = 5530 ; free virtual = 384552default:defaulth px? 
p

Phase %s%s
101*constraints2
2.3 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.3 Update Timing | Checksum: 14e59da26
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:44 ; elapsed = 00:00:21 . Memory (MB): peak = 4276.711 ; gain = 61.145 ; free physical = 5501 ; free virtual = 384262default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=0.623  | TNS=0.000  | WHS=-0.203 | THS=-479.678|
2default:defaultZ35-416h px? 
I
4Phase 2 Router Initialization | Checksum: 12882e592
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:56 ; elapsed = 00:00:24 . Memory (MB): peak = 4276.711 ; gain = 61.145 ; free physical = 5497 ; free virtual = 384222default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
3.1 2default:default2"
Global Routing2default:defaultZ18-101h px? 
D
/Phase 3.1 Global Routing | Checksum: 12882e592
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:56 ; elapsed = 00:00:24 . Memory (MB): peak = 4276.711 ; gain = 61.145 ; free physical = 5497 ; free virtual = 384222default:defaulth px? 
C
.Phase 3 Initial Routing | Checksum: 1a4bd061a
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:10 ; elapsed = 00:00:28 . Memory (MB): peak = 4281.711 ; gain = 66.145 ; free physical = 5479 ; free virtual = 384042default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.382 | TNS=-11.997| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 16e9f86d6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:16 ; elapsed = 00:01:08 . Memory (MB): peak = 4297.781 ; gain = 82.215 ; free physical = 5480 ; free virtual = 384052default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.402 | TNS=-16.823| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 217eb2171
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:47 ; elapsed = 00:01:26 . Memory (MB): peak = 4297.781 ; gain = 82.215 ; free physical = 5484 ; free virtual = 384092default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 217eb2171
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:47 ; elapsed = 00:01:26 . Memory (MB): peak = 4297.781 ; gain = 82.215 ; free physical = 5484 ; free virtual = 384092default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 5.1.1 Update Timing | Checksum: 15d347749
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:51 ; elapsed = 00:01:27 . Memory (MB): peak = 4297.781 ; gain = 82.215 ; free physical = 5483 ; free virtual = 384082default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.251 | TNS=-3.904 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 1e3b69a1b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:52 ; elapsed = 00:01:28 . Memory (MB): peak = 4297.781 ; gain = 82.215 ; free physical = 5480 ; free virtual = 384052default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 1e3b69a1b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:52 ; elapsed = 00:01:28 . Memory (MB): peak = 4297.781 ; gain = 82.215 ; free physical = 5480 ; free virtual = 384052default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 1e3b69a1b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:52 ; elapsed = 00:01:28 . Memory (MB): peak = 4297.781 ; gain = 82.215 ; free physical = 5480 ; free virtual = 384052default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 152449e04
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:58 ; elapsed = 00:01:29 . Memory (MB): peak = 4297.781 ; gain = 82.215 ; free physical = 5479 ; free virtual = 384042default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.241 | TNS=-3.620 | WHS=0.012  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 16ddc4b2e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:58 ; elapsed = 00:01:30 . Memory (MB): peak = 4297.781 ; gain = 82.215 ; free physical = 5479 ; free virtual = 384042default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 16ddc4b2e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:58 ; elapsed = 00:01:30 . Memory (MB): peak = 4297.781 ; gain = 82.215 ; free physical = 5479 ; free virtual = 384042default:defaulth px? 
t

Phase %s%s
101*constraints2
7 2default:default2'
Timing Verification2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
7.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 7.1 Update Timing | Checksum: 144c29e48
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:05 ; elapsed = 00:01:32 . Memory (MB): peak = 4297.781 ; gain = 82.215 ; free physical = 5482 ; free virtual = 384072default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.241 | TNS=-3.620 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 7 Timing Verification | Checksum: 144c29e48
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:05 ; elapsed = 00:01:32 . Memory (MB): peak = 4297.781 ; gain = 82.215 ; free physical = 5482 ; free virtual = 384072default:defaulth px? 
o

Phase %s%s
101*constraints2
8 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 8 Route finalize | Checksum: 144c29e48
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:06 ; elapsed = 00:01:32 . Memory (MB): peak = 4297.781 ; gain = 82.215 ; free physical = 5482 ; free virtual = 384072default:defaulth px? 
v

Phase %s%s
101*constraints2
9 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 9 Verifying routed nets | Checksum: 144c29e48
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:06 ; elapsed = 00:01:32 . Memory (MB): peak = 4297.781 ; gain = 82.215 ; free physical = 5482 ; free virtual = 384072default:defaulth px? 
s

Phase %s%s
101*constraints2
10 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 10 Depositing Routes | Checksum: fb59a91a
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:09 ; elapsed = 00:01:34 . Memory (MB): peak = 4313.789 ; gain = 98.223 ; free physical = 5469 ; free virtual = 383952default:defaulth px? 
w

Phase %s%s
101*constraints2
11 2default:default2)
Incr Placement Change2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:00.012default:default2
4313.7892default:default2
0.0002default:default2
54752default:default2
384002default:defaultZ17-722h px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
0.5012default:defaultZ30-746h px? 
A
,Ending IncrPlace Task | Checksum: 15ec70a24
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:19 ; elapsed = 00:00:11 . Memory (MB): peak = 4370.711 ; gain = 56.922 ; free physical = 5502 ; free virtual = 384292default:defaulth px? 
I
4Phase 11 Incr Placement Change | Checksum: fb59a91a
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:29 ; elapsed = 00:01:46 . Memory (MB): peak = 4370.711 ; gain = 155.145 ; free physical = 5502 ; free virtual = 384292default:defaulth px? 
q

Phase %s%s
101*constraints2
12 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
C
.Phase 12 Build RT Design | Checksum: f8044a88
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:43 ; elapsed = 00:01:53 . Memory (MB): peak = 4370.711 ; gain = 155.145 ; free physical = 5460 ; free virtual = 383862default:defaulth px? 
w

Phase %s%s
101*constraints2
13 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
|

Phase %s%s
101*constraints2
13.1 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
N
9Phase 13.1 Fix Topology Constraints | Checksum: f8044a88
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:44 ; elapsed = 00:01:53 . Memory (MB): peak = 4370.711 ; gain = 155.145 ; free physical = 5424 ; free virtual = 383512default:defaulth px? 
u

Phase %s%s
101*constraints2
13.2 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
H
3Phase 13.2 Pre Route Cleanup | Checksum: 1a63b09ed
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:44 ; elapsed = 00:01:53 . Memory (MB): peak = 4370.711 ; gain = 155.145 ; free physical = 5424 ; free virtual = 383512default:defaulth px? 
q

Phase %s%s
101*constraints2
13.3 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 13.3 Update Timing | Checksum: 1394b5e9e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:05 ; elapsed = 00:02:01 . Memory (MB): peak = 4370.711 ; gain = 155.145 ; free physical = 5365 ; free virtual = 382912default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=0.415  | TNS=0.000  | WHS=-0.203 | THS=-475.901|
2default:defaultZ35-416h px? 
J
5Phase 13 Router Initialization | Checksum: 1abc39bb8
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:17 ; elapsed = 00:02:04 . Memory (MB): peak = 4370.711 ; gain = 155.145 ; free physical = 5355 ; free virtual = 382802default:defaulth px? 
q

Phase %s%s
101*constraints2
14 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
14.1 2default:default2"
Global Routing2default:defaultZ18-101h px? 
E
0Phase 14.1 Global Routing | Checksum: 1abc39bb8
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:18 ; elapsed = 00:02:04 . Memory (MB): peak = 4370.711 ; gain = 155.145 ; free physical = 5355 ; free virtual = 382802default:defaulth px? 
D
/Phase 14 Initial Routing | Checksum: 11493e345
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:20 ; elapsed = 00:02:06 . Memory (MB): peak = 4374.012 ; gain = 158.445 ; free physical = 5330 ; free virtual = 382562default:defaulth px? 
t

Phase %s%s
101*constraints2
15 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
v

Phase %s%s
101*constraints2
15.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.022  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
I
4Phase 15.1 Global Iteration 0 | Checksum: 1ee6e0ac8
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:47 ; elapsed = 00:02:24 . Memory (MB): peak = 4374.012 ; gain = 158.445 ; free physical = 5346 ; free virtual = 382712default:defaulth px? 
v

Phase %s%s
101*constraints2
15.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.066  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
I
4Phase 15.2 Global Iteration 1 | Checksum: 1c14e0035
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:57 ; elapsed = 00:02:32 . Memory (MB): peak = 4374.012 ; gain = 158.445 ; free physical = 5348 ; free virtual = 382732default:defaulth px? 
G
2Phase 15 Rip-up And Reroute | Checksum: 1c14e0035
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:57 ; elapsed = 00:02:32 . Memory (MB): peak = 4374.012 ; gain = 158.445 ; free physical = 5348 ; free virtual = 382732default:defaulth px? 
}

Phase %s%s
101*constraints2
16 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
16.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
D
/Phase 16.1 Delay CleanUp | Checksum: 1c14e0035
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:57 ; elapsed = 00:02:32 . Memory (MB): peak = 4374.012 ; gain = 158.445 ; free physical = 5348 ; free virtual = 382732default:defaulth px? 
{

Phase %s%s
101*constraints2
16.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
N
9Phase 16.2 Clock Skew Optimization | Checksum: 1c14e0035
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:58 ; elapsed = 00:02:32 . Memory (MB): peak = 4374.012 ; gain = 158.445 ; free physical = 5348 ; free virtual = 382732default:defaulth px? 
P
;Phase 16 Delay and Skew Optimization | Checksum: 1c14e0035
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:58 ; elapsed = 00:02:32 . Memory (MB): peak = 4374.012 ; gain = 158.445 ; free physical = 5348 ; free virtual = 382732default:defaulth px? 
o

Phase %s%s
101*constraints2
17 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
17.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
s

Phase %s%s
101*constraints2
17.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
F
1Phase 17.1.1 Update Timing | Checksum: 1c5c6b24b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:03 ; elapsed = 00:02:34 . Memory (MB): peak = 4374.012 ; gain = 158.445 ; free physical = 5345 ; free virtual = 382702default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.066  | TNS=0.000  | WHS=0.018  | THS=0.000  |
2default:defaultZ35-416h px? 
D
/Phase 17.1 Hold Fix Iter | Checksum: 1b3d5f8e6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:03 ; elapsed = 00:02:34 . Memory (MB): peak = 4374.012 ; gain = 158.445 ; free physical = 5345 ; free virtual = 382702default:defaulth px? 
B
-Phase 17 Post Hold Fix | Checksum: 1b3d5f8e6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:03 ; elapsed = 00:02:34 . Memory (MB): peak = 4374.012 ; gain = 158.445 ; free physical = 5345 ; free virtual = 382702default:defaulth px? 
u

Phase %s%s
101*constraints2
18 2default:default2'
Timing Verification2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
18.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 18.1 Update Timing | Checksum: 1224a839c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:10 ; elapsed = 00:02:36 . Memory (MB): peak = 4374.012 ; gain = 158.445 ; free physical = 5344 ; free virtual = 382692default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.066  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 18 Timing Verification | Checksum: 1224a839c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:10 ; elapsed = 00:02:36 . Memory (MB): peak = 4374.012 ; gain = 158.445 ; free physical = 5344 ; free virtual = 382692default:defaulth px? 
p

Phase %s%s
101*constraints2
19 2default:default2"
Route finalize2default:defaultZ18-101h px? 
C
.Phase 19 Route finalize | Checksum: 1224a839c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:11 ; elapsed = 00:02:36 . Memory (MB): peak = 4374.012 ; gain = 158.445 ; free physical = 5344 ; free virtual = 382692default:defaulth px? 
w

Phase %s%s
101*constraints2
20 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
J
5Phase 20 Verifying routed nets | Checksum: 1224a839c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:11 ; elapsed = 00:02:36 . Memory (MB): peak = 4374.012 ; gain = 158.445 ; free physical = 5340 ; free virtual = 382662default:defaulth px? 
s

Phase %s%s
101*constraints2
21 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
F
1Phase 21 Depositing Routes | Checksum: 115cef272
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:14 ; elapsed = 00:02:38 . Memory (MB): peak = 4390.020 ; gain = 174.453 ; free physical = 5337 ; free virtual = 382622default:defaulth px? 
t

Phase %s%s
101*constraints2
22 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Post Routing Timing Summary %s
20*route2J
6| WNS=0.067  | TNS=0.000  | WHS=0.019  | THS=0.000  |
2default:defaultZ35-20h px? 
G
2Phase 22 Post Router Timing | Checksum: 190199902
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:30 ; elapsed = 00:02:43 . Memory (MB): peak = 4390.020 ; gain = 174.453 ; free physical = 5381 ; free virtual = 383072default:defaulth px? 
F
'The design met the timing requirement.
61*routeZ35-61h px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:30 ; elapsed = 00:02:43 . Memory (MB): peak = 4390.020 ; gain = 174.453 ; free physical = 5551 ; free virtual = 384772default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2042default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:05:462default:default2
00:02:472default:default2
4390.0202default:default2
218.2422default:default2
55542default:default2
384802default:defaultZ17-722h px? 
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
4392.1372default:default2
2.1172default:default2
53872default:default2
384622default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?/home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.runs/impl_1/top_wrapper_routed.dcp2default:defaultZ17-1381h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:152default:default2
00:00:082default:default2
4448.1642default:default2
58.1452default:default2
55052default:default2
384682default:defaultZ17-722h px? 
?
%s4*runtcl2?
vExecuting : report_drc -file top_wrapper_drc_routed.rpt -pb top_wrapper_drc_routed.pb -rpx top_wrapper_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2}
ireport_drc -file top_wrapper_drc_routed.rpt -pb top_wrapper_drc_routed.pb -rpx top_wrapper_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
586*	vivadotcl2?
?/home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.runs/impl_1/top_wrapper_drc_routed.rpt?/home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.runs/impl_1/top_wrapper_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
report_drc: 2default:default2
00:00:182default:default2
00:00:062default:default2
4456.1682default:default2
8.0042default:default2
55022default:default2
384642default:defaultZ17-722h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file top_wrapper_methodology_drc_routed.rpt -pb top_wrapper_methodology_drc_routed.pb -rpx top_wrapper_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file top_wrapper_methodology_drc_routed.rpt -pb top_wrapper_methodology_drc_routed.pb -rpx top_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
82default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
609*	vivadotcl2?
?/home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.runs/impl_1/top_wrapper_methodology_drc_routed.rpt?/home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.runs/impl_1/top_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_power -file top_wrapper_power_routed.rpt -pb top_wrapper_power_summary_routed.pb -rpx top_wrapper_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
yreport_power -file top_wrapper_power_routed.rpt -pb top_wrapper_power_summary_routed.pb -rpx top_wrapper_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
?Detected over-assertion of set/reset/preset/clear net with high fanouts, power estimation might not be accurate. Please run Tool - Power Constraint Wizard to set proper switching activities for control signals.282*powerZ33-332h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2162default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
report_power: 2default:default2
00:00:192default:default2
00:00:072default:default2
4520.2192default:default2
64.0512default:default2
54682default:default2
384412default:defaultZ17-722h px? 
?
%s4*runtcl2w
cExecuting : report_route_status -file top_wrapper_route_status.rpt -pb top_wrapper_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -report_unconstrained -file top_wrapper_timing_summary_routed.rpt -pb top_wrapper_timing_summary_routed.pb -rpx top_wrapper_timing_summary_routed.rpx
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px? 
?
%s4*runtcl2h
TExecuting : report_incremental_reuse -file top_wrapper_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2h
TExecuting : report_clock_utilization -file top_wrapper_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file top_wrapper_bus_skew_routed.rpt -pb top_wrapper_bus_skew_routed.pb -rpx top_wrapper_bus_skew_routed.rpx
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px? 


End Record