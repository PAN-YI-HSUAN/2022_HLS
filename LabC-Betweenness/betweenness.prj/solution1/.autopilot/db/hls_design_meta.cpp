#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("m_axi_gmem0_AWVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem0_AWREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem0_AWADDR", 64, hls_out, 0, "m_axi", "ADDR", 1),
	Port_Property("m_axi_gmem0_AWID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem0_AWLEN", 8, hls_out, 0, "m_axi", "SIZE", 1),
	Port_Property("m_axi_gmem0_AWSIZE", 3, hls_out, 0, "m_axi", "BURST", 1),
	Port_Property("m_axi_gmem0_AWBURST", 2, hls_out, 0, "m_axi", "LOCK", 1),
	Port_Property("m_axi_gmem0_AWLOCK", 2, hls_out, 0, "m_axi", "CACHE", 1),
	Port_Property("m_axi_gmem0_AWCACHE", 4, hls_out, 0, "m_axi", "PROT", 1),
	Port_Property("m_axi_gmem0_AWPROT", 3, hls_out, 0, "m_axi", "QOS", 1),
	Port_Property("m_axi_gmem0_AWQOS", 4, hls_out, 0, "m_axi", "REGION", 1),
	Port_Property("m_axi_gmem0_AWREGION", 4, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_gmem0_AWUSER", 1, hls_out, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem0_WVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem0_WREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem0_WDATA", 32, hls_out, 0, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_gmem0_WSTRB", 4, hls_out, 0, "m_axi", "STRB", 1),
	Port_Property("m_axi_gmem0_WLAST", 1, hls_out, 0, "m_axi", "LAST", 1),
	Port_Property("m_axi_gmem0_WID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem0_WUSER", 1, hls_out, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem0_ARVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem0_ARREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem0_ARADDR", 64, hls_out, 0, "m_axi", "ADDR", 1),
	Port_Property("m_axi_gmem0_ARID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem0_ARLEN", 8, hls_out, 0, "m_axi", "SIZE", 1),
	Port_Property("m_axi_gmem0_ARSIZE", 3, hls_out, 0, "m_axi", "BURST", 1),
	Port_Property("m_axi_gmem0_ARBURST", 2, hls_out, 0, "m_axi", "LOCK", 1),
	Port_Property("m_axi_gmem0_ARLOCK", 2, hls_out, 0, "m_axi", "CACHE", 1),
	Port_Property("m_axi_gmem0_ARCACHE", 4, hls_out, 0, "m_axi", "PROT", 1),
	Port_Property("m_axi_gmem0_ARPROT", 3, hls_out, 0, "m_axi", "QOS", 1),
	Port_Property("m_axi_gmem0_ARQOS", 4, hls_out, 0, "m_axi", "REGION", 1),
	Port_Property("m_axi_gmem0_ARREGION", 4, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_gmem0_ARUSER", 1, hls_out, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem0_RVALID", 1, hls_in, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem0_RREADY", 1, hls_out, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem0_RDATA", 32, hls_in, 0, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_gmem0_RLAST", 1, hls_in, 0, "m_axi", "LAST", 1),
	Port_Property("m_axi_gmem0_RID", 1, hls_in, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem0_RUSER", 1, hls_in, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem0_RRESP", 2, hls_in, 0, "m_axi", "RESP", 1),
	Port_Property("m_axi_gmem0_BVALID", 1, hls_in, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem0_BREADY", 1, hls_out, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem0_BRESP", 2, hls_in, 0, "m_axi", "RESP", 1),
	Port_Property("m_axi_gmem0_BID", 1, hls_in, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem0_BUSER", 1, hls_in, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem1_AWVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem1_AWREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem1_AWADDR", 64, hls_out, 1, "m_axi", "ADDR", 1),
	Port_Property("m_axi_gmem1_AWID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem1_AWLEN", 8, hls_out, 1, "m_axi", "SIZE", 1),
	Port_Property("m_axi_gmem1_AWSIZE", 3, hls_out, 1, "m_axi", "BURST", 1),
	Port_Property("m_axi_gmem1_AWBURST", 2, hls_out, 1, "m_axi", "LOCK", 1),
	Port_Property("m_axi_gmem1_AWLOCK", 2, hls_out, 1, "m_axi", "CACHE", 1),
	Port_Property("m_axi_gmem1_AWCACHE", 4, hls_out, 1, "m_axi", "PROT", 1),
	Port_Property("m_axi_gmem1_AWPROT", 3, hls_out, 1, "m_axi", "QOS", 1),
	Port_Property("m_axi_gmem1_AWQOS", 4, hls_out, 1, "m_axi", "REGION", 1),
	Port_Property("m_axi_gmem1_AWREGION", 4, hls_out, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_gmem1_AWUSER", 1, hls_out, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem1_WVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem1_WREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem1_WDATA", 32, hls_out, 1, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_gmem1_WSTRB", 4, hls_out, 1, "m_axi", "STRB", 1),
	Port_Property("m_axi_gmem1_WLAST", 1, hls_out, 1, "m_axi", "LAST", 1),
	Port_Property("m_axi_gmem1_WID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem1_WUSER", 1, hls_out, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem1_ARVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem1_ARREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem1_ARADDR", 64, hls_out, 1, "m_axi", "ADDR", 1),
	Port_Property("m_axi_gmem1_ARID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem1_ARLEN", 8, hls_out, 1, "m_axi", "SIZE", 1),
	Port_Property("m_axi_gmem1_ARSIZE", 3, hls_out, 1, "m_axi", "BURST", 1),
	Port_Property("m_axi_gmem1_ARBURST", 2, hls_out, 1, "m_axi", "LOCK", 1),
	Port_Property("m_axi_gmem1_ARLOCK", 2, hls_out, 1, "m_axi", "CACHE", 1),
	Port_Property("m_axi_gmem1_ARCACHE", 4, hls_out, 1, "m_axi", "PROT", 1),
	Port_Property("m_axi_gmem1_ARPROT", 3, hls_out, 1, "m_axi", "QOS", 1),
	Port_Property("m_axi_gmem1_ARQOS", 4, hls_out, 1, "m_axi", "REGION", 1),
	Port_Property("m_axi_gmem1_ARREGION", 4, hls_out, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_gmem1_ARUSER", 1, hls_out, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem1_RVALID", 1, hls_in, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem1_RREADY", 1, hls_out, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem1_RDATA", 32, hls_in, 1, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_gmem1_RLAST", 1, hls_in, 1, "m_axi", "LAST", 1),
	Port_Property("m_axi_gmem1_RID", 1, hls_in, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem1_RUSER", 1, hls_in, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem1_RRESP", 2, hls_in, 1, "m_axi", "RESP", 1),
	Port_Property("m_axi_gmem1_BVALID", 1, hls_in, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem1_BREADY", 1, hls_out, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem1_BRESP", 2, hls_in, 1, "m_axi", "RESP", 1),
	Port_Property("m_axi_gmem1_BID", 1, hls_in, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem1_BUSER", 1, hls_in, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem3_AWVALID", 1, hls_out, 2, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem3_AWREADY", 1, hls_in, 2, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem3_AWADDR", 64, hls_out, 2, "m_axi", "ADDR", 1),
	Port_Property("m_axi_gmem3_AWID", 1, hls_out, 2, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem3_AWLEN", 8, hls_out, 2, "m_axi", "SIZE", 1),
	Port_Property("m_axi_gmem3_AWSIZE", 3, hls_out, 2, "m_axi", "BURST", 1),
	Port_Property("m_axi_gmem3_AWBURST", 2, hls_out, 2, "m_axi", "LOCK", 1),
	Port_Property("m_axi_gmem3_AWLOCK", 2, hls_out, 2, "m_axi", "CACHE", 1),
	Port_Property("m_axi_gmem3_AWCACHE", 4, hls_out, 2, "m_axi", "PROT", 1),
	Port_Property("m_axi_gmem3_AWPROT", 3, hls_out, 2, "m_axi", "QOS", 1),
	Port_Property("m_axi_gmem3_AWQOS", 4, hls_out, 2, "m_axi", "REGION", 1),
	Port_Property("m_axi_gmem3_AWREGION", 4, hls_out, 2, "m_axi", "USER", 1),
	Port_Property("m_axi_gmem3_AWUSER", 1, hls_out, 2, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem3_WVALID", 1, hls_out, 2, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem3_WREADY", 1, hls_in, 2, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem3_WDATA", 32, hls_out, 2, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_gmem3_WSTRB", 4, hls_out, 2, "m_axi", "STRB", 1),
	Port_Property("m_axi_gmem3_WLAST", 1, hls_out, 2, "m_axi", "LAST", 1),
	Port_Property("m_axi_gmem3_WID", 1, hls_out, 2, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem3_WUSER", 1, hls_out, 2, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem3_ARVALID", 1, hls_out, 2, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem3_ARREADY", 1, hls_in, 2, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem3_ARADDR", 64, hls_out, 2, "m_axi", "ADDR", 1),
	Port_Property("m_axi_gmem3_ARID", 1, hls_out, 2, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem3_ARLEN", 8, hls_out, 2, "m_axi", "SIZE", 1),
	Port_Property("m_axi_gmem3_ARSIZE", 3, hls_out, 2, "m_axi", "BURST", 1),
	Port_Property("m_axi_gmem3_ARBURST", 2, hls_out, 2, "m_axi", "LOCK", 1),
	Port_Property("m_axi_gmem3_ARLOCK", 2, hls_out, 2, "m_axi", "CACHE", 1),
	Port_Property("m_axi_gmem3_ARCACHE", 4, hls_out, 2, "m_axi", "PROT", 1),
	Port_Property("m_axi_gmem3_ARPROT", 3, hls_out, 2, "m_axi", "QOS", 1),
	Port_Property("m_axi_gmem3_ARQOS", 4, hls_out, 2, "m_axi", "REGION", 1),
	Port_Property("m_axi_gmem3_ARREGION", 4, hls_out, 2, "m_axi", "USER", 1),
	Port_Property("m_axi_gmem3_ARUSER", 1, hls_out, 2, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem3_RVALID", 1, hls_in, 2, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem3_RREADY", 1, hls_out, 2, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem3_RDATA", 32, hls_in, 2, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_gmem3_RLAST", 1, hls_in, 2, "m_axi", "LAST", 1),
	Port_Property("m_axi_gmem3_RID", 1, hls_in, 2, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem3_RUSER", 1, hls_in, 2, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem3_RRESP", 2, hls_in, 2, "m_axi", "RESP", 1),
	Port_Property("m_axi_gmem3_BVALID", 1, hls_in, 2, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem3_BREADY", 1, hls_out, 2, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem3_BRESP", 2, hls_in, 2, "m_axi", "RESP", 1),
	Port_Property("m_axi_gmem3_BID", 1, hls_in, 2, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem3_BUSER", 1, hls_in, 2, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem6_AWVALID", 1, hls_out, 3, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem6_AWREADY", 1, hls_in, 3, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem6_AWADDR", 64, hls_out, 3, "m_axi", "ADDR", 1),
	Port_Property("m_axi_gmem6_AWID", 1, hls_out, 3, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem6_AWLEN", 8, hls_out, 3, "m_axi", "SIZE", 1),
	Port_Property("m_axi_gmem6_AWSIZE", 3, hls_out, 3, "m_axi", "BURST", 1),
	Port_Property("m_axi_gmem6_AWBURST", 2, hls_out, 3, "m_axi", "LOCK", 1),
	Port_Property("m_axi_gmem6_AWLOCK", 2, hls_out, 3, "m_axi", "CACHE", 1),
	Port_Property("m_axi_gmem6_AWCACHE", 4, hls_out, 3, "m_axi", "PROT", 1),
	Port_Property("m_axi_gmem6_AWPROT", 3, hls_out, 3, "m_axi", "QOS", 1),
	Port_Property("m_axi_gmem6_AWQOS", 4, hls_out, 3, "m_axi", "REGION", 1),
	Port_Property("m_axi_gmem6_AWREGION", 4, hls_out, 3, "m_axi", "USER", 1),
	Port_Property("m_axi_gmem6_AWUSER", 1, hls_out, 3, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem6_WVALID", 1, hls_out, 3, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem6_WREADY", 1, hls_in, 3, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem6_WDATA", 32, hls_out, 3, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_gmem6_WSTRB", 4, hls_out, 3, "m_axi", "STRB", 1),
	Port_Property("m_axi_gmem6_WLAST", 1, hls_out, 3, "m_axi", "LAST", 1),
	Port_Property("m_axi_gmem6_WID", 1, hls_out, 3, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem6_WUSER", 1, hls_out, 3, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem6_ARVALID", 1, hls_out, 3, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem6_ARREADY", 1, hls_in, 3, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem6_ARADDR", 64, hls_out, 3, "m_axi", "ADDR", 1),
	Port_Property("m_axi_gmem6_ARID", 1, hls_out, 3, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem6_ARLEN", 8, hls_out, 3, "m_axi", "SIZE", 1),
	Port_Property("m_axi_gmem6_ARSIZE", 3, hls_out, 3, "m_axi", "BURST", 1),
	Port_Property("m_axi_gmem6_ARBURST", 2, hls_out, 3, "m_axi", "LOCK", 1),
	Port_Property("m_axi_gmem6_ARLOCK", 2, hls_out, 3, "m_axi", "CACHE", 1),
	Port_Property("m_axi_gmem6_ARCACHE", 4, hls_out, 3, "m_axi", "PROT", 1),
	Port_Property("m_axi_gmem6_ARPROT", 3, hls_out, 3, "m_axi", "QOS", 1),
	Port_Property("m_axi_gmem6_ARQOS", 4, hls_out, 3, "m_axi", "REGION", 1),
	Port_Property("m_axi_gmem6_ARREGION", 4, hls_out, 3, "m_axi", "USER", 1),
	Port_Property("m_axi_gmem6_ARUSER", 1, hls_out, 3, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem6_RVALID", 1, hls_in, 3, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem6_RREADY", 1, hls_out, 3, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem6_RDATA", 32, hls_in, 3, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_gmem6_RLAST", 1, hls_in, 3, "m_axi", "LAST", 1),
	Port_Property("m_axi_gmem6_RID", 1, hls_in, 3, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem6_RUSER", 1, hls_in, 3, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem6_RRESP", 2, hls_in, 3, "m_axi", "RESP", 1),
	Port_Property("m_axi_gmem6_BVALID", 1, hls_in, 3, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem6_BREADY", 1, hls_out, 3, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem6_BRESP", 2, hls_in, 3, "m_axi", "RESP", 1),
	Port_Property("m_axi_gmem6_BID", 1, hls_in, 3, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem6_BUSER", 1, hls_in, 3, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem7_AWVALID", 1, hls_out, 4, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem7_AWREADY", 1, hls_in, 4, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem7_AWADDR", 64, hls_out, 4, "m_axi", "ADDR", 1),
	Port_Property("m_axi_gmem7_AWID", 1, hls_out, 4, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem7_AWLEN", 8, hls_out, 4, "m_axi", "SIZE", 1),
	Port_Property("m_axi_gmem7_AWSIZE", 3, hls_out, 4, "m_axi", "BURST", 1),
	Port_Property("m_axi_gmem7_AWBURST", 2, hls_out, 4, "m_axi", "LOCK", 1),
	Port_Property("m_axi_gmem7_AWLOCK", 2, hls_out, 4, "m_axi", "CACHE", 1),
	Port_Property("m_axi_gmem7_AWCACHE", 4, hls_out, 4, "m_axi", "PROT", 1),
	Port_Property("m_axi_gmem7_AWPROT", 3, hls_out, 4, "m_axi", "QOS", 1),
	Port_Property("m_axi_gmem7_AWQOS", 4, hls_out, 4, "m_axi", "REGION", 1),
	Port_Property("m_axi_gmem7_AWREGION", 4, hls_out, 4, "m_axi", "USER", 1),
	Port_Property("m_axi_gmem7_AWUSER", 1, hls_out, 4, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem7_WVALID", 1, hls_out, 4, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem7_WREADY", 1, hls_in, 4, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem7_WDATA", 32, hls_out, 4, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_gmem7_WSTRB", 4, hls_out, 4, "m_axi", "STRB", 1),
	Port_Property("m_axi_gmem7_WLAST", 1, hls_out, 4, "m_axi", "LAST", 1),
	Port_Property("m_axi_gmem7_WID", 1, hls_out, 4, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem7_WUSER", 1, hls_out, 4, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem7_ARVALID", 1, hls_out, 4, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem7_ARREADY", 1, hls_in, 4, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem7_ARADDR", 64, hls_out, 4, "m_axi", "ADDR", 1),
	Port_Property("m_axi_gmem7_ARID", 1, hls_out, 4, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem7_ARLEN", 8, hls_out, 4, "m_axi", "SIZE", 1),
	Port_Property("m_axi_gmem7_ARSIZE", 3, hls_out, 4, "m_axi", "BURST", 1),
	Port_Property("m_axi_gmem7_ARBURST", 2, hls_out, 4, "m_axi", "LOCK", 1),
	Port_Property("m_axi_gmem7_ARLOCK", 2, hls_out, 4, "m_axi", "CACHE", 1),
	Port_Property("m_axi_gmem7_ARCACHE", 4, hls_out, 4, "m_axi", "PROT", 1),
	Port_Property("m_axi_gmem7_ARPROT", 3, hls_out, 4, "m_axi", "QOS", 1),
	Port_Property("m_axi_gmem7_ARQOS", 4, hls_out, 4, "m_axi", "REGION", 1),
	Port_Property("m_axi_gmem7_ARREGION", 4, hls_out, 4, "m_axi", "USER", 1),
	Port_Property("m_axi_gmem7_ARUSER", 1, hls_out, 4, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem7_RVALID", 1, hls_in, 4, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem7_RREADY", 1, hls_out, 4, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem7_RDATA", 32, hls_in, 4, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_gmem7_RLAST", 1, hls_in, 4, "m_axi", "LAST", 1),
	Port_Property("m_axi_gmem7_RID", 1, hls_in, 4, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem7_RUSER", 1, hls_in, 4, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem7_RRESP", 2, hls_in, 4, "m_axi", "RESP", 1),
	Port_Property("m_axi_gmem7_BVALID", 1, hls_in, 4, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem7_BREADY", 1, hls_out, 4, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem7_BRESP", 2, hls_in, 4, "m_axi", "RESP", 1),
	Port_Property("m_axi_gmem7_BID", 1, hls_in, 4, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem7_BUSER", 1, hls_in, 4, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem8_AWVALID", 1, hls_out, 5, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem8_AWREADY", 1, hls_in, 5, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem8_AWADDR", 64, hls_out, 5, "m_axi", "ADDR", 1),
	Port_Property("m_axi_gmem8_AWID", 1, hls_out, 5, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem8_AWLEN", 8, hls_out, 5, "m_axi", "SIZE", 1),
	Port_Property("m_axi_gmem8_AWSIZE", 3, hls_out, 5, "m_axi", "BURST", 1),
	Port_Property("m_axi_gmem8_AWBURST", 2, hls_out, 5, "m_axi", "LOCK", 1),
	Port_Property("m_axi_gmem8_AWLOCK", 2, hls_out, 5, "m_axi", "CACHE", 1),
	Port_Property("m_axi_gmem8_AWCACHE", 4, hls_out, 5, "m_axi", "PROT", 1),
	Port_Property("m_axi_gmem8_AWPROT", 3, hls_out, 5, "m_axi", "QOS", 1),
	Port_Property("m_axi_gmem8_AWQOS", 4, hls_out, 5, "m_axi", "REGION", 1),
	Port_Property("m_axi_gmem8_AWREGION", 4, hls_out, 5, "m_axi", "USER", 1),
	Port_Property("m_axi_gmem8_AWUSER", 1, hls_out, 5, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem8_WVALID", 1, hls_out, 5, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem8_WREADY", 1, hls_in, 5, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem8_WDATA", 32, hls_out, 5, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_gmem8_WSTRB", 4, hls_out, 5, "m_axi", "STRB", 1),
	Port_Property("m_axi_gmem8_WLAST", 1, hls_out, 5, "m_axi", "LAST", 1),
	Port_Property("m_axi_gmem8_WID", 1, hls_out, 5, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem8_WUSER", 1, hls_out, 5, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem8_ARVALID", 1, hls_out, 5, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem8_ARREADY", 1, hls_in, 5, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem8_ARADDR", 64, hls_out, 5, "m_axi", "ADDR", 1),
	Port_Property("m_axi_gmem8_ARID", 1, hls_out, 5, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem8_ARLEN", 8, hls_out, 5, "m_axi", "SIZE", 1),
	Port_Property("m_axi_gmem8_ARSIZE", 3, hls_out, 5, "m_axi", "BURST", 1),
	Port_Property("m_axi_gmem8_ARBURST", 2, hls_out, 5, "m_axi", "LOCK", 1),
	Port_Property("m_axi_gmem8_ARLOCK", 2, hls_out, 5, "m_axi", "CACHE", 1),
	Port_Property("m_axi_gmem8_ARCACHE", 4, hls_out, 5, "m_axi", "PROT", 1),
	Port_Property("m_axi_gmem8_ARPROT", 3, hls_out, 5, "m_axi", "QOS", 1),
	Port_Property("m_axi_gmem8_ARQOS", 4, hls_out, 5, "m_axi", "REGION", 1),
	Port_Property("m_axi_gmem8_ARREGION", 4, hls_out, 5, "m_axi", "USER", 1),
	Port_Property("m_axi_gmem8_ARUSER", 1, hls_out, 5, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem8_RVALID", 1, hls_in, 5, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem8_RREADY", 1, hls_out, 5, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem8_RDATA", 32, hls_in, 5, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_gmem8_RLAST", 1, hls_in, 5, "m_axi", "LAST", 1),
	Port_Property("m_axi_gmem8_RID", 1, hls_in, 5, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem8_RUSER", 1, hls_in, 5, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem8_RRESP", 2, hls_in, 5, "m_axi", "RESP", 1),
	Port_Property("m_axi_gmem8_BVALID", 1, hls_in, 5, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem8_BREADY", 1, hls_out, 5, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem8_BRESP", 2, hls_in, 5, "m_axi", "RESP", 1),
	Port_Property("m_axi_gmem8_BID", 1, hls_in, 5, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem8_BUSER", 1, hls_in, 5, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem9_AWVALID", 1, hls_out, 6, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem9_AWREADY", 1, hls_in, 6, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem9_AWADDR", 64, hls_out, 6, "m_axi", "ADDR", 1),
	Port_Property("m_axi_gmem9_AWID", 1, hls_out, 6, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem9_AWLEN", 8, hls_out, 6, "m_axi", "SIZE", 1),
	Port_Property("m_axi_gmem9_AWSIZE", 3, hls_out, 6, "m_axi", "BURST", 1),
	Port_Property("m_axi_gmem9_AWBURST", 2, hls_out, 6, "m_axi", "LOCK", 1),
	Port_Property("m_axi_gmem9_AWLOCK", 2, hls_out, 6, "m_axi", "CACHE", 1),
	Port_Property("m_axi_gmem9_AWCACHE", 4, hls_out, 6, "m_axi", "PROT", 1),
	Port_Property("m_axi_gmem9_AWPROT", 3, hls_out, 6, "m_axi", "QOS", 1),
	Port_Property("m_axi_gmem9_AWQOS", 4, hls_out, 6, "m_axi", "REGION", 1),
	Port_Property("m_axi_gmem9_AWREGION", 4, hls_out, 6, "m_axi", "USER", 1),
	Port_Property("m_axi_gmem9_AWUSER", 1, hls_out, 6, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem9_WVALID", 1, hls_out, 6, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem9_WREADY", 1, hls_in, 6, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem9_WDATA", 32, hls_out, 6, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_gmem9_WSTRB", 4, hls_out, 6, "m_axi", "STRB", 1),
	Port_Property("m_axi_gmem9_WLAST", 1, hls_out, 6, "m_axi", "LAST", 1),
	Port_Property("m_axi_gmem9_WID", 1, hls_out, 6, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem9_WUSER", 1, hls_out, 6, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem9_ARVALID", 1, hls_out, 6, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem9_ARREADY", 1, hls_in, 6, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem9_ARADDR", 64, hls_out, 6, "m_axi", "ADDR", 1),
	Port_Property("m_axi_gmem9_ARID", 1, hls_out, 6, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem9_ARLEN", 8, hls_out, 6, "m_axi", "SIZE", 1),
	Port_Property("m_axi_gmem9_ARSIZE", 3, hls_out, 6, "m_axi", "BURST", 1),
	Port_Property("m_axi_gmem9_ARBURST", 2, hls_out, 6, "m_axi", "LOCK", 1),
	Port_Property("m_axi_gmem9_ARLOCK", 2, hls_out, 6, "m_axi", "CACHE", 1),
	Port_Property("m_axi_gmem9_ARCACHE", 4, hls_out, 6, "m_axi", "PROT", 1),
	Port_Property("m_axi_gmem9_ARPROT", 3, hls_out, 6, "m_axi", "QOS", 1),
	Port_Property("m_axi_gmem9_ARQOS", 4, hls_out, 6, "m_axi", "REGION", 1),
	Port_Property("m_axi_gmem9_ARREGION", 4, hls_out, 6, "m_axi", "USER", 1),
	Port_Property("m_axi_gmem9_ARUSER", 1, hls_out, 6, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem9_RVALID", 1, hls_in, 6, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem9_RREADY", 1, hls_out, 6, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem9_RDATA", 32, hls_in, 6, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_gmem9_RLAST", 1, hls_in, 6, "m_axi", "LAST", 1),
	Port_Property("m_axi_gmem9_RID", 1, hls_in, 6, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem9_RUSER", 1, hls_in, 6, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmem9_RRESP", 2, hls_in, 6, "m_axi", "RESP", 1),
	Port_Property("m_axi_gmem9_BVALID", 1, hls_in, 6, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmem9_BREADY", 1, hls_out, 6, "m_axi", "READY", 1),
	Port_Property("m_axi_gmem9_BRESP", 2, hls_in, 6, "m_axi", "RESP", 1),
	Port_Property("m_axi_gmem9_BID", 1, hls_in, 6, "m_axi", "ID", 1),
	Port_Property("m_axi_gmem9_BUSER", 1, hls_in, 6, "m_axi", "DATA", 1),
	Port_Property("s_axi_control_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_AWADDR", 7, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_ARADDR", 7, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("interrupt", 1, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "dut";