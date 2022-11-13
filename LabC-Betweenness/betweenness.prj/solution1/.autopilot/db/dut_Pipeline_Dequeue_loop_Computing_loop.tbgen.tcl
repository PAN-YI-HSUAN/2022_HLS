set moduleName dut_Pipeline_Dequeue_loop_Computing_loop
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
set C_modelName {dut_Pipeline_Dequeue_loop_Computing_loop}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln265 int 16 regular  }
	{ zext_ln169 int 12 regular  }
	{ s_array int 16 regular {array 3534 { 1 1 } 1 1 } {global 0}  }
	{ sigma_array int 32 regular {array 3534 { 1 3 } 1 1 } {global 0}  }
	{ w int 12 regular {pointer 2} {global 2}  }
	{ p_index_array int 8 regular {array 3534 { 1 3 } 1 1 } {global 0}  }
	{ delta_array float 32 regular {array 3534 { 2 1 } 1 1 } {global 2}  }
	{ btwn_buf float 32 regular {array 3534 { 2 3 } 1 1 } {global 2}  }
	{ sigma_tmp float 32 regular {pointer 2} {global 2}  }
	{ p_array int 16 regular {array 70680 { 1 3 } 1 1 } {global 0}  }
	{ v int 16 regular {pointer 1} {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln265", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln169", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "s_array", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "sigma_array", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "w", "interface" : "wire", "bitwidth" : 12, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_index_array", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "delta_array", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "btwn_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "sigma_tmp", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_array", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "v", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 52
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln265 sc_in sc_lv 16 signal 0 } 
	{ zext_ln169 sc_in sc_lv 12 signal 1 } 
	{ s_array_address0 sc_out sc_lv 12 signal 2 } 
	{ s_array_ce0 sc_out sc_logic 1 signal 2 } 
	{ s_array_q0 sc_in sc_lv 16 signal 2 } 
	{ s_array_address1 sc_out sc_lv 12 signal 2 } 
	{ s_array_ce1 sc_out sc_logic 1 signal 2 } 
	{ s_array_q1 sc_in sc_lv 16 signal 2 } 
	{ sigma_array_address0 sc_out sc_lv 12 signal 3 } 
	{ sigma_array_ce0 sc_out sc_logic 1 signal 3 } 
	{ sigma_array_q0 sc_in sc_lv 32 signal 3 } 
	{ w_i sc_in sc_lv 12 signal 4 } 
	{ w_o sc_out sc_lv 12 signal 4 } 
	{ w_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ p_index_array_address0 sc_out sc_lv 12 signal 5 } 
	{ p_index_array_ce0 sc_out sc_logic 1 signal 5 } 
	{ p_index_array_q0 sc_in sc_lv 8 signal 5 } 
	{ delta_array_address0 sc_out sc_lv 12 signal 6 } 
	{ delta_array_ce0 sc_out sc_logic 1 signal 6 } 
	{ delta_array_we0 sc_out sc_logic 1 signal 6 } 
	{ delta_array_d0 sc_out sc_lv 32 signal 6 } 
	{ delta_array_q0 sc_in sc_lv 32 signal 6 } 
	{ delta_array_address1 sc_out sc_lv 12 signal 6 } 
	{ delta_array_ce1 sc_out sc_logic 1 signal 6 } 
	{ delta_array_q1 sc_in sc_lv 32 signal 6 } 
	{ btwn_buf_address0 sc_out sc_lv 12 signal 7 } 
	{ btwn_buf_ce0 sc_out sc_logic 1 signal 7 } 
	{ btwn_buf_we0 sc_out sc_logic 1 signal 7 } 
	{ btwn_buf_d0 sc_out sc_lv 32 signal 7 } 
	{ btwn_buf_q0 sc_in sc_lv 32 signal 7 } 
	{ sigma_tmp_i sc_in sc_lv 32 signal 8 } 
	{ sigma_tmp_o sc_out sc_lv 32 signal 8 } 
	{ sigma_tmp_o_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ p_array_address0 sc_out sc_lv 17 signal 9 } 
	{ p_array_ce0 sc_out sc_logic 1 signal 9 } 
	{ p_array_q0 sc_in sc_lv 16 signal 9 } 
	{ v sc_out sc_lv 16 signal 10 } 
	{ v_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ grp_fu_667_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_667_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_667_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_667_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_667_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_671_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_671_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_671_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln265", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln265", "role": "default" }} , 
 	{ "name": "zext_ln169", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "zext_ln169", "role": "default" }} , 
 	{ "name": "s_array_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "s_array", "role": "address0" }} , 
 	{ "name": "s_array_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_array", "role": "ce0" }} , 
 	{ "name": "s_array_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "s_array", "role": "q0" }} , 
 	{ "name": "s_array_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "s_array", "role": "address1" }} , 
 	{ "name": "s_array_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_array", "role": "ce1" }} , 
 	{ "name": "s_array_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "s_array", "role": "q1" }} , 
 	{ "name": "sigma_array_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sigma_array", "role": "address0" }} , 
 	{ "name": "sigma_array_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sigma_array", "role": "ce0" }} , 
 	{ "name": "sigma_array_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sigma_array", "role": "q0" }} , 
 	{ "name": "w_i", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "w", "role": "i" }} , 
 	{ "name": "w_o", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "w", "role": "o" }} , 
 	{ "name": "w_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w", "role": "o_ap_vld" }} , 
 	{ "name": "p_index_array_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_index_array", "role": "address0" }} , 
 	{ "name": "p_index_array_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_index_array", "role": "ce0" }} , 
 	{ "name": "p_index_array_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_index_array", "role": "q0" }} , 
 	{ "name": "delta_array_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "delta_array", "role": "address0" }} , 
 	{ "name": "delta_array_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "delta_array", "role": "ce0" }} , 
 	{ "name": "delta_array_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "delta_array", "role": "we0" }} , 
 	{ "name": "delta_array_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "delta_array", "role": "d0" }} , 
 	{ "name": "delta_array_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "delta_array", "role": "q0" }} , 
 	{ "name": "delta_array_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "delta_array", "role": "address1" }} , 
 	{ "name": "delta_array_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "delta_array", "role": "ce1" }} , 
 	{ "name": "delta_array_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "delta_array", "role": "q1" }} , 
 	{ "name": "btwn_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "btwn_buf", "role": "address0" }} , 
 	{ "name": "btwn_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btwn_buf", "role": "ce0" }} , 
 	{ "name": "btwn_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btwn_buf", "role": "we0" }} , 
 	{ "name": "btwn_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "btwn_buf", "role": "d0" }} , 
 	{ "name": "btwn_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "btwn_buf", "role": "q0" }} , 
 	{ "name": "sigma_tmp_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sigma_tmp", "role": "i" }} , 
 	{ "name": "sigma_tmp_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sigma_tmp", "role": "o" }} , 
 	{ "name": "sigma_tmp_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sigma_tmp", "role": "o_ap_vld" }} , 
 	{ "name": "p_array_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "p_array", "role": "address0" }} , 
 	{ "name": "p_array_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_array", "role": "ce0" }} , 
 	{ "name": "p_array_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_array", "role": "q0" }} , 
 	{ "name": "v", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "v", "role": "default" }} , 
 	{ "name": "v_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "v", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_667_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_667_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_667_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_667_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_667_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_667_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_667_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_667_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_667_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_667_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_671_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_671_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_671_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_671_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_671_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_671_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "dut_Pipeline_Dequeue_loop_Computing_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "190872", "EstimateLatencyMax" : "190872",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state3_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_94", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_112", "FromFinalSV" : "3", "FromAddress" : "delta_array_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state37_pp0_iter18_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter18", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_186", "ToInitialSV" : "36", "ToFinalState" : "ap_enable_state37_pp0_iter18_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter18", "ToFinalOperation" : "ap_enable_operation_186", "ToFinalSV" : "36", "ToAddress" : "delta_array_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "12", "II" : "2", "Pragma" : "(top.cpp:272:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_96", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_114", "FromFinalSV" : "3", "FromAddress" : "btwn_buf_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state12_pp0_iter5_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter6", "ToInitialOperation" : "ap_enable_operation_158", "ToInitialSV" : "11", "ToFinalState" : "ap_enable_state12_pp0_iter5_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_158", "ToFinalSV" : "11", "ToAddress" : "btwn_buf_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "12", "II" : "2", "Pragma" : "(top.cpp:271:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state12_pp0_iter5_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_158", "FromInitialSV" : "11", "FromFinalState" : "ap_enable_state12_pp0_iter5_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_158", "FromFinalSV" : "11", "FromAddress" : "btwn_buf_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_96", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_114", "ToFinalSV" : "3", "ToAddress" : "btwn_buf_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "12", "II" : "2", "Pragma" : "(top.cpp:271:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state28_pp0_iter13_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter13", "FromInitialOperation" : "ap_enable_operation_176", "FromInitialSV" : "27", "FromFinalState" : "ap_enable_state29_pp0_iter14_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter14", "FromFinalOperation" : "ap_enable_operation_178", "FromFinalSV" : "28", "FromAddress" : "delta_array_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state37_pp0_iter18_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter18", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_186", "ToInitialSV" : "36", "ToFinalState" : "ap_enable_state37_pp0_iter18_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter18", "ToFinalOperation" : "ap_enable_operation_186", "ToFinalSV" : "36", "ToAddress" : "delta_array_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "12", "II" : "2", "Pragma" : "(top.cpp:272:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state37_pp0_iter18_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter18", "FromInitialOperation" : "ap_enable_operation_186", "FromInitialSV" : "36", "FromFinalState" : "ap_enable_state37_pp0_iter18_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter18", "FromFinalOperation" : "ap_enable_operation_186", "FromFinalSV" : "36", "FromAddress" : "delta_array_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_94", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_112", "ToFinalSV" : "3", "ToAddress" : "delta_array_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "12", "II" : "2", "Pragma" : "(top.cpp:272:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter1_stage0", "ap_enable_state29_pp0_iter14_stage0", "ap_enable_state37_pp0_iter18_stage0"]},
			{"FromInitialState" : "ap_enable_state37_pp0_iter18_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter18", "FromInitialOperation" : "ap_enable_operation_186", "FromInitialSV" : "36", "FromFinalState" : "ap_enable_state37_pp0_iter18_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter18", "FromFinalOperation" : "ap_enable_operation_186", "FromFinalSV" : "36", "FromAddress" : "delta_array_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state28_pp0_iter13_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter13", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter14", "ToInitialOperation" : "ap_enable_operation_176", "ToInitialSV" : "27", "ToFinalState" : "ap_enable_state29_pp0_iter14_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter14", "ToFinalOperation" : "ap_enable_operation_178", "ToFinalSV" : "28", "ToAddress" : "delta_array_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "12", "II" : "2", "Pragma" : "(top.cpp:272:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state28_pp0_iter13_stage1"]}],
		"Port" : [
			{"Name" : "zext_ln265", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln169", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sigma_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_index_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "delta_array", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "delta_tmp", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "btwn_buf", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sigma_tmp", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Dequeue_loop_Computing_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U37", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U38", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_12_no_dsp_1_U39", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dut_Pipeline_Dequeue_loop_Computing_loop {
		zext_ln265 {Type I LastRead 0 FirstWrite -1}
		zext_ln169 {Type I LastRead 0 FirstWrite -1}
		s_array {Type I LastRead 1 FirstWrite -1}
		sigma_array {Type I LastRead 5 FirstWrite -1}
		w {Type IO LastRead 2 FirstWrite 1}
		p_index_array {Type I LastRead 2 FirstWrite -1}
		delta_array {Type IO LastRead 27 FirstWrite 36}
		delta_tmp {Type IO LastRead -1 FirstWrite -1}
		btwn_buf {Type IO LastRead 2 FirstWrite 11}
		sigma_tmp {Type IO LastRead 10 FirstWrite 8}
		p_array {Type I LastRead 3 FirstWrite -1}
		v {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "190872", "Max" : "190872"}
	, {"Name" : "Interval", "Min" : "190872", "Max" : "190872"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln265 { ap_none {  { zext_ln265 in_data 0 16 } } }
	zext_ln169 { ap_none {  { zext_ln169 in_data 0 12 } } }
	s_array { ap_memory {  { s_array_address0 mem_address 1 12 }  { s_array_ce0 mem_ce 1 1 }  { s_array_q0 in_data 0 16 }  { s_array_address1 MemPortADDR2 1 12 }  { s_array_ce1 MemPortCE2 1 1 }  { s_array_q1 in_data 0 16 } } }
	sigma_array { ap_memory {  { sigma_array_address0 mem_address 1 12 }  { sigma_array_ce0 mem_ce 1 1 }  { sigma_array_q0 mem_dout 0 32 } } }
	w { ap_ovld {  { w_i in_data 0 12 }  { w_o out_data 1 12 }  { w_o_ap_vld out_vld 1 1 } } }
	p_index_array { ap_memory {  { p_index_array_address0 mem_address 1 12 }  { p_index_array_ce0 mem_ce 1 1 }  { p_index_array_q0 in_data 0 8 } } }
	delta_array { ap_memory {  { delta_array_address0 mem_address 1 12 }  { delta_array_ce0 mem_ce 1 1 }  { delta_array_we0 mem_we 1 1 }  { delta_array_d0 mem_din 1 32 }  { delta_array_q0 mem_dout 0 32 }  { delta_array_address1 MemPortADDR2 1 12 }  { delta_array_ce1 MemPortCE2 1 1 }  { delta_array_q1 in_data 0 32 } } }
	btwn_buf { ap_memory {  { btwn_buf_address0 mem_address 1 12 }  { btwn_buf_ce0 mem_ce 1 1 }  { btwn_buf_we0 mem_we 1 1 }  { btwn_buf_d0 mem_din 1 32 }  { btwn_buf_q0 mem_dout 0 32 } } }
	sigma_tmp { ap_ovld {  { sigma_tmp_i in_data 0 32 }  { sigma_tmp_o out_data 1 32 }  { sigma_tmp_o_ap_vld out_vld 1 1 } } }
	p_array { ap_memory {  { p_array_address0 mem_address 1 17 }  { p_array_ce0 mem_ce 1 1 }  { p_array_q0 in_data 0 16 } } }
	v { ap_vld {  { v out_data 1 16 }  { v_ap_vld out_vld 1 1 } } }
}
