
set TopModule "dut"
set ClockPeriod 3.33
set ClockList ap_clk
set HasVivadoClockPeriod 1
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 1
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 1
set ResetVariableFlag 0
set ResetRegisterNum 3
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix dut_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xcu280:-fsvh2892:-2L-e
set SourceFiles {sc {} c ../../top.cpp}
set SourceFlags {sc {} c -I./.}
set DirectiveFile /home/yhp/Documents/Class/111-1_HLS/LabC/ccc/problems/betweenness/betweenness.prj/solution1/solution1.directive
set TBFiles {verilog {../../test.cpp ../../data/large-csr-offset.mtx ../../data/large-csr-indicesweights.mtx ../../data/small-csr-offset.mtx ../../data/small-csr-indicesweights.mtx} bc {../../test.cpp ../../data/large-csr-offset.mtx ../../data/large-csr-indicesweights.mtx ../../data/small-csr-offset.mtx ../../data/small-csr-indicesweights.mtx} vhdl {../../test.cpp ../../data/large-csr-offset.mtx ../../data/large-csr-indicesweights.mtx ../../data/small-csr-offset.mtx ../../data/small-csr-indicesweights.mtx} sc {../../test.cpp ../../data/large-csr-offset.mtx ../../data/large-csr-indicesweights.mtx ../../data/small-csr-offset.mtx ../../data/small-csr-indicesweights.mtx} cas {../../test.cpp ../../data/large-csr-offset.mtx ../../data/large-csr-indicesweights.mtx ../../data/small-csr-offset.mtx ../../data/small-csr-indicesweights.mtx} c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../hls.app
set ApsFile solution1.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/virtexuplus/virtexuplus}}}
set HPFPO 0
