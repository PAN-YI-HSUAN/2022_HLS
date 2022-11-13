set moduleName dut_Pipeline_Clear_loop
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {dut_Pipeline_Clear_loop}
set C_modelType { void 0 }
set C_modelArgList {
	{ idxprom52 int 12 regular  }
	{ i_2 int 12 regular  }
	{ zext_ln169 int 12 regular  }
	{ dist_array int 16 regular {array 3534 { 0 3 } 0 1 } {global 1}  }
	{ sigma_array int 32 regular {array 3534 { 0 3 } 0 1 } {global 1}  }
	{ travel int 1 regular {array 3534 { 0 3 } 0 1 } {global 1}  }
	{ s_array int 16 regular {array 3534 { 0 3 } 0 1 } {global 1}  }
	{ p_index_array int 8 regular {array 3534 { 0 3 } 0 1 } {global 1}  }
	{ delta_array float 32 regular {array 3534 { 0 3 } 0 1 } {global 1}  }
	{ q_array int 16 regular {array 3534 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "idxprom52", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "i_2", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln169", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "dist_array", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "sigma_array", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "travel", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "s_array", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "p_index_array", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "delta_array", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "q_array", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ idxprom52 sc_in sc_lv 12 signal 0 } 
	{ i_2 sc_in sc_lv 12 signal 1 } 
	{ zext_ln169 sc_in sc_lv 12 signal 2 } 
	{ dist_array_address0 sc_out sc_lv 12 signal 3 } 
	{ dist_array_ce0 sc_out sc_logic 1 signal 3 } 
	{ dist_array_we0 sc_out sc_logic 1 signal 3 } 
	{ dist_array_d0 sc_out sc_lv 16 signal 3 } 
	{ sigma_array_address0 sc_out sc_lv 12 signal 4 } 
	{ sigma_array_ce0 sc_out sc_logic 1 signal 4 } 
	{ sigma_array_we0 sc_out sc_logic 1 signal 4 } 
	{ sigma_array_d0 sc_out sc_lv 32 signal 4 } 
	{ travel_address0 sc_out sc_lv 12 signal 5 } 
	{ travel_ce0 sc_out sc_logic 1 signal 5 } 
	{ travel_we0 sc_out sc_logic 1 signal 5 } 
	{ travel_d0 sc_out sc_lv 1 signal 5 } 
	{ s_array_address0 sc_out sc_lv 12 signal 6 } 
	{ s_array_ce0 sc_out sc_logic 1 signal 6 } 
	{ s_array_we0 sc_out sc_logic 1 signal 6 } 
	{ s_array_d0 sc_out sc_lv 16 signal 6 } 
	{ p_index_array_address0 sc_out sc_lv 12 signal 7 } 
	{ p_index_array_ce0 sc_out sc_logic 1 signal 7 } 
	{ p_index_array_we0 sc_out sc_logic 1 signal 7 } 
	{ p_index_array_d0 sc_out sc_lv 8 signal 7 } 
	{ delta_array_address0 sc_out sc_lv 12 signal 8 } 
	{ delta_array_ce0 sc_out sc_logic 1 signal 8 } 
	{ delta_array_we0 sc_out sc_logic 1 signal 8 } 
	{ delta_array_d0 sc_out sc_lv 32 signal 8 } 
	{ q_array_address0 sc_out sc_lv 12 signal 9 } 
	{ q_array_ce0 sc_out sc_logic 1 signal 9 } 
	{ q_array_we0 sc_out sc_logic 1 signal 9 } 
	{ q_array_d0 sc_out sc_lv 16 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "idxprom52", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "idxprom52", "role": "default" }} , 
 	{ "name": "i_2", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "i_2", "role": "default" }} , 
 	{ "name": "zext_ln169", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "zext_ln169", "role": "default" }} , 
 	{ "name": "dist_array_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dist_array", "role": "address0" }} , 
 	{ "name": "dist_array_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dist_array", "role": "ce0" }} , 
 	{ "name": "dist_array_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dist_array", "role": "we0" }} , 
 	{ "name": "dist_array_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dist_array", "role": "d0" }} , 
 	{ "name": "sigma_array_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sigma_array", "role": "address0" }} , 
 	{ "name": "sigma_array_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sigma_array", "role": "ce0" }} , 
 	{ "name": "sigma_array_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sigma_array", "role": "we0" }} , 
 	{ "name": "sigma_array_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sigma_array", "role": "d0" }} , 
 	{ "name": "travel_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "travel", "role": "address0" }} , 
 	{ "name": "travel_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "travel", "role": "ce0" }} , 
 	{ "name": "travel_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "travel", "role": "we0" }} , 
 	{ "name": "travel_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "travel", "role": "d0" }} , 
 	{ "name": "s_array_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "s_array", "role": "address0" }} , 
 	{ "name": "s_array_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_array", "role": "ce0" }} , 
 	{ "name": "s_array_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_array", "role": "we0" }} , 
 	{ "name": "s_array_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "s_array", "role": "d0" }} , 
 	{ "name": "p_index_array_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_index_array", "role": "address0" }} , 
 	{ "name": "p_index_array_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_index_array", "role": "ce0" }} , 
 	{ "name": "p_index_array_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_index_array", "role": "we0" }} , 
 	{ "name": "p_index_array_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_index_array", "role": "d0" }} , 
 	{ "name": "delta_array_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "delta_array", "role": "address0" }} , 
 	{ "name": "delta_array_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "delta_array", "role": "ce0" }} , 
 	{ "name": "delta_array_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "delta_array", "role": "we0" }} , 
 	{ "name": "delta_array_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "delta_array", "role": "d0" }} , 
 	{ "name": "q_array_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "q_array", "role": "address0" }} , 
 	{ "name": "q_array_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q_array", "role": "ce0" }} , 
 	{ "name": "q_array_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q_array", "role": "we0" }} , 
 	{ "name": "q_array_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "q_array", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dut_Pipeline_Clear_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3536", "EstimateLatencyMax" : "3536",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [],
		"Port" : [
			{"Name" : "idxprom52", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln169", "Type" : "None", "Direction" : "I"},
			{"Name" : "dist_array", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sigma_array", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "travel", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s_array", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_index_array", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "delta_array", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "q_array", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Clear_loop", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dut_Pipeline_Clear_loop {
		idxprom52 {Type I LastRead 0 FirstWrite -1}
		i_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln169 {Type I LastRead 0 FirstWrite -1}
		dist_array {Type O LastRead -1 FirstWrite 0}
		sigma_array {Type O LastRead -1 FirstWrite 0}
		travel {Type O LastRead -1 FirstWrite 0}
		s_array {Type O LastRead -1 FirstWrite 0}
		p_index_array {Type O LastRead -1 FirstWrite 0}
		delta_array {Type O LastRead -1 FirstWrite 0}
		q_array {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3536", "Max" : "3536"}
	, {"Name" : "Interval", "Min" : "3536", "Max" : "3536"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	idxprom52 { ap_none {  { idxprom52 in_data 0 12 } } }
	i_2 { ap_none {  { i_2 in_data 0 12 } } }
	zext_ln169 { ap_none {  { zext_ln169 in_data 0 12 } } }
	dist_array { ap_memory {  { dist_array_address0 mem_address 1 12 }  { dist_array_ce0 mem_ce 1 1 }  { dist_array_we0 mem_we 1 1 }  { dist_array_d0 mem_din 1 16 } } }
	sigma_array { ap_memory {  { sigma_array_address0 mem_address 1 12 }  { sigma_array_ce0 mem_ce 1 1 }  { sigma_array_we0 mem_we 1 1 }  { sigma_array_d0 mem_din 1 32 } } }
	travel { ap_memory {  { travel_address0 mem_address 1 12 }  { travel_ce0 mem_ce 1 1 }  { travel_we0 mem_we 1 1 }  { travel_d0 mem_din 1 1 } } }
	s_array { ap_memory {  { s_array_address0 mem_address 1 12 }  { s_array_ce0 mem_ce 1 1 }  { s_array_we0 mem_we 1 1 }  { s_array_d0 mem_din 1 16 } } }
	p_index_array { ap_memory {  { p_index_array_address0 mem_address 1 12 }  { p_index_array_ce0 mem_ce 1 1 }  { p_index_array_we0 mem_we 1 1 }  { p_index_array_d0 mem_din 1 8 } } }
	delta_array { ap_memory {  { delta_array_address0 mem_address 1 12 }  { delta_array_ce0 mem_ce 1 1 }  { delta_array_we0 mem_we 1 1 }  { delta_array_d0 mem_din 1 32 } } }
	q_array { ap_memory {  { q_array_address0 mem_address 1 12 }  { q_array_ce0 mem_ce 1 1 }  { q_array_we0 mem_we 1 1 }  { q_array_d0 mem_din 1 16 } } }
}
