set moduleName dut
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {dut}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 32 regular {axi_master 0}  }
	{ gmem1 int 32 regular {axi_master 0}  }
	{ gmem3 int 32 regular {axi_master 1}  }
	{ gmem6 int 32 unused {axi_master 0}  }
	{ gmem7 int 32 unused {axi_master 0}  }
	{ gmem8 int 32 unused {axi_master 0}  }
	{ gmem9 int 32 unused {axi_master 0}  }
	{ numVert int 32 regular {axi_slave 0}  }
	{ numEdge int 32 regular {axi_slave 0}  }
	{ offset int 64 regular {axi_slave 0}  }
	{ column int 64 regular {axi_slave 0}  }
	{ btwn int 64 regular {axi_slave 0}  }
	{ tmp0 int 64 unused {axi_slave 0}  }
	{ tmp1 int 64 unused {axi_slave 0}  }
	{ tmp2 int 64 unused {axi_slave 0}  }
	{ tmp3 int 64 unused {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "offset","offset": { "type": "dynamic","port_name": "offset","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "column","offset": { "type": "dynamic","port_name": "column","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem3", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "btwn","offset": { "type": "dynamic","port_name": "btwn","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "gmem6", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "tmp0","offset": { "type": "dynamic","port_name": "tmp0","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem7", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "tmp1","offset": { "type": "dynamic","port_name": "tmp1","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem8", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "tmp2","offset": { "type": "dynamic","port_name": "tmp2","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem9", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "tmp3","offset": { "type": "dynamic","port_name": "tmp3","bundle": "control"},}]}]} , 
 	{ "Name" : "numVert", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "numEdge", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "offset", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":43}} , 
 	{ "Name" : "column", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":44}, "offset_end" : {"in":55}} , 
 	{ "Name" : "btwn", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":67}} , 
 	{ "Name" : "tmp0", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":68}, "offset_end" : {"in":79}} , 
 	{ "Name" : "tmp1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":80}, "offset_end" : {"in":91}} , 
 	{ "Name" : "tmp2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":92}, "offset_end" : {"in":103}} , 
 	{ "Name" : "tmp3", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":104}, "offset_end" : {"in":115}} ]}
# RTL Port declarations: 
set portNum 335
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem3_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem3_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem3_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem3_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem3_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem3_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem3_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem3_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem3_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem3_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem3_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem3_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem3_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem3_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem3_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem3_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem3_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem3_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem3_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem3_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem3_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem3_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem3_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem3_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem3_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem3_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem3_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem3_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem3_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem3_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem3_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem3_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem3_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem3_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem3_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem3_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_gmem3_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem3_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem3_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem3_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem3_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem3_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem3_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem3_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem3_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem6_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem6_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem6_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem6_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem6_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem6_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem6_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem6_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem6_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem6_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem6_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem6_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem6_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem6_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem6_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem6_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem6_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem6_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem6_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem6_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem6_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem6_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem6_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem6_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem6_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem6_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem6_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem6_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem6_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem6_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem6_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem6_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem6_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem6_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem6_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem6_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_gmem6_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem6_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem6_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem6_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem6_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem6_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem6_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem6_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem6_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem7_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem7_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem7_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem7_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem7_AWLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_gmem7_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem7_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem7_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem7_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem7_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem7_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem7_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem7_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem7_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem7_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem7_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_gmem7_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem7_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem7_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem7_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem7_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem7_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem7_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem7_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem7_ARLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_gmem7_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem7_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem7_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem7_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem7_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem7_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem7_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem7_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem7_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem7_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem7_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_gmem7_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem7_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem7_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem7_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem7_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem7_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem7_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem7_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem7_BUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem8_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem8_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem8_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_gmem8_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem8_AWLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_gmem8_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem8_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem8_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem8_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem8_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem8_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem8_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem8_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem8_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem8_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem8_WDATA sc_out sc_lv 32 signal 5 } 
	{ m_axi_gmem8_WSTRB sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem8_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem8_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem8_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem8_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem8_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem8_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_gmem8_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem8_ARLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_gmem8_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem8_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem8_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem8_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem8_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem8_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem8_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem8_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem8_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem8_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem8_RDATA sc_in sc_lv 32 signal 5 } 
	{ m_axi_gmem8_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem8_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem8_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem8_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_gmem8_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem8_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem8_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_gmem8_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem8_BUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem9_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem9_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem9_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_gmem9_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem9_AWLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_gmem9_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem9_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem9_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem9_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem9_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem9_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem9_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem9_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem9_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem9_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem9_WDATA sc_out sc_lv 32 signal 6 } 
	{ m_axi_gmem9_WSTRB sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem9_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem9_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem9_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem9_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem9_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem9_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_gmem9_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem9_ARLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_gmem9_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem9_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem9_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem9_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem9_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem9_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem9_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem9_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem9_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem9_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem9_RDATA sc_in sc_lv 32 signal 6 } 
	{ m_axi_gmem9_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem9_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem9_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem9_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_gmem9_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem9_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem9_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_gmem9_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem9_BUSER sc_in sc_lv 1 signal 6 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"dut","role":"start","value":"0","valid_bit":"0"},{"name":"dut","role":"continue","value":"0","valid_bit":"4"},{"name":"dut","role":"auto_start","value":"0","valid_bit":"7"},{"name":"numVert","role":"data","value":"16"},{"name":"numEdge","role":"data","value":"24"},{"name":"offset","role":"data","value":"32"},{"name":"column","role":"data","value":"44"},{"name":"btwn","role":"data","value":"56"},{"name":"tmp0","role":"data","value":"68"},{"name":"tmp1","role":"data","value":"80"},{"name":"tmp2","role":"data","value":"92"},{"name":"tmp3","role":"data","value":"104"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"dut","role":"start","value":"0","valid_bit":"0"},{"name":"dut","role":"done","value":"0","valid_bit":"1"},{"name":"dut","role":"idle","value":"0","valid_bit":"2"},{"name":"dut","role":"ready","value":"0","valid_bit":"3"},{"name":"dut","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WID" }} , 
 	{ "name": "m_axi_gmem3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RID" }} , 
 	{ "name": "m_axi_gmem3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BID" }} , 
 	{ "name": "m_axi_gmem3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem6_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem6_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem6_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem6", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem6_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem6_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem6", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem6_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem6", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem6_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem6", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem6_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem6", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem6_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem6", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem6_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem6", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem6_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem6", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem6_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem6", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem6_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem6_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem6_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem6_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem6", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem6_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem6", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem6_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem6_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "WID" }} , 
 	{ "name": "m_axi_gmem6_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem6_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem6_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem6_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem6", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem6_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem6_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem6", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem6_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem6", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem6_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem6", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem6_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem6", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem6_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem6", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem6_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem6", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem6_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem6", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem6_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem6", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem6_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem6_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem6_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem6_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem6", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem6_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem6_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "RID" }} , 
 	{ "name": "m_axi_gmem6_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem6_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem6", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem6_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem6_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem6_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem6", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem6_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "BID" }} , 
 	{ "name": "m_axi_gmem6_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem7_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem7", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem7_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem7", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem7_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem7", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem7_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem7", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem7_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem7", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem7_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem7", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem7_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem7", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem7_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem7", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem7_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem7", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem7_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem7", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem7_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem7", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem7_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem7", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem7_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem7", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem7_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem7", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem7_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem7", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem7_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem7", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem7_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem7", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem7_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem7", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem7_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem7", "role": "WID" }} , 
 	{ "name": "m_axi_gmem7_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem7", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem7_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem7", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem7_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem7", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem7_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem7", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem7_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem7", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem7_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem7", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem7_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem7", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem7_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem7", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem7_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem7", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem7_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem7", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem7_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem7", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem7_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem7", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem7_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem7", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem7_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem7", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem7_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem7", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem7_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem7", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem7_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem7", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem7_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem7", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem7_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem7", "role": "RID" }} , 
 	{ "name": "m_axi_gmem7_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem7", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem7_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem7", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem7_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem7", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem7_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem7", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem7_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem7", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem7_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem7", "role": "BID" }} , 
 	{ "name": "m_axi_gmem7_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem7", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem8_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem8", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem8_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem8", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem8_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem8", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem8_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem8", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem8_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem8", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem8_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem8", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem8_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem8", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem8_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem8", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem8_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem8", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem8_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem8", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem8_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem8", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem8_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem8", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem8_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem8", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem8_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem8", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem8_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem8", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem8_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem8", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem8_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem8", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem8_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem8", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem8_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem8", "role": "WID" }} , 
 	{ "name": "m_axi_gmem8_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem8", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem8_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem8", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem8_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem8", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem8_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem8", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem8_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem8", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem8_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem8", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem8_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem8", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem8_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem8", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem8_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem8", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem8_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem8", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem8_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem8", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem8_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem8", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem8_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem8", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem8_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem8", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem8_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem8", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem8_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem8", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem8_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem8", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem8_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem8", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem8_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem8", "role": "RID" }} , 
 	{ "name": "m_axi_gmem8_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem8", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem8_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem8", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem8_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem8", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem8_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem8", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem8_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem8", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem8_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem8", "role": "BID" }} , 
 	{ "name": "m_axi_gmem8_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem8", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem9_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem9", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem9_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem9", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem9_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem9", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem9_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem9", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem9_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem9", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem9_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem9", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem9_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem9", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem9_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem9", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem9_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem9", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem9_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem9", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem9_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem9", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem9_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem9", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem9_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem9", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem9_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem9", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem9_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem9", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem9_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem9", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem9_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem9", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem9_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem9", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem9_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem9", "role": "WID" }} , 
 	{ "name": "m_axi_gmem9_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem9", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem9_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem9", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem9_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem9", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem9_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem9", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem9_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem9", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem9_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem9", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem9_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem9", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem9_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem9", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem9_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem9", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem9_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem9", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem9_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem9", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem9_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem9", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem9_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem9", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem9_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem9", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem9_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem9", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem9_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem9", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem9_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem9", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem9_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem9", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem9_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem9", "role": "RID" }} , 
 	{ "name": "m_axi_gmem9_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem9", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem9_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem9", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem9_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem9", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem9_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem9", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem9_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem9", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem9_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem9", "role": "BID" }} , 
 	{ "name": "m_axi_gmem9_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem9", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "14", "16", "18", "20", "25", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "dut",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "508239", "EstimateLatencyMax" : "1636372031",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_dut_Pipeline_Store_vertice_loop_fu_259", "Port" : "gmem0", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_dut_Pipeline_Store_edge_loop_fu_272", "Port" : "gmem1", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "gmem3", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem3_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem3_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_dut_Pipeline_Output_loop_fu_371", "Port" : "gmem3", "Inst_start_state" : "51", "Inst_end_state" : "52"}]},
			{"Name" : "gmem6", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem7", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem8", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem9", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "numVert", "Type" : "None", "Direction" : "I"},
			{"Name" : "numEdge", "Type" : "None", "Direction" : "I"},
			{"Name" : "offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "column", "Type" : "None", "Direction" : "I"},
			{"Name" : "btwn", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp0", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp3", "Type" : "None", "Direction" : "I"},
			{"Name" : "offset_buf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_dut_Pipeline_Queue_loop_Edge_loop_fu_303", "Port" : "offset_buf", "Inst_start_state" : "46", "Inst_end_state" : "47"},
					{"ID" : "12", "SubInstance" : "grp_dut_Pipeline_Store_vertice_loop_fu_259", "Port" : "offset_buf", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "btwn_buf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_dut_Pipeline_Store_vertice_loop_fu_259", "Port" : "btwn_buf", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "20", "SubInstance" : "grp_dut_Pipeline_Dequeue_loop_Computing_loop_fu_345", "Port" : "btwn_buf", "Inst_start_state" : "48", "Inst_end_state" : "49"},
					{"ID" : "25", "SubInstance" : "grp_dut_Pipeline_Output_loop_fu_371", "Port" : "btwn_buf", "Inst_start_state" : "51", "Inst_end_state" : "52"}]},
			{"Name" : "column_buf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_dut_Pipeline_Queue_loop_Edge_loop_fu_303", "Port" : "column_buf", "Inst_start_state" : "46", "Inst_end_state" : "47"},
					{"ID" : "14", "SubInstance" : "grp_dut_Pipeline_Store_edge_loop_fu_272", "Port" : "column_buf", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "q_index", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_dut_Pipeline_Queue_loop_Edge_loop_fu_303", "Port" : "q_index", "Inst_start_state" : "46", "Inst_end_state" : "47"}]},
			{"Name" : "dist_array", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_dut_Pipeline_Queue_loop_Edge_loop_fu_303", "Port" : "dist_array", "Inst_start_state" : "46", "Inst_end_state" : "47"},
					{"ID" : "16", "SubInstance" : "grp_dut_Pipeline_Clear_loop_fu_282", "Port" : "dist_array", "Inst_start_state" : "44", "Inst_end_state" : "45"}]},
			{"Name" : "sigma_array", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_dut_Pipeline_Queue_loop_Edge_loop_fu_303", "Port" : "sigma_array", "Inst_start_state" : "46", "Inst_end_state" : "47"},
					{"ID" : "16", "SubInstance" : "grp_dut_Pipeline_Clear_loop_fu_282", "Port" : "sigma_array", "Inst_start_state" : "44", "Inst_end_state" : "45"},
					{"ID" : "20", "SubInstance" : "grp_dut_Pipeline_Dequeue_loop_Computing_loop_fu_345", "Port" : "sigma_array", "Inst_start_state" : "48", "Inst_end_state" : "49"}]},
			{"Name" : "travel", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_dut_Pipeline_Queue_loop_Edge_loop_fu_303", "Port" : "travel", "Inst_start_state" : "46", "Inst_end_state" : "47"},
					{"ID" : "16", "SubInstance" : "grp_dut_Pipeline_Clear_loop_fu_282", "Port" : "travel", "Inst_start_state" : "44", "Inst_end_state" : "45"}]},
			{"Name" : "s_array", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_dut_Pipeline_Queue_loop_Edge_loop_fu_303", "Port" : "s_array", "Inst_start_state" : "46", "Inst_end_state" : "47"},
					{"ID" : "16", "SubInstance" : "grp_dut_Pipeline_Clear_loop_fu_282", "Port" : "s_array", "Inst_start_state" : "44", "Inst_end_state" : "45"},
					{"ID" : "20", "SubInstance" : "grp_dut_Pipeline_Dequeue_loop_Computing_loop_fu_345", "Port" : "s_array", "Inst_start_state" : "48", "Inst_end_state" : "49"}]},
			{"Name" : "p_index_array", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_dut_Pipeline_Queue_loop_Edge_loop_fu_303", "Port" : "p_index_array", "Inst_start_state" : "46", "Inst_end_state" : "47"},
					{"ID" : "16", "SubInstance" : "grp_dut_Pipeline_Clear_loop_fu_282", "Port" : "p_index_array", "Inst_start_state" : "44", "Inst_end_state" : "45"},
					{"ID" : "20", "SubInstance" : "grp_dut_Pipeline_Dequeue_loop_Computing_loop_fu_345", "Port" : "p_index_array", "Inst_start_state" : "48", "Inst_end_state" : "49"}]},
			{"Name" : "delta_array", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_dut_Pipeline_Clear_loop_fu_282", "Port" : "delta_array", "Inst_start_state" : "44", "Inst_end_state" : "45"},
					{"ID" : "20", "SubInstance" : "grp_dut_Pipeline_Dequeue_loop_Computing_loop_fu_345", "Port" : "delta_array", "Inst_start_state" : "48", "Inst_end_state" : "49"}]},
			{"Name" : "q_array", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_dut_Pipeline_Queue_loop_Edge_loop_fu_303", "Port" : "q_array", "Inst_start_state" : "46", "Inst_end_state" : "47"},
					{"ID" : "16", "SubInstance" : "grp_dut_Pipeline_Clear_loop_fu_282", "Port" : "q_array", "Inst_start_state" : "44", "Inst_end_state" : "45"}]},
			{"Name" : "num_edge", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_dut_Pipeline_Queue_loop_Edge_loop_fu_303", "Port" : "num_edge", "Inst_start_state" : "46", "Inst_end_state" : "47"}]},
			{"Name" : "v", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_dut_Pipeline_Queue_loop_Edge_loop_fu_303", "Port" : "v", "Inst_start_state" : "46", "Inst_end_state" : "47"},
					{"ID" : "20", "SubInstance" : "grp_dut_Pipeline_Dequeue_loop_Computing_loop_fu_345", "Port" : "v", "Inst_start_state" : "48", "Inst_end_state" : "49"}]},
			{"Name" : "base_edge", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_dut_Pipeline_Queue_loop_Edge_loop_fu_303", "Port" : "base_edge", "Inst_start_state" : "46", "Inst_end_state" : "47"}]},
			{"Name" : "dist_tmp", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_dut_Pipeline_Queue_loop_Edge_loop_fu_303", "Port" : "dist_tmp", "Inst_start_state" : "46", "Inst_end_state" : "47"}]},
			{"Name" : "sigma_tmp_v", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_dut_Pipeline_Queue_loop_Edge_loop_fu_303", "Port" : "sigma_tmp_v", "Inst_start_state" : "46", "Inst_end_state" : "47"}]},
			{"Name" : "q_index_tmp", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_dut_Pipeline_Queue_loop_Edge_loop_fu_303", "Port" : "q_index_tmp", "Inst_start_state" : "46", "Inst_end_state" : "47"}]},
			{"Name" : "dist_tmp_w", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_dut_Pipeline_Queue_loop_Edge_loop_fu_303", "Port" : "dist_tmp_w", "Inst_start_state" : "46", "Inst_end_state" : "47"}]},
			{"Name" : "w", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_dut_Pipeline_Queue_loop_Edge_loop_fu_303", "Port" : "w", "Inst_start_state" : "46", "Inst_end_state" : "47"},
					{"ID" : "20", "SubInstance" : "grp_dut_Pipeline_Dequeue_loop_Computing_loop_fu_345", "Port" : "w", "Inst_start_state" : "48", "Inst_end_state" : "49"}]},
			{"Name" : "sigma_tmp", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_dut_Pipeline_Queue_loop_Edge_loop_fu_303", "Port" : "sigma_tmp", "Inst_start_state" : "46", "Inst_end_state" : "47"},
					{"ID" : "20", "SubInstance" : "grp_dut_Pipeline_Dequeue_loop_Computing_loop_fu_345", "Port" : "sigma_tmp", "Inst_start_state" : "48", "Inst_end_state" : "49"}]},
			{"Name" : "p_array", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_dut_Pipeline_Queue_loop_Edge_loop_fu_303", "Port" : "p_array", "Inst_start_state" : "46", "Inst_end_state" : "47"},
					{"ID" : "20", "SubInstance" : "grp_dut_Pipeline_Dequeue_loop_Computing_loop_fu_345", "Port" : "p_array", "Inst_start_state" : "48", "Inst_end_state" : "49"}]},
			{"Name" : "delta_tmp", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_dut_Pipeline_Dequeue_loop_Computing_loop_fu_345", "Port" : "delta_tmp", "Inst_start_state" : "48", "Inst_end_state" : "49"}]}],
		"Loop" : [
			{"Name" : "Main_loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "88", "FirstState" : "ap_ST_fsm_state43", "LastState" : ["ap_ST_fsm_state49"], "QuitState" : ["ap_ST_fsm_state43"], "PreState" : ["ap_ST_fsm_state42"], "PostState" : ["ap_ST_fsm_state50"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.offset_buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.btwn_buf_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.column_buf_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dist_array_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sigma_array_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.travel_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_array_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_index_array_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.delta_array_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.q_array_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_array_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_Store_vertice_loop_fu_259", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "dut_Pipeline_Store_vertice_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3538", "EstimateLatencyMax" : "3538",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln145", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"},
			{"Name" : "numVert", "Type" : "None", "Direction" : "I"},
			{"Name" : "offset_buf", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "btwn_buf", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Store_vertice_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_Store_vertice_loop_fu_259.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_Store_edge_loop_fu_272", "Parent" : "0", "Child" : ["15"],
		"CDFG" : "dut_Pipeline_Store_edge_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41597", "EstimateLatencyMax" : "41597",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln154", "Type" : "None", "Direction" : "I"},
			{"Name" : "numEdge", "Type" : "None", "Direction" : "I"},
			{"Name" : "column_buf", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Store_edge_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_Store_edge_loop_fu_272.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_Clear_loop_fu_282", "Parent" : "0", "Child" : ["17"],
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
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_Clear_loop_fu_282.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_Queue_loop_Edge_loop_fu_303", "Parent" : "0", "Child" : ["19"],
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
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_Queue_loop_Edge_loop_fu_303.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_Dequeue_loop_Computing_loop_fu_345", "Parent" : "0", "Child" : ["21", "22", "23", "24"],
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
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_Dequeue_loop_Computing_loop_fu_345.fadd_32ns_32ns_32_7_full_dsp_1_U37", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_Dequeue_loop_Computing_loop_fu_345.fmul_32ns_32ns_32_4_max_dsp_1_U38", "Parent" : "20"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_Dequeue_loop_Computing_loop_fu_345.fdiv_32ns_32ns_32_12_no_dsp_1_U39", "Parent" : "20"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_Dequeue_loop_Computing_loop_fu_345.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_Output_loop_fu_371", "Parent" : "0", "Child" : ["26"],
		"CDFG" : "dut_Pipeline_Output_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3537", "EstimateLatencyMax" : "3537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem3", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem3_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln300", "Type" : "None", "Direction" : "I"},
			{"Name" : "numVert", "Type" : "None", "Direction" : "I"},
			{"Name" : "btwn_buf", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Output_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_Output_loop_fu_371.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem0_m_axi_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem1_m_axi_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem3_m_axi_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U58", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitofp_32ns_32_5_no_dsp_1_U59", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dut {
		gmem0 {Type I LastRead 2 FirstWrite -1}
		gmem1 {Type I LastRead 2 FirstWrite -1}
		gmem3 {Type O LastRead 46 FirstWrite 2}
		gmem6 {Type I LastRead -1 FirstWrite -1}
		gmem7 {Type I LastRead -1 FirstWrite -1}
		gmem8 {Type I LastRead -1 FirstWrite -1}
		gmem9 {Type I LastRead -1 FirstWrite -1}
		numVert {Type I LastRead 0 FirstWrite -1}
		numEdge {Type I LastRead 1 FirstWrite -1}
		offset {Type I LastRead 1 FirstWrite -1}
		column {Type I LastRead 1 FirstWrite -1}
		btwn {Type I LastRead 1 FirstWrite -1}
		tmp0 {Type I LastRead -1 FirstWrite -1}
		tmp1 {Type I LastRead -1 FirstWrite -1}
		tmp2 {Type I LastRead -1 FirstWrite -1}
		tmp3 {Type I LastRead -1 FirstWrite -1}
		offset_buf {Type IO LastRead -1 FirstWrite -1}
		btwn_buf {Type IO LastRead -1 FirstWrite -1}
		column_buf {Type IO LastRead -1 FirstWrite -1}
		q_index {Type IO LastRead -1 FirstWrite -1}
		dist_array {Type IO LastRead -1 FirstWrite -1}
		sigma_array {Type IO LastRead -1 FirstWrite -1}
		travel {Type IO LastRead -1 FirstWrite -1}
		s_array {Type IO LastRead -1 FirstWrite -1}
		p_index_array {Type IO LastRead -1 FirstWrite -1}
		delta_array {Type IO LastRead -1 FirstWrite -1}
		q_array {Type IO LastRead -1 FirstWrite -1}
		num_edge {Type IO LastRead -1 FirstWrite -1}
		v {Type IO LastRead -1 FirstWrite -1}
		base_edge {Type IO LastRead -1 FirstWrite -1}
		dist_tmp {Type IO LastRead -1 FirstWrite -1}
		sigma_tmp_v {Type IO LastRead -1 FirstWrite -1}
		q_index_tmp {Type IO LastRead -1 FirstWrite -1}
		dist_tmp_w {Type IO LastRead -1 FirstWrite -1}
		w {Type IO LastRead -1 FirstWrite -1}
		sigma_tmp {Type IO LastRead -1 FirstWrite -1}
		p_array {Type IO LastRead -1 FirstWrite -1}
		delta_tmp {Type IO LastRead -1 FirstWrite -1}}
	dut_Pipeline_Store_vertice_loop {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln145 {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}
		numVert {Type I LastRead 0 FirstWrite -1}
		offset_buf {Type O LastRead -1 FirstWrite 2}
		btwn_buf {Type O LastRead -1 FirstWrite 1}}
	dut_Pipeline_Store_edge_loop {
		gmem1 {Type I LastRead 1 FirstWrite -1}
		sext_ln154 {Type I LastRead 0 FirstWrite -1}
		numEdge {Type I LastRead 0 FirstWrite -1}
		column_buf {Type O LastRead -1 FirstWrite 2}}
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
		q_array {Type O LastRead -1 FirstWrite 0}}
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
		p_array {Type O LastRead -1 FirstWrite 11}}
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
		v {Type O LastRead -1 FirstWrite 4}}
	dut_Pipeline_Output_loop {
		gmem3 {Type O LastRead -1 FirstWrite 2}
		sext_ln300 {Type I LastRead 0 FirstWrite -1}
		numVert {Type I LastRead 0 FirstWrite -1}
		btwn_buf {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "508239", "Max" : "1636372031"}
	, {"Name" : "Interval", "Min" : "508240", "Max" : "1636372032"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem0 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 8 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 32 }  { m_axi_gmem0_WSTRB STRB 1 4 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 8 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 32 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	gmem1 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 8 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 32 }  { m_axi_gmem1_WSTRB STRB 1 4 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 8 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 32 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
	gmem3 { m_axi {  { m_axi_gmem3_AWVALID VALID 1 1 }  { m_axi_gmem3_AWREADY READY 0 1 }  { m_axi_gmem3_AWADDR ADDR 1 64 }  { m_axi_gmem3_AWID ID 1 1 }  { m_axi_gmem3_AWLEN SIZE 1 8 }  { m_axi_gmem3_AWSIZE BURST 1 3 }  { m_axi_gmem3_AWBURST LOCK 1 2 }  { m_axi_gmem3_AWLOCK CACHE 1 2 }  { m_axi_gmem3_AWCACHE PROT 1 4 }  { m_axi_gmem3_AWPROT QOS 1 3 }  { m_axi_gmem3_AWQOS REGION 1 4 }  { m_axi_gmem3_AWREGION USER 1 4 }  { m_axi_gmem3_AWUSER DATA 1 1 }  { m_axi_gmem3_WVALID VALID 1 1 }  { m_axi_gmem3_WREADY READY 0 1 }  { m_axi_gmem3_WDATA FIFONUM 1 32 }  { m_axi_gmem3_WSTRB STRB 1 4 }  { m_axi_gmem3_WLAST LAST 1 1 }  { m_axi_gmem3_WID ID 1 1 }  { m_axi_gmem3_WUSER DATA 1 1 }  { m_axi_gmem3_ARVALID VALID 1 1 }  { m_axi_gmem3_ARREADY READY 0 1 }  { m_axi_gmem3_ARADDR ADDR 1 64 }  { m_axi_gmem3_ARID ID 1 1 }  { m_axi_gmem3_ARLEN SIZE 1 8 }  { m_axi_gmem3_ARSIZE BURST 1 3 }  { m_axi_gmem3_ARBURST LOCK 1 2 }  { m_axi_gmem3_ARLOCK CACHE 1 2 }  { m_axi_gmem3_ARCACHE PROT 1 4 }  { m_axi_gmem3_ARPROT QOS 1 3 }  { m_axi_gmem3_ARQOS REGION 1 4 }  { m_axi_gmem3_ARREGION USER 1 4 }  { m_axi_gmem3_ARUSER DATA 1 1 }  { m_axi_gmem3_RVALID VALID 0 1 }  { m_axi_gmem3_RREADY READY 1 1 }  { m_axi_gmem3_RDATA FIFONUM 0 32 }  { m_axi_gmem3_RLAST LAST 0 1 }  { m_axi_gmem3_RID ID 0 1 }  { m_axi_gmem3_RUSER DATA 0 1 }  { m_axi_gmem3_RRESP RESP 0 2 }  { m_axi_gmem3_BVALID VALID 0 1 }  { m_axi_gmem3_BREADY READY 1 1 }  { m_axi_gmem3_BRESP RESP 0 2 }  { m_axi_gmem3_BID ID 0 1 }  { m_axi_gmem3_BUSER DATA 0 1 } } }
	gmem6 { m_axi {  { m_axi_gmem6_AWVALID VALID 1 1 }  { m_axi_gmem6_AWREADY READY 0 1 }  { m_axi_gmem6_AWADDR ADDR 1 64 }  { m_axi_gmem6_AWID ID 1 1 }  { m_axi_gmem6_AWLEN SIZE 1 8 }  { m_axi_gmem6_AWSIZE BURST 1 3 }  { m_axi_gmem6_AWBURST LOCK 1 2 }  { m_axi_gmem6_AWLOCK CACHE 1 2 }  { m_axi_gmem6_AWCACHE PROT 1 4 }  { m_axi_gmem6_AWPROT QOS 1 3 }  { m_axi_gmem6_AWQOS REGION 1 4 }  { m_axi_gmem6_AWREGION USER 1 4 }  { m_axi_gmem6_AWUSER DATA 1 1 }  { m_axi_gmem6_WVALID VALID 1 1 }  { m_axi_gmem6_WREADY READY 0 1 }  { m_axi_gmem6_WDATA FIFONUM 1 32 }  { m_axi_gmem6_WSTRB STRB 1 4 }  { m_axi_gmem6_WLAST LAST 1 1 }  { m_axi_gmem6_WID ID 1 1 }  { m_axi_gmem6_WUSER DATA 1 1 }  { m_axi_gmem6_ARVALID VALID 1 1 }  { m_axi_gmem6_ARREADY READY 0 1 }  { m_axi_gmem6_ARADDR ADDR 1 64 }  { m_axi_gmem6_ARID ID 1 1 }  { m_axi_gmem6_ARLEN SIZE 1 8 }  { m_axi_gmem6_ARSIZE BURST 1 3 }  { m_axi_gmem6_ARBURST LOCK 1 2 }  { m_axi_gmem6_ARLOCK CACHE 1 2 }  { m_axi_gmem6_ARCACHE PROT 1 4 }  { m_axi_gmem6_ARPROT QOS 1 3 }  { m_axi_gmem6_ARQOS REGION 1 4 }  { m_axi_gmem6_ARREGION USER 1 4 }  { m_axi_gmem6_ARUSER DATA 1 1 }  { m_axi_gmem6_RVALID VALID 0 1 }  { m_axi_gmem6_RREADY READY 1 1 }  { m_axi_gmem6_RDATA FIFONUM 0 32 }  { m_axi_gmem6_RLAST LAST 0 1 }  { m_axi_gmem6_RID ID 0 1 }  { m_axi_gmem6_RUSER DATA 0 1 }  { m_axi_gmem6_RRESP RESP 0 2 }  { m_axi_gmem6_BVALID VALID 0 1 }  { m_axi_gmem6_BREADY READY 1 1 }  { m_axi_gmem6_BRESP RESP 0 2 }  { m_axi_gmem6_BID ID 0 1 }  { m_axi_gmem6_BUSER DATA 0 1 } } }
	gmem7 { m_axi {  { m_axi_gmem7_AWVALID VALID 1 1 }  { m_axi_gmem7_AWREADY READY 0 1 }  { m_axi_gmem7_AWADDR ADDR 1 64 }  { m_axi_gmem7_AWID ID 1 1 }  { m_axi_gmem7_AWLEN SIZE 1 8 }  { m_axi_gmem7_AWSIZE BURST 1 3 }  { m_axi_gmem7_AWBURST LOCK 1 2 }  { m_axi_gmem7_AWLOCK CACHE 1 2 }  { m_axi_gmem7_AWCACHE PROT 1 4 }  { m_axi_gmem7_AWPROT QOS 1 3 }  { m_axi_gmem7_AWQOS REGION 1 4 }  { m_axi_gmem7_AWREGION USER 1 4 }  { m_axi_gmem7_AWUSER DATA 1 1 }  { m_axi_gmem7_WVALID VALID 1 1 }  { m_axi_gmem7_WREADY READY 0 1 }  { m_axi_gmem7_WDATA FIFONUM 1 32 }  { m_axi_gmem7_WSTRB STRB 1 4 }  { m_axi_gmem7_WLAST LAST 1 1 }  { m_axi_gmem7_WID ID 1 1 }  { m_axi_gmem7_WUSER DATA 1 1 }  { m_axi_gmem7_ARVALID VALID 1 1 }  { m_axi_gmem7_ARREADY READY 0 1 }  { m_axi_gmem7_ARADDR ADDR 1 64 }  { m_axi_gmem7_ARID ID 1 1 }  { m_axi_gmem7_ARLEN SIZE 1 8 }  { m_axi_gmem7_ARSIZE BURST 1 3 }  { m_axi_gmem7_ARBURST LOCK 1 2 }  { m_axi_gmem7_ARLOCK CACHE 1 2 }  { m_axi_gmem7_ARCACHE PROT 1 4 }  { m_axi_gmem7_ARPROT QOS 1 3 }  { m_axi_gmem7_ARQOS REGION 1 4 }  { m_axi_gmem7_ARREGION USER 1 4 }  { m_axi_gmem7_ARUSER DATA 1 1 }  { m_axi_gmem7_RVALID VALID 0 1 }  { m_axi_gmem7_RREADY READY 1 1 }  { m_axi_gmem7_RDATA FIFONUM 0 32 }  { m_axi_gmem7_RLAST LAST 0 1 }  { m_axi_gmem7_RID ID 0 1 }  { m_axi_gmem7_RUSER DATA 0 1 }  { m_axi_gmem7_RRESP RESP 0 2 }  { m_axi_gmem7_BVALID VALID 0 1 }  { m_axi_gmem7_BREADY READY 1 1 }  { m_axi_gmem7_BRESP RESP 0 2 }  { m_axi_gmem7_BID ID 0 1 }  { m_axi_gmem7_BUSER DATA 0 1 } } }
	gmem8 { m_axi {  { m_axi_gmem8_AWVALID VALID 1 1 }  { m_axi_gmem8_AWREADY READY 0 1 }  { m_axi_gmem8_AWADDR ADDR 1 64 }  { m_axi_gmem8_AWID ID 1 1 }  { m_axi_gmem8_AWLEN SIZE 1 8 }  { m_axi_gmem8_AWSIZE BURST 1 3 }  { m_axi_gmem8_AWBURST LOCK 1 2 }  { m_axi_gmem8_AWLOCK CACHE 1 2 }  { m_axi_gmem8_AWCACHE PROT 1 4 }  { m_axi_gmem8_AWPROT QOS 1 3 }  { m_axi_gmem8_AWQOS REGION 1 4 }  { m_axi_gmem8_AWREGION USER 1 4 }  { m_axi_gmem8_AWUSER DATA 1 1 }  { m_axi_gmem8_WVALID VALID 1 1 }  { m_axi_gmem8_WREADY READY 0 1 }  { m_axi_gmem8_WDATA FIFONUM 1 32 }  { m_axi_gmem8_WSTRB STRB 1 4 }  { m_axi_gmem8_WLAST LAST 1 1 }  { m_axi_gmem8_WID ID 1 1 }  { m_axi_gmem8_WUSER DATA 1 1 }  { m_axi_gmem8_ARVALID VALID 1 1 }  { m_axi_gmem8_ARREADY READY 0 1 }  { m_axi_gmem8_ARADDR ADDR 1 64 }  { m_axi_gmem8_ARID ID 1 1 }  { m_axi_gmem8_ARLEN SIZE 1 8 }  { m_axi_gmem8_ARSIZE BURST 1 3 }  { m_axi_gmem8_ARBURST LOCK 1 2 }  { m_axi_gmem8_ARLOCK CACHE 1 2 }  { m_axi_gmem8_ARCACHE PROT 1 4 }  { m_axi_gmem8_ARPROT QOS 1 3 }  { m_axi_gmem8_ARQOS REGION 1 4 }  { m_axi_gmem8_ARREGION USER 1 4 }  { m_axi_gmem8_ARUSER DATA 1 1 }  { m_axi_gmem8_RVALID VALID 0 1 }  { m_axi_gmem8_RREADY READY 1 1 }  { m_axi_gmem8_RDATA FIFONUM 0 32 }  { m_axi_gmem8_RLAST LAST 0 1 }  { m_axi_gmem8_RID ID 0 1 }  { m_axi_gmem8_RUSER DATA 0 1 }  { m_axi_gmem8_RRESP RESP 0 2 }  { m_axi_gmem8_BVALID VALID 0 1 }  { m_axi_gmem8_BREADY READY 1 1 }  { m_axi_gmem8_BRESP RESP 0 2 }  { m_axi_gmem8_BID ID 0 1 }  { m_axi_gmem8_BUSER DATA 0 1 } } }
	gmem9 { m_axi {  { m_axi_gmem9_AWVALID VALID 1 1 }  { m_axi_gmem9_AWREADY READY 0 1 }  { m_axi_gmem9_AWADDR ADDR 1 64 }  { m_axi_gmem9_AWID ID 1 1 }  { m_axi_gmem9_AWLEN SIZE 1 8 }  { m_axi_gmem9_AWSIZE BURST 1 3 }  { m_axi_gmem9_AWBURST LOCK 1 2 }  { m_axi_gmem9_AWLOCK CACHE 1 2 }  { m_axi_gmem9_AWCACHE PROT 1 4 }  { m_axi_gmem9_AWPROT QOS 1 3 }  { m_axi_gmem9_AWQOS REGION 1 4 }  { m_axi_gmem9_AWREGION USER 1 4 }  { m_axi_gmem9_AWUSER DATA 1 1 }  { m_axi_gmem9_WVALID VALID 1 1 }  { m_axi_gmem9_WREADY READY 0 1 }  { m_axi_gmem9_WDATA FIFONUM 1 32 }  { m_axi_gmem9_WSTRB STRB 1 4 }  { m_axi_gmem9_WLAST LAST 1 1 }  { m_axi_gmem9_WID ID 1 1 }  { m_axi_gmem9_WUSER DATA 1 1 }  { m_axi_gmem9_ARVALID VALID 1 1 }  { m_axi_gmem9_ARREADY READY 0 1 }  { m_axi_gmem9_ARADDR ADDR 1 64 }  { m_axi_gmem9_ARID ID 1 1 }  { m_axi_gmem9_ARLEN SIZE 1 8 }  { m_axi_gmem9_ARSIZE BURST 1 3 }  { m_axi_gmem9_ARBURST LOCK 1 2 }  { m_axi_gmem9_ARLOCK CACHE 1 2 }  { m_axi_gmem9_ARCACHE PROT 1 4 }  { m_axi_gmem9_ARPROT QOS 1 3 }  { m_axi_gmem9_ARQOS REGION 1 4 }  { m_axi_gmem9_ARREGION USER 1 4 }  { m_axi_gmem9_ARUSER DATA 1 1 }  { m_axi_gmem9_RVALID VALID 0 1 }  { m_axi_gmem9_RREADY READY 1 1 }  { m_axi_gmem9_RDATA FIFONUM 0 32 }  { m_axi_gmem9_RLAST LAST 0 1 }  { m_axi_gmem9_RID ID 0 1 }  { m_axi_gmem9_RUSER DATA 0 1 }  { m_axi_gmem9_RRESP RESP 0 2 }  { m_axi_gmem9_BVALID VALID 0 1 }  { m_axi_gmem9_BREADY READY 1 1 }  { m_axi_gmem9_BRESP RESP 0 2 }  { m_axi_gmem9_BID ID 0 1 }  { m_axi_gmem9_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 1 MAX_READ_BURST_LENGTH 256 MAX_WRITE_BURST_LENGTH 2 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 1 MAX_READ_BURST_LENGTH 256 MAX_WRITE_BURST_LENGTH 2 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem3 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 1 MAX_READ_BURST_LENGTH 256 MAX_WRITE_BURST_LENGTH 2 READ_WRITE_MODE WRITE_ONLY}
dict set maxi_interface_dict gmem6 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 1 MAX_READ_BURST_LENGTH 256 MAX_WRITE_BURST_LENGTH 2 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem7 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 1 MAX_READ_BURST_LENGTH 256 MAX_WRITE_BURST_LENGTH 2 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem8 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 1 MAX_READ_BURST_LENGTH 256 MAX_WRITE_BURST_LENGTH 2 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem9 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 1 MAX_READ_BURST_LENGTH 256 MAX_WRITE_BURST_LENGTH 2 READ_WRITE_MODE READ_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem0 32 }
	{ gmem1 32 }
	{ gmem3 32 }
	{ gmem6 1 }
	{ gmem7 1 }
	{ gmem8 1 }
	{ gmem9 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem0 32 }
	{ gmem1 32 }
	{ gmem3 32 }
	{ gmem6 1 }
	{ gmem7 1 }
	{ gmem8 1 }
	{ gmem9 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
