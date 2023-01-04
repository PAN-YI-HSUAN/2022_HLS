// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_13_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_13,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.311000,HLS_SYN_LAT=1603,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=423,HLS_SYN_LUT=260,HLS_VERSION=2022_1}" *)

module StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_13 (
        ap_clk,
        ap_rst_n,
        in0_V_TVALID,
        out_V_TREADY,
        in0_V_TDATA,
        in0_V_TREADY,
        out_V_TDATA,
        out_V_TVALID
);

parameter    ap_ST_iter0_fsm_state1 = 1'd1;
parameter    ap_ST_iter1_fsm_state2 = 2'd2;
parameter    ap_ST_iter2_fsm_state3 = 2'd2;
parameter    ap_ST_iter1_fsm_state0 = 2'd1;
parameter    ap_ST_iter2_fsm_state0 = 2'd1;

input   ap_clk;
input   ap_rst_n;
input   in0_V_TVALID;
input   out_V_TREADY;
input  [191:0] in0_V_TDATA;
output   in0_V_TREADY;
output  [15:0] out_V_TDATA;
output   out_V_TVALID;

 reg    ap_rst_n_inv;
reg   [0:0] ap_CS_iter0_fsm;
wire    ap_CS_iter0_fsm_state1;
wire   [0:0] icmp_ln477_fu_110_p2;
wire   [0:0] icmp_ln480_fu_125_p2;
reg    ap_predicate_op26_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [1:0] ap_CS_iter1_fsm;
reg   [0:0] icmp_ln477_reg_218;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_state2_io;
wire    ap_CS_iter1_fsm_state2;
reg   [1:0] ap_CS_iter2_fsm;
reg   [0:0] icmp_ln477_reg_218_pp0_iter1_reg;
wire    regslice_both_out_V_U_apdone_blk;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_state3_io;
wire    ap_CS_iter2_fsm_state3;
reg    ap_condition_exit_pp0_iter0_stage0;
reg    ap_ready_int;
reg    in0_V_TDATA_blk_n;
reg    out_V_TDATA_blk_n;
reg   [0:0] icmp_ln480_reg_222;
wire   [0:0] icmp_ln480_reg_222_pp0_iter0_reg;
reg   [191:0] ap_phi_mux_ei_V_3_phi_fu_86_p4;
wire   [191:0] ap_phi_reg_pp0_iter0_ei_V_3_reg_83;
reg   [191:0] ap_phi_reg_pp0_iter1_ei_V_3_reg_83;
wire   [191:0] zext_ln477_fu_167_p1;
reg   [179:0] ei_V_fu_58;
wire    ap_loop_init;
reg   [31:0] o_fu_62;
wire   [31:0] o_2_fu_146_p3;
reg   [31:0] ap_sig_allocacmp_o_load_1;
reg   [31:0] ap_sig_allocacmp_o_load;
reg   [10:0] t_fu_66;
wire   [10:0] t_2_fu_116_p2;
reg   [10:0] ap_sig_allocacmp_t_1;
wire   [31:0] o_1_fu_134_p2;
wire   [0:0] icmp_ln491_fu_140_p2;
wire   [11:0] eo_V_fu_172_p1;
reg   [0:0] ap_NS_iter0_fsm;
reg   [1:0] ap_NS_iter1_fsm;
reg   [1:0] ap_NS_iter2_fsm;
reg    ap_ST_iter0_fsm_state1_blk;
reg    ap_ST_iter1_fsm_state2_blk;
reg    ap_ST_iter2_fsm_state3_blk;
wire    ap_start_int;
wire    ap_ready;
wire    ap_done;
wire    ap_continue_int;
wire    regslice_both_in0_V_U_apdone_blk;
wire   [191:0] in0_V_TDATA_int_regslice;
wire    in0_V_TVALID_int_regslice;
reg    in0_V_TREADY_int_regslice;
wire    regslice_both_in0_V_U_ack_in;
wire   [15:0] out_V_TDATA_int_regslice;
reg    out_V_TVALID_int_regslice;
wire    out_V_TREADY_int_regslice;
wire    regslice_both_out_V_U_vld_out;
reg    ap_condition_275;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_iter0_fsm = 1'd1;
#0 ap_CS_iter1_fsm = 2'd1;
#0 ap_CS_iter2_fsm = 2'd1;
end

StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_13_flow_control_loop_pipe_no_ap_cont flow_control_loop_pipe_no_ap_cont_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(1'b1),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(1'b0),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(1'b0)
);

StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_13_regslice_both #(
    .DataWidth( 192 ))
regslice_both_in0_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(in0_V_TDATA),
    .vld_in(in0_V_TVALID),
    .ack_in(regslice_both_in0_V_U_ack_in),
    .data_out(in0_V_TDATA_int_regslice),
    .vld_out(in0_V_TVALID_int_regslice),
    .ack_out(in0_V_TREADY_int_regslice),
    .apdone_blk(regslice_both_in0_V_U_apdone_blk)
);

StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_13_regslice_both #(
    .DataWidth( 16 ))
regslice_both_out_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(out_V_TDATA_int_regslice),
    .vld_in(out_V_TVALID_int_regslice),
    .ack_in(out_V_TREADY_int_regslice),
    .data_out(out_V_TDATA),
    .vld_out(regslice_both_out_V_U_vld_out),
    .ack_out(out_V_TREADY),
    .apdone_blk(regslice_both_out_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_iter0_fsm <= ap_ST_iter0_fsm_state1;
    end else begin
        ap_CS_iter0_fsm <= ap_NS_iter0_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_iter1_fsm <= ap_ST_iter1_fsm_state0;
    end else begin
        ap_CS_iter1_fsm <= ap_NS_iter1_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_iter2_fsm <= ap_ST_iter2_fsm_state0;
    end else begin
        ap_CS_iter2_fsm <= ap_NS_iter2_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_275)) begin
        if (((icmp_ln480_fu_125_p2 == 1'd1) & (icmp_ln477_fu_110_p2 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_ei_V_3_reg_83 <= in0_V_TDATA_int_regslice;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_ei_V_3_reg_83 <= ap_phi_reg_pp0_iter0_ei_V_3_reg_83;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~(((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln477_reg_218_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((1'b1 == ap_CS_iter1_fsm_state2) & ((1'b1 == ap_block_state2_io) | ((icmp_ln477_reg_218 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((ap_predicate_op26_read_state1 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ei_V_fu_58 <= 180'd0;
    end else if ((~((1'b1 == ap_block_state2_io) | ((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln477_reg_218_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((icmp_ln477_reg_218 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0))) & (icmp_ln477_reg_218 == 1'd0) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        ei_V_fu_58 <= {{ap_phi_mux_ei_V_3_phi_fu_86_p4[191:12]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_275)) begin
        if ((icmp_ln477_fu_110_p2 == 1'd0)) begin
            o_fu_62 <= o_2_fu_146_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            o_fu_62 <= 32'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_275)) begin
        if ((icmp_ln477_fu_110_p2 == 1'd0)) begin
            t_fu_66 <= t_2_fu_116_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            t_fu_66 <= 11'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~(((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln477_reg_218_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((1'b1 == ap_CS_iter1_fsm_state2) & ((1'b1 == ap_block_state2_io) | ((icmp_ln477_reg_218 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((ap_predicate_op26_read_state1 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        icmp_ln477_reg_218 <= icmp_ln477_fu_110_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((1'b1 == ap_block_state2_io) | ((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln477_reg_218_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((icmp_ln477_reg_218 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        icmp_ln477_reg_218_pp0_iter1_reg <= icmp_ln477_reg_218;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln477_reg_218_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((1'b1 == ap_CS_iter1_fsm_state2) & ((1'b1 == ap_block_state2_io) | ((icmp_ln477_reg_218 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((ap_predicate_op26_read_state1 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1) & (icmp_ln477_fu_110_p2 == 1'd0))) begin
        icmp_ln480_reg_222 <= icmp_ln480_fu_125_p2;
    end
end

always @ (*) begin
    if (((ap_predicate_op26_read_state1 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0))) begin
        ap_ST_iter0_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_iter0_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_block_state2_io) | ((icmp_ln477_reg_218 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) begin
        ap_ST_iter1_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_iter1_fsm_state2_blk = 1'b0;
    end
end

always @ (*) begin
    if (((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln477_reg_218_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) begin
        ap_ST_iter2_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_iter2_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if ((~(((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln477_reg_218_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((1'b1 == ap_CS_iter1_fsm_state2) & ((1'b1 == ap_block_state2_io) | ((icmp_ln477_reg_218 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((ap_predicate_op26_read_state1 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1) & (icmp_ln477_fu_110_p2 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln477_reg_218 == 1'd0) & (icmp_ln480_reg_222_pp0_iter0_reg == 1'd0))) begin
        ap_phi_mux_ei_V_3_phi_fu_86_p4 = zext_ln477_fu_167_p1;
    end else begin
        ap_phi_mux_ei_V_3_phi_fu_86_p4 = ap_phi_reg_pp0_iter1_ei_V_3_reg_83;
    end
end

always @ (*) begin
    if ((~(((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln477_reg_218_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((1'b1 == ap_CS_iter1_fsm_state2) & ((1'b1 == ap_block_state2_io) | ((icmp_ln477_reg_218 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((ap_predicate_op26_read_state1 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_iter0_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_o_load = 32'd0;
    end else begin
        ap_sig_allocacmp_o_load = o_fu_62;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_iter0_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_o_load_1 = 32'd0;
    end else begin
        ap_sig_allocacmp_o_load_1 = o_fu_62;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_iter0_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_t_1 = 11'd0;
    end else begin
        ap_sig_allocacmp_t_1 = t_fu_66;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_iter0_fsm_state1) & (ap_predicate_op26_read_state1 == 1'b1))) begin
        in0_V_TDATA_blk_n = in0_V_TVALID_int_regslice;
    end else begin
        in0_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln477_reg_218_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((1'b1 == ap_CS_iter1_fsm_state2) & ((1'b1 == ap_block_state2_io) | ((icmp_ln477_reg_218 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((ap_predicate_op26_read_state1 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1) & (ap_predicate_op26_read_state1 == 1'b1))) begin
        in0_V_TREADY_int_regslice = 1'b1;
    end else begin
        in0_V_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln477_reg_218_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_iter2_fsm_state3)) | ((icmp_ln477_reg_218 == 1'd0) & (1'b1 == ap_CS_iter1_fsm_state2)))) begin
        out_V_TDATA_blk_n = out_V_TREADY_int_regslice;
    end else begin
        out_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((1'b1 == ap_block_state2_io) | ((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln477_reg_218_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((icmp_ln477_reg_218 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0))) & (icmp_ln477_reg_218 == 1'd0) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        out_V_TVALID_int_regslice = 1'b1;
    end else begin
        out_V_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_iter0_fsm)
        ap_ST_iter0_fsm_state1 : begin
            ap_NS_iter0_fsm = ap_ST_iter0_fsm_state1;
        end
        default : begin
            ap_NS_iter0_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    case (ap_CS_iter1_fsm)
        ap_ST_iter1_fsm_state2 : begin
            if ((~((1'b1 == ap_block_state2_io) | ((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln477_reg_218_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((icmp_ln477_reg_218 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0))) & ~((ap_predicate_op26_read_state1 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0)) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state2;
            end else if ((~((1'b1 == ap_block_state2_io) | ((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln477_reg_218_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((icmp_ln477_reg_218 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0))) & ((1'b0 == ap_CS_iter0_fsm_state1) | ((1'b1 == ap_CS_iter0_fsm_state1) & (ap_predicate_op26_read_state1 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0))))) begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state0;
            end else begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state2;
            end
        end
        ap_ST_iter1_fsm_state0 : begin
            if ((~(((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln477_reg_218_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((1'b1 == ap_CS_iter1_fsm_state2) & ((1'b1 == ap_block_state2_io) | ((icmp_ln477_reg_218 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((ap_predicate_op26_read_state1 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state2;
            end else begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state0;
            end
        end
        default : begin
            ap_NS_iter1_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    case (ap_CS_iter2_fsm)
        ap_ST_iter2_fsm_state3 : begin
            if ((~((1'b1 == ap_block_state2_io) | ((icmp_ln477_reg_218 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0))) & ~((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln477_reg_218_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
                ap_NS_iter2_fsm = ap_ST_iter2_fsm_state3;
            end else if ((~((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln477_reg_218_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0))) & ((1'b0 == ap_CS_iter1_fsm_state2) | ((1'b1 == ap_CS_iter1_fsm_state2) & ((1'b1 == ap_block_state2_io) | ((icmp_ln477_reg_218 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0))))))) begin
                ap_NS_iter2_fsm = ap_ST_iter2_fsm_state0;
            end else if ((~((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln477_reg_218_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0))) & (icmp_ln477_reg_218_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_iter2_fsm_state3))) begin
                ap_NS_iter2_fsm = ap_ST_iter0_fsm_state1;
            end else begin
                ap_NS_iter2_fsm = ap_ST_iter2_fsm_state3;
            end
        end
        ap_ST_iter2_fsm_state0 : begin
            if ((~((1'b1 == ap_block_state2_io) | ((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln477_reg_218_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((icmp_ln477_reg_218 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
                ap_NS_iter2_fsm = ap_ST_iter2_fsm_state3;
            end else begin
                ap_NS_iter2_fsm = ap_ST_iter2_fsm_state0;
            end
        end
        default : begin
            ap_NS_iter2_fsm = 'bx;
        end
    endcase
end

assign ap_CS_iter0_fsm_state1 = ap_CS_iter0_fsm[32'd0];

assign ap_CS_iter1_fsm_state2 = ap_CS_iter1_fsm[32'd1];

assign ap_CS_iter2_fsm_state3 = ap_CS_iter2_fsm[32'd1];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_predicate_op26_read_state1 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state2_io = ((icmp_ln477_reg_218 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((icmp_ln477_reg_218 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state3_io = ((icmp_ln477_reg_218_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = ((regslice_both_out_V_U_apdone_blk == 1'b1) | ((icmp_ln477_reg_218_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_condition_275 = (~(((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln477_reg_218_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((1'b1 == ap_CS_iter1_fsm_state2) & ((1'b1 == ap_block_state2_io) | ((icmp_ln477_reg_218 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((ap_predicate_op26_read_state1 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1));
end

assign ap_phi_reg_pp0_iter0_ei_V_3_reg_83 = 'bx;

always @ (*) begin
    ap_predicate_op26_read_state1 = ((icmp_ln480_fu_125_p2 == 1'd1) & (icmp_ln477_fu_110_p2 == 1'd0));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign eo_V_fu_172_p1 = ap_phi_mux_ei_V_3_phi_fu_86_p4[11:0];

assign icmp_ln477_fu_110_p2 = ((ap_sig_allocacmp_t_1 == 11'd1600) ? 1'b1 : 1'b0);

assign icmp_ln480_fu_125_p2 = ((ap_sig_allocacmp_o_load_1 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln480_reg_222_pp0_iter0_reg = icmp_ln480_reg_222;

assign icmp_ln491_fu_140_p2 = ((o_1_fu_134_p2 == 32'd16) ? 1'b1 : 1'b0);

assign in0_V_TREADY = regslice_both_in0_V_U_ack_in;

assign o_1_fu_134_p2 = (ap_sig_allocacmp_o_load + 32'd1);

assign o_2_fu_146_p3 = ((icmp_ln491_fu_140_p2[0:0] == 1'b1) ? 32'd0 : o_1_fu_134_p2);

assign out_V_TDATA_int_regslice = eo_V_fu_172_p1;

assign out_V_TVALID = regslice_both_out_V_U_vld_out;

assign t_2_fu_116_p2 = (ap_sig_allocacmp_t_1 + 11'd1);

assign zext_ln477_fu_167_p1 = ei_V_fu_58;

endmodule //StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_13
