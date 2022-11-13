set moduleName dut_Pipeline_Queue_loop_Edge_loop
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
set C_modelName {dut_Pipeline_Queue_loop_Edge_loop}
set C_modelType { void 0 }
set C_modelArgList {
	{ q_array int 16 regular {array 3534 { 0 1 } 1 1 } {global 2}  }
	{ v int 16 regular {pointer 2} {global 2}  }
	{ s_array int 16 regular {array 3534 { 0 3 } 0 1 } {global 1}  }
	{ offset_buf int 16 regular {array 3534 { 1 1 } 1 1 } {global 0}  }
	{ dist_array int 16 regular {array 3534 { 2 1 } 1 1 } {global 2}  }
	{ sigma_array int 32 regular {array 3534 { 2 1 } 1 1 } {global 2}  }
	{ q_index int 16 regular {pointer 2} {global 2}  }
	{ column_buf int 16 regular {array 41594 { 1 3 } 1 1 } {global 0}  }
	{ w int 12 regular {pointer 1} {global 1}  }
	{ travel int 1 regular {array 3534 { 2 3 } 1 1 } {global 2}  }
	{ sigma_tmp float 32 regular {pointer 1} {global 1}  }
	{ p_index_array int 8 regular {array 3534 { 0 1 } 1 1 } {global 2}  }
	{ p_array int 16 regular {array 70680 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "q_array", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "v", "interface" : "wire", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "s_array", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "offset_buf", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "dist_array", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "sigma_array", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "q_index", "interface" : "wire", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "column_buf", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "w", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "travel", "interface" : "memory", "bitwidth" : 1, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "sigma_tmp", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "p_index_array", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_array", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 76
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ q_array_address0 sc_out sc_lv 12 signal 0 } 
	{ q_array_ce0 sc_out sc_logic 1 signal 0 } 
	{ q_array_we0 sc_out sc_logic 1 signal 0 } 
	{ q_array_d0 sc_out sc_lv 16 signal 0 } 
	{ q_array_address1 sc_out sc_lv 12 signal 0 } 
	{ q_array_ce1 sc_out sc_logic 1 signal 0 } 
	{ q_array_q1 sc_in sc_lv 16 signal 0 } 
	{ v_i sc_in sc_lv 16 signal 1 } 
	{ v_o sc_out sc_lv 16 signal 1 } 
	{ v_o_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ s_array_address0 sc_out sc_lv 12 signal 2 } 
	{ s_array_ce0 sc_out sc_logic 1 signal 2 } 
	{ s_array_we0 sc_out sc_logic 1 signal 2 } 
	{ s_array_d0 sc_out sc_lv 16 signal 2 } 
	{ offset_buf_address0 sc_out sc_lv 12 signal 3 } 
	{ offset_buf_ce0 sc_out sc_logic 1 signal 3 } 
	{ offset_buf_q0 sc_in sc_lv 16 signal 3 } 
	{ offset_buf_address1 sc_out sc_lv 12 signal 3 } 
	{ offset_buf_ce1 sc_out sc_logic 1 signal 3 } 
	{ offset_buf_q1 sc_in sc_lv 16 signal 3 } 
	{ dist_array_address0 sc_out sc_lv 12 signal 4 } 
	{ dist_array_ce0 sc_out sc_logic 1 signal 4 } 
	{ dist_array_we0 sc_out sc_logic 1 signal 4 } 
	{ dist_array_d0 sc_out sc_lv 16 signal 4 } 
	{ dist_array_q0 sc_in sc_lv 16 signal 4 } 
	{ dist_array_address1 sc_out sc_lv 12 signal 4 } 
	{ dist_array_ce1 sc_out sc_logic 1 signal 4 } 
	{ dist_array_q1 sc_in sc_lv 16 signal 4 } 
	{ sigma_array_address0 sc_out sc_lv 12 signal 5 } 
	{ sigma_array_ce0 sc_out sc_logic 1 signal 5 } 
	{ sigma_array_we0 sc_out sc_logic 1 signal 5 } 
	{ sigma_array_d0 sc_out sc_lv 32 signal 5 } 
	{ sigma_array_q0 sc_in sc_lv 32 signal 5 } 
	{ sigma_array_address1 sc_out sc_lv 12 signal 5 } 
	{ sigma_array_ce1 sc_out sc_logic 1 signal 5 } 
	{ sigma_array_q1 sc_in sc_lv 32 signal 5 } 
	{ q_index_i sc_in sc_lv 16 signal 6 } 
	{ q_index_o sc_out sc_lv 16 signal 6 } 
	{ q_index_o_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ column_buf_address0 sc_out sc_lv 16 signal 7 } 
	{ column_buf_ce0 sc_out sc_logic 1 signal 7 } 
	{ column_buf_q0 sc_in sc_lv 16 signal 7 } 
	{ w sc_out sc_lv 12 signal 8 } 
	{ w_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ travel_address0 sc_out sc_lv 12 signal 9 } 
	{ travel_ce0 sc_out sc_logic 1 signal 9 } 
	{ travel_we0 sc_out sc_logic 1 signal 9 } 
	{ travel_d0 sc_out sc_lv 1 signal 9 } 
	{ travel_q0 sc_in sc_lv 1 signal 9 } 
	{ sigma_tmp sc_out sc_lv 32 signal 10 } 
	{ sigma_tmp_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ p_index_array_address0 sc_out sc_lv 12 signal 11 } 
	{ p_index_array_ce0 sc_out sc_logic 1 signal 11 } 
	{ p_index_array_we0 sc_out sc_logic 1 signal 11 } 
	{ p_index_array_d0 sc_out sc_lv 8 signal 11 } 
	{ p_index_array_address1 sc_out sc_lv 12 signal 11 } 
	{ p_index_array_ce1 sc_out sc_logic 1 signal 11 } 
	{ p_index_array_q1 sc_in sc_lv 8 signal 11 } 
	{ p_array_address0 sc_out sc_lv 17 signal 12 } 
	{ p_array_ce0 sc_out sc_logic 1 signal 12 } 
	{ p_array_we0 sc_out sc_logic 1 signal 12 } 
	{ p_array_d0 sc_out sc_lv 16 signal 12 } 
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
 	{ "name": "q_array_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "q_array", "role": "address0" }} , 
 	{ "name": "q_array_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q_array", "role": "ce0" }} , 
 	{ "name": "q_array_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q_array", "role": "we0" }} , 
 	{ "name": "q_array_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "q_array", "role": "d0" }} , 
 	{ "name": "q_array_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "q_array", "role": "address1" }} , 
 	{ "name": "q_array_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q_array", "role": "ce1" }} , 
 	{ "name": "q_array_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "q_array", "role": "q1" }} , 
 	{ "name": "v_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "v", "role": "i" }} , 
 	{ "name": "v_o", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "v", "role": "o" }} , 
 	{ "name": "v_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "v", "role": "o_ap_vld" }} , 
 	{ "name": "s_array_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "s_array", "role": "address0" }} , 
 	{ "name": "s_array_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_array", "role": "ce0" }} , 
 	{ "name": "s_array_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_array", "role": "we0" }} , 
 	{ "name": "s_array_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "s_array", "role": "d0" }} , 
 	{ "name": "offset_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "offset_buf", "role": "address0" }} , 
 	{ "name": "offset_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "offset_buf", "role": "ce0" }} , 
 	{ "name": "offset_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "offset_buf", "role": "q0" }} , 
 	{ "name": "offset_buf_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "offset_buf", "role": "address1" }} , 
 	{ "name": "offset_buf_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "offset_buf", "role": "ce1" }} , 
 	{ "name": "offset_buf_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "offset_buf", "role": "q1" }} , 
 	{ "name": "dist_array_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dist_array", "role": "address0" }} , 
 	{ "name": "dist_array_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dist_array", "role": "ce0" }} , 
 	{ "name": "dist_array_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dist_array", "role": "we0" }} , 
 	{ "name": "dist_array_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dist_array", "role": "d0" }} , 
 	{ "name": "dist_array_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dist_array", "role": "q0" }} , 
 	{ "name": "dist_array_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dist_array", "role": "address1" }} , 
 	{ "name": "dist_array_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dist_array", "role": "ce1" }} , 
 	{ "name": "dist_array_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dist_array", "role": "q1" }} , 
 	{ "name": "sigma_array_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sigma_array", "role": "address0" }} , 
 	{ "name": "sigma_array_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sigma_array", "role": "ce0" }} , 
 	{ "name": "sigma_array_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sigma_array", "role": "we0" }} , 
 	{ "name": "sigma_array_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sigma_array", "role": "d0" }} , 
 	{ "name": "sigma_array_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sigma_array", "role": "q0" }} , 
 	{ "name": "sigma_array_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sigma_array", "role": "address1" }} , 
 	{ "name": "sigma_array_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sigma_array", "role": "ce1" }} , 
 	{ "name": "sigma_array_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sigma_array", "role": "q1" }} , 
 	{ "name": "q_index_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "q_index", "role": "i" }} , 
 	{ "name": "q_index_o", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "q_index", "role": "o" }} , 
 	{ "name": "q_index_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "q_index", "role": "o_ap_vld" }} , 
 	{ "name": "column_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "column_buf", "role": "address0" }} , 
 	{ "name": "column_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "column_buf", "role": "ce0" }} , 
 	{ "name": "column_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "column_buf", "role": "q0" }} , 
 	{ "name": "w", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "w", "role": "default" }} , 
 	{ "name": "w_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w", "role": "ap_vld" }} , 
 	{ "name": "travel_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "travel", "role": "address0" }} , 
 	{ "name": "travel_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "travel", "role": "ce0" }} , 
 	{ "name": "travel_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "travel", "role": "we0" }} , 
 	{ "name": "travel_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "travel", "role": "d0" }} , 
 	{ "name": "travel_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "travel", "role": "q0" }} , 
 	{ "name": "sigma_tmp", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sigma_tmp", "role": "default" }} , 
 	{ "name": "sigma_tmp_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sigma_tmp", "role": "ap_vld" }} , 
 	{ "name": "p_index_array_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_index_array", "role": "address0" }} , 
 	{ "name": "p_index_array_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_index_array", "role": "ce0" }} , 
 	{ "name": "p_index_array_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_index_array", "role": "we0" }} , 
 	{ "name": "p_index_array_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_index_array", "role": "d0" }} , 
 	{ "name": "p_index_array_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_index_array", "role": "address1" }} , 
 	{ "name": "p_index_array_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_index_array", "role": "ce1" }} , 
 	{ "name": "p_index_array_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_index_array", "role": "q1" }} , 
 	{ "name": "p_array_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "p_array", "role": "address0" }} , 
 	{ "name": "p_array_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_array", "role": "ce0" }} , 
 	{ "name": "p_array_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_array", "role": "we0" }} , 
 	{ "name": "p_array_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_array", "role": "d0" }} , 
 	{ "name": "grp_fu_667_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_667_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_667_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_667_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_667_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_667_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_667_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_667_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_667_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_667_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_671_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_671_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_671_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_671_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_671_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_671_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dut_Pipeline_Queue_loop_Edge_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "268609", "EstimateLatencyMax" : "268609",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state2_pp0_iter0_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_50", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_53", "FromFinalSV" : "2", "FromAddress" : "q_array_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state10_pp0_iter4_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_122", "ToInitialSV" : "9", "ToFinalState" : "ap_enable_state10_pp0_iter4_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_122", "ToFinalSV" : "9", "ToAddress" : "q_array_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "12", "II" : "2", "Pragma" : "(top.cpp:221:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter2_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_78", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state7_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_87", "FromFinalSV" : "6", "FromAddress" : "dist_array_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state11_pp0_iter5_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter6", "ToInitialOperation" : "ap_enable_operation_135", "ToInitialSV" : "10", "ToFinalState" : "ap_enable_state11_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_135", "ToFinalSV" : "10", "ToAddress" : "dist_array_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "12", "II" : "2", "Pragma" : "(top.cpp:222:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_99", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_106", "FromFinalSV" : "8", "FromAddress" : "sigma_array_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state27_pp0_iter13_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter13", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_186", "ToInitialSV" : "26", "ToFinalState" : "ap_enable_state27_pp0_iter13_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter13", "ToFinalOperation" : "ap_enable_operation_186", "ToFinalSV" : "26", "ToAddress" : "sigma_array_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "12", "II" : "2", "Pragma" : "(top.cpp:223:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_102", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_111", "FromFinalSV" : "8", "FromAddress" : "dist_array_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state11_pp0_iter5_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter6", "ToInitialOperation" : "ap_enable_operation_135", "ToInitialSV" : "10", "ToFinalState" : "ap_enable_state11_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_135", "ToFinalSV" : "10", "ToAddress" : "dist_array_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "12", "II" : "2", "Pragma" : "(top.cpp:222:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_104", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_113", "FromFinalSV" : "8", "FromAddress" : "travel_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_119", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_119", "ToFinalSV" : "8", "ToAddress" : "travel_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "12", "II" : "2", "Pragma" : "(top.cpp:225:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_119", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_119", "FromFinalSV" : "8", "FromAddress" : "travel_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_104", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_113", "ToFinalSV" : "8", "ToAddress" : "travel_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "12", "II" : "2", "Pragma" : "(top.cpp:225:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state8_pp0_iter3_stage1", "ap_enable_state10_pp0_iter4_stage1"]},
			{"FromInitialState" : "ap_enable_state10_pp0_iter4_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_122", "FromInitialSV" : "9", "FromFinalState" : "ap_enable_state10_pp0_iter4_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_122", "FromFinalSV" : "9", "FromAddress" : "q_array_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter0_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_50", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_53", "ToFinalSV" : "2", "ToAddress" : "q_array_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "12", "II" : "2", "Pragma" : "(top.cpp:221:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter0_stage1", "ap_enable_state6_pp0_iter2_stage1", "ap_enable_state8_pp0_iter3_stage1", "ap_enable_state10_pp0_iter4_stage1"]},
			{"FromInitialState" : "ap_enable_state11_pp0_iter5_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_135", "FromInitialSV" : "10", "FromFinalState" : "ap_enable_state11_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_135", "FromFinalSV" : "10", "FromAddress" : "dist_array_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter2_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_78", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state7_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_87", "ToFinalSV" : "6", "ToAddress" : "dist_array_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "12", "II" : "2", "Pragma" : "(top.cpp:222:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter2_stage1", "ap_enable_state8_pp0_iter3_stage1", "ap_enable_state10_pp0_iter4_stage1", "ap_enable_state12_pp0_iter5_stage1"]},
			{"FromInitialState" : "ap_enable_state11_pp0_iter5_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_135", "FromInitialSV" : "10", "FromFinalState" : "ap_enable_state11_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_135", "FromFinalSV" : "10", "FromAddress" : "dist_array_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_102", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_111", "ToFinalSV" : "8", "ToAddress" : "dist_array_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "12", "II" : "2", "Pragma" : "(top.cpp:222:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state8_pp0_iter3_stage1", "ap_enable_state10_pp0_iter4_stage1", "ap_enable_state12_pp0_iter5_stage1"]},
			{"FromInitialState" : "ap_enable_state10_pp0_iter4_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_127", "FromInitialSV" : "9", "FromFinalState" : "ap_enable_state11_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_137", "FromFinalSV" : "10", "FromAddress" : "sigma_array_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state27_pp0_iter13_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter13", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_186", "ToInitialSV" : "26", "ToFinalState" : "ap_enable_state27_pp0_iter13_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter13", "ToFinalOperation" : "ap_enable_operation_186", "ToFinalSV" : "26", "ToAddress" : "sigma_array_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "12", "II" : "2", "Pragma" : "(top.cpp:223:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state10_pp0_iter4_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_131", "FromInitialSV" : "9", "FromFinalState" : "ap_enable_state11_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_139", "FromFinalSV" : "10", "FromAddress" : "p_index_array_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state12_pp0_iter5_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter6", "ToInitialOperation" : "ap_enable_operation_148", "ToInitialSV" : "11", "ToFinalState" : "ap_enable_state12_pp0_iter5_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_148", "ToFinalSV" : "11", "ToAddress" : "p_index_array_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "12", "II" : "2", "Pragma" : "(top.cpp:224:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state12_pp0_iter5_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_148", "FromInitialSV" : "11", "FromFinalState" : "ap_enable_state12_pp0_iter5_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_148", "FromFinalSV" : "11", "FromAddress" : "p_index_array_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state10_pp0_iter4_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_131", "ToInitialSV" : "9", "ToFinalState" : "ap_enable_state11_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_139", "ToFinalSV" : "10", "ToAddress" : "p_index_array_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "12", "II" : "2", "Pragma" : "(top.cpp:224:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state10_pp0_iter4_stage1", "ap_enable_state12_pp0_iter5_stage1"]},
			{"FromInitialState" : "ap_enable_state27_pp0_iter13_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter13", "FromInitialOperation" : "ap_enable_operation_186", "FromInitialSV" : "26", "FromFinalState" : "ap_enable_state27_pp0_iter13_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter13", "FromFinalOperation" : "ap_enable_operation_186", "FromFinalSV" : "26", "FromAddress" : "sigma_array_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_99", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_106", "ToFinalSV" : "8", "ToAddress" : "sigma_array_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "12", "II" : "2", "Pragma" : "(top.cpp:223:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state8_pp0_iter3_stage1", "ap_enable_state10_pp0_iter4_stage1", "ap_enable_state12_pp0_iter5_stage1"]},
			{"FromInitialState" : "ap_enable_state27_pp0_iter13_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter13", "FromInitialOperation" : "ap_enable_operation_186", "FromInitialSV" : "26", "FromFinalState" : "ap_enable_state27_pp0_iter13_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter13", "FromFinalOperation" : "ap_enable_operation_186", "FromFinalSV" : "26", "FromAddress" : "sigma_array_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state10_pp0_iter4_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_127", "ToInitialSV" : "9", "ToFinalState" : "ap_enable_state11_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_137", "ToFinalSV" : "10", "ToAddress" : "sigma_array_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "12", "II" : "2", "Pragma" : "(top.cpp:223:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state10_pp0_iter4_stage1", "ap_enable_state12_pp0_iter5_stage1"]}],
		"Port" : [
			{"Name" : "num_edge", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "q_array", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "v", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "s_array", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "offset_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "base_edge", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dist_array", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dist_tmp", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sigma_array", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sigma_tmp_v", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "q_index_tmp", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "q_index", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dist_tmp_w", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "column_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "travel", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sigma_tmp", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_index_array", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_array", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Queue_loop_Edge_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter13", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter13", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dut_Pipeline_Queue_loop_Edge_loop {
		num_edge {Type IO LastRead -1 FirstWrite -1}
		q_array {Type IO LastRead 1 FirstWrite 9}
		v {Type IO LastRead 10 FirstWrite 8}
		s_array {Type O LastRead -1 FirstWrite 3}
		offset_buf {Type I LastRead 4 FirstWrite -1}
		base_edge {Type IO LastRead -1 FirstWrite -1}
		dist_array {Type IO LastRead 7 FirstWrite 10}
		dist_tmp {Type IO LastRead -1 FirstWrite -1}
		sigma_array {Type IO LastRead 9 FirstWrite 26}
		sigma_tmp_v {Type IO LastRead -1 FirstWrite -1}
		q_index_tmp {Type IO LastRead -1 FirstWrite -1}
		q_index {Type IO LastRead 8 FirstWrite 9}
		dist_tmp_w {Type IO LastRead -1 FirstWrite -1}
		column_buf {Type I LastRead 5 FirstWrite -1}
		w {Type O LastRead -1 FirstWrite 6}
		travel {Type IO LastRead 7 FirstWrite 8}
		sigma_tmp {Type O LastRead -1 FirstWrite 23}
		p_index_array {Type IO LastRead 9 FirstWrite 11}
		p_array {Type O LastRead -1 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "268609", "Max" : "268609"}
	, {"Name" : "Interval", "Min" : "268609", "Max" : "268609"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	q_array { ap_memory {  { q_array_address0 mem_address 1 12 }  { q_array_ce0 mem_ce 1 1 }  { q_array_we0 mem_we 1 1 }  { q_array_d0 mem_din 1 16 }  { q_array_address1 MemPortADDR2 1 12 }  { q_array_ce1 MemPortCE2 1 1 }  { q_array_q1 in_data 0 16 } } }
	v { ap_ovld {  { v_i in_data 0 16 }  { v_o out_data 1 16 }  { v_o_ap_vld out_vld 1 1 } } }
	s_array { ap_memory {  { s_array_address0 mem_address 1 12 }  { s_array_ce0 mem_ce 1 1 }  { s_array_we0 mem_we 1 1 }  { s_array_d0 mem_din 1 16 } } }
	offset_buf { ap_memory {  { offset_buf_address0 mem_address 1 12 }  { offset_buf_ce0 mem_ce 1 1 }  { offset_buf_q0 in_data 0 16 }  { offset_buf_address1 MemPortADDR2 1 12 }  { offset_buf_ce1 MemPortCE2 1 1 }  { offset_buf_q1 in_data 0 16 } } }
	dist_array { ap_memory {  { dist_array_address0 mem_address 1 12 }  { dist_array_ce0 mem_ce 1 1 }  { dist_array_we0 mem_we 1 1 }  { dist_array_d0 mem_din 1 16 }  { dist_array_q0 in_data 0 16 }  { dist_array_address1 MemPortADDR2 1 12 }  { dist_array_ce1 MemPortCE2 1 1 }  { dist_array_q1 in_data 0 16 } } }
	sigma_array { ap_memory {  { sigma_array_address0 mem_address 1 12 }  { sigma_array_ce0 mem_ce 1 1 }  { sigma_array_we0 mem_we 1 1 }  { sigma_array_d0 mem_din 1 32 }  { sigma_array_q0 mem_dout 0 32 }  { sigma_array_address1 MemPortADDR2 1 12 }  { sigma_array_ce1 MemPortCE2 1 1 }  { sigma_array_q1 in_data 0 32 } } }
	q_index { ap_ovld {  { q_index_i in_data 0 16 }  { q_index_o out_data 1 16 }  { q_index_o_ap_vld out_vld 1 1 } } }
	column_buf { ap_memory {  { column_buf_address0 mem_address 1 16 }  { column_buf_ce0 mem_ce 1 1 }  { column_buf_q0 in_data 0 16 } } }
	w { ap_vld {  { w out_data 1 12 }  { w_ap_vld out_vld 1 1 } } }
	travel { ap_memory {  { travel_address0 mem_address 1 12 }  { travel_ce0 mem_ce 1 1 }  { travel_we0 mem_we 1 1 }  { travel_d0 mem_din 1 1 }  { travel_q0 in_data 0 1 } } }
	sigma_tmp { ap_vld {  { sigma_tmp out_data 1 32 }  { sigma_tmp_ap_vld out_vld 1 1 } } }
	p_index_array { ap_memory {  { p_index_array_address0 mem_address 1 12 }  { p_index_array_ce0 mem_ce 1 1 }  { p_index_array_we0 mem_we 1 1 }  { p_index_array_d0 mem_din 1 8 }  { p_index_array_address1 MemPortADDR2 1 12 }  { p_index_array_ce1 MemPortCE2 1 1 }  { p_index_array_q1 in_data 0 8 } } }
	p_array { ap_memory {  { p_array_address0 mem_address 1 17 }  { p_array_ce0 mem_ce 1 1 }  { p_array_we0 mem_we 1 1 }  { p_array_d0 mem_din 1 16 } } }
}
