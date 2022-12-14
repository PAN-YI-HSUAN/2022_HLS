// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="dft_dft,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.297000,HLS_SYN_LAT=1467140,HLS_SYN_TPT=none,HLS_SYN_MEM=10,HLS_SYN_DSP=0,HLS_SYN_FF=9445,HLS_SYN_LUT=9717,HLS_VERSION=2022_1}" *)

module dft (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        real_sample_address0,
        real_sample_ce0,
        real_sample_we0,
        real_sample_d0,
        real_sample_q0,
        imag_sample_address0,
        imag_sample_ce0,
        imag_sample_we0,
        imag_sample_d0
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] real_sample_address0;
output   real_sample_ce0;
output   real_sample_we0;
output  [31:0] real_sample_d0;
input  [31:0] real_sample_q0;
output  [7:0] imag_sample_address0;
output   imag_sample_ce0;
output   imag_sample_we0;
output  [31:0] imag_sample_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] real_sample_address0;
reg real_sample_ce0;
reg real_sample_we0;

(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] sum_r_addr_reg_220;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln11_fu_163_p2;
wire   [7:0] trunc_ln18_fu_181_p1;
reg   [7:0] trunc_ln18_reg_225;
reg   [7:0] sum_i_addr_reg_231;
wire   [31:0] sum_r_q0;
reg   [31:0] sum_r_load_reg_236;
wire    ap_CS_fsm_state3;
wire   [31:0] sum_i_q0;
reg   [31:0] sum_i_load_reg_241;
wire    ap_CS_fsm_state5;
reg   [7:0] sum_r_address0;
reg    sum_r_ce0;
reg    sum_r_we0;
reg   [7:0] sum_i_address0;
reg    sum_i_ce0;
reg    sum_i_we0;
wire    grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_ap_start;
wire    grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_ap_done;
wire    grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_ap_idle;
wire    grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_ap_ready;
wire   [7:0] grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_sum_r_address0;
wire    grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_sum_r_ce0;
wire   [7:0] grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_real_sample_address0;
wire    grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_real_sample_ce0;
wire    grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_real_sample_we0;
wire   [31:0] grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_real_sample_d0;
wire   [7:0] grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_sum_i_address0;
wire    grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_sum_i_ce0;
wire   [7:0] grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_imag_sample_address0;
wire    grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_imag_sample_ce0;
wire    grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_imag_sample_we0;
wire   [31:0] grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_imag_sample_d0;
wire    grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_ap_start;
wire    grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_ap_done;
wire    grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_ap_idle;
wire    grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_ap_ready;
wire   [7:0] grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_real_sample_address0;
wire    grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_real_sample_ce0;
wire   [31:0] grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_p_out;
wire    grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_p_out_ap_vld;
wire   [63:0] grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_246_p_din0;
wire    grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_246_p_ce;
wire   [31:0] grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_249_p_din0;
wire    grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_249_p_ce;
wire   [63:0] grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_252_p_din0;
wire   [63:0] grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_252_p_din1;
wire   [1:0] grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_252_p_opcode;
wire    grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_252_p_ce;
wire   [63:0] grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_256_p_din0;
wire   [63:0] grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_256_p_din1;
wire    grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_256_p_ce;
wire   [31:0] grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_260_p_din0;
wire    grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_260_p_ce;
wire   [63:0] grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_sin_or_cos_double_s_fu_263_p_din1;
wire  signed [0:0] grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_sin_or_cos_double_s_fu_263_p_din2;
wire    grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_sin_or_cos_double_s_fu_263_p_start;
wire    grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_ap_start;
wire    grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_ap_done;
wire    grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_ap_idle;
wire    grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_ap_ready;
wire   [7:0] grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_real_sample_address0;
wire    grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_real_sample_ce0;
wire   [31:0] grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_p_out;
wire    grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_p_out_ap_vld;
wire   [63:0] grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_246_p_din0;
wire    grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_246_p_ce;
wire   [31:0] grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_249_p_din0;
wire    grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_249_p_ce;
wire   [63:0] grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_252_p_din0;
wire   [63:0] grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_252_p_din1;
wire   [1:0] grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_252_p_opcode;
wire    grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_252_p_ce;
wire   [63:0] grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_256_p_din0;
wire   [63:0] grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_256_p_din1;
wire    grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_256_p_ce;
wire   [31:0] grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_260_p_din0;
wire    grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_260_p_ce;
wire   [63:0] grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_sin_or_cos_double_s_fu_263_p_din1;
wire  signed [0:0] grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_sin_or_cos_double_s_fu_263_p_din2;
wire    grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_sin_or_cos_double_s_fu_263_p_start;
reg    grp_sin_or_cos_double_s_fu_263_ap_start;
wire    grp_sin_or_cos_double_s_fu_263_ap_done;
wire    grp_sin_or_cos_double_s_fu_263_ap_idle;
wire    grp_sin_or_cos_double_s_fu_263_ap_ready;
reg   [63:0] grp_sin_or_cos_double_s_fu_263_t_in;
reg   [0:0] grp_sin_or_cos_double_s_fu_263_do_cos;
wire   [63:0] grp_sin_or_cos_double_s_fu_263_ap_return;
reg    grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_ap_start_reg;
wire    ap_CS_fsm_state8;
reg    grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_ap_start_reg;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln11_fu_175_p1;
reg   [8:0] k_fu_58;
wire   [8:0] add_ln11_fu_169_p2;
wire    ap_CS_fsm_state7;
wire   [31:0] grp_fu_246_p1;
reg   [63:0] grp_fu_246_p0;
reg    grp_fu_246_ce;
wire   [63:0] grp_fu_249_p1;
reg   [31:0] grp_fu_249_p0;
reg    grp_fu_249_ce;
wire   [63:0] grp_fu_252_p2;
reg   [63:0] grp_fu_252_p0;
reg   [63:0] grp_fu_252_p1;
reg    grp_fu_252_ce;
wire   [63:0] grp_fu_256_p2;
reg   [63:0] grp_fu_256_p0;
reg   [63:0] grp_fu_256_p1;
reg    grp_fu_256_ce;
wire   [63:0] grp_fu_260_p1;
reg   [31:0] grp_fu_260_p0;
reg    grp_fu_260_ce;
reg   [7:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
#0 grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_ap_start_reg = 1'b0;
#0 grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_ap_start_reg = 1'b0;
#0 grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_ap_start_reg = 1'b0;
end

dft_sum_r_RAM_AUTO_1R1W #(
    .DataWidth( 32 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
sum_r_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(sum_r_address0),
    .ce0(sum_r_ce0),
    .we0(sum_r_we0),
    .d0(grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_p_out),
    .q0(sum_r_q0)
);

dft_sum_r_RAM_AUTO_1R1W #(
    .DataWidth( 32 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
sum_i_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(sum_i_address0),
    .ce0(sum_i_ce0),
    .we0(sum_i_we0),
    .d0(grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_p_out),
    .q0(sum_i_q0)
);

dft_dft_Pipeline_VITIS_LOOP_30_4 grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_ap_start),
    .ap_done(grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_ap_done),
    .ap_idle(grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_ap_idle),
    .ap_ready(grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_ap_ready),
    .sum_r_address0(grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_sum_r_address0),
    .sum_r_ce0(grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_sum_r_ce0),
    .sum_r_q0(sum_r_q0),
    .real_sample_address0(grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_real_sample_address0),
    .real_sample_ce0(grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_real_sample_ce0),
    .real_sample_we0(grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_real_sample_we0),
    .real_sample_d0(grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_real_sample_d0),
    .sum_i_address0(grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_sum_i_address0),
    .sum_i_ce0(grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_sum_i_ce0),
    .sum_i_q0(sum_i_q0),
    .imag_sample_address0(grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_imag_sample_address0),
    .imag_sample_ce0(grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_imag_sample_ce0),
    .imag_sample_we0(grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_imag_sample_we0),
    .imag_sample_d0(grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_imag_sample_d0)
);

dft_dft_Pipeline_VITIS_LOOP_13_2 grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_ap_start),
    .ap_done(grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_ap_done),
    .ap_idle(grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_ap_idle),
    .ap_ready(grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_ap_ready),
    .sum_r_load(sum_r_load_reg_236),
    .real_sample_address0(grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_real_sample_address0),
    .real_sample_ce0(grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_real_sample_ce0),
    .real_sample_q0(real_sample_q0),
    .trunc_ln18_1(trunc_ln18_reg_225),
    .p_out(grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_p_out),
    .p_out_ap_vld(grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_p_out_ap_vld),
    .grp_fu_246_p_din0(grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_246_p_din0),
    .grp_fu_246_p_dout0(grp_fu_246_p1),
    .grp_fu_246_p_ce(grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_246_p_ce),
    .grp_fu_249_p_din0(grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_249_p_din0),
    .grp_fu_249_p_dout0(grp_fu_249_p1),
    .grp_fu_249_p_ce(grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_249_p_ce),
    .grp_fu_252_p_din0(grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_252_p_din0),
    .grp_fu_252_p_din1(grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_252_p_din1),
    .grp_fu_252_p_opcode(grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_252_p_opcode),
    .grp_fu_252_p_dout0(grp_fu_252_p2),
    .grp_fu_252_p_ce(grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_252_p_ce),
    .grp_fu_256_p_din0(grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_256_p_din0),
    .grp_fu_256_p_din1(grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_256_p_din1),
    .grp_fu_256_p_dout0(grp_fu_256_p2),
    .grp_fu_256_p_ce(grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_256_p_ce),
    .grp_fu_260_p_din0(grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_260_p_din0),
    .grp_fu_260_p_dout0(grp_fu_260_p1),
    .grp_fu_260_p_ce(grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_260_p_ce),
    .grp_sin_or_cos_double_s_fu_263_p_din1(grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_sin_or_cos_double_s_fu_263_p_din1),
    .grp_sin_or_cos_double_s_fu_263_p_din2(grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_sin_or_cos_double_s_fu_263_p_din2),
    .grp_sin_or_cos_double_s_fu_263_p_dout0(grp_sin_or_cos_double_s_fu_263_ap_return),
    .grp_sin_or_cos_double_s_fu_263_p_start(grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_sin_or_cos_double_s_fu_263_p_start),
    .grp_sin_or_cos_double_s_fu_263_p_ready(grp_sin_or_cos_double_s_fu_263_ap_ready),
    .grp_sin_or_cos_double_s_fu_263_p_done(grp_sin_or_cos_double_s_fu_263_ap_done),
    .grp_sin_or_cos_double_s_fu_263_p_idle(grp_sin_or_cos_double_s_fu_263_ap_idle)
);

dft_dft_Pipeline_VITIS_LOOP_21_3 grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_ap_start),
    .ap_done(grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_ap_done),
    .ap_idle(grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_ap_idle),
    .ap_ready(grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_ap_ready),
    .sum_i_load_1(sum_i_load_reg_241),
    .real_sample_address0(grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_real_sample_address0),
    .real_sample_ce0(grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_real_sample_ce0),
    .real_sample_q0(real_sample_q0),
    .trunc_ln18_1(trunc_ln18_reg_225),
    .p_out(grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_p_out),
    .p_out_ap_vld(grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_p_out_ap_vld),
    .grp_fu_246_p_din0(grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_246_p_din0),
    .grp_fu_246_p_dout0(grp_fu_246_p1),
    .grp_fu_246_p_ce(grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_246_p_ce),
    .grp_fu_249_p_din0(grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_249_p_din0),
    .grp_fu_249_p_dout0(grp_fu_249_p1),
    .grp_fu_249_p_ce(grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_249_p_ce),
    .grp_fu_252_p_din0(grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_252_p_din0),
    .grp_fu_252_p_din1(grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_252_p_din1),
    .grp_fu_252_p_opcode(grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_252_p_opcode),
    .grp_fu_252_p_dout0(grp_fu_252_p2),
    .grp_fu_252_p_ce(grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_252_p_ce),
    .grp_fu_256_p_din0(grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_256_p_din0),
    .grp_fu_256_p_din1(grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_256_p_din1),
    .grp_fu_256_p_dout0(grp_fu_256_p2),
    .grp_fu_256_p_ce(grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_256_p_ce),
    .grp_fu_260_p_din0(grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_260_p_din0),
    .grp_fu_260_p_dout0(grp_fu_260_p1),
    .grp_fu_260_p_ce(grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_260_p_ce),
    .grp_sin_or_cos_double_s_fu_263_p_din1(grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_sin_or_cos_double_s_fu_263_p_din1),
    .grp_sin_or_cos_double_s_fu_263_p_din2(grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_sin_or_cos_double_s_fu_263_p_din2),
    .grp_sin_or_cos_double_s_fu_263_p_dout0(grp_sin_or_cos_double_s_fu_263_ap_return),
    .grp_sin_or_cos_double_s_fu_263_p_start(grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_sin_or_cos_double_s_fu_263_p_start),
    .grp_sin_or_cos_double_s_fu_263_p_ready(grp_sin_or_cos_double_s_fu_263_ap_ready),
    .grp_sin_or_cos_double_s_fu_263_p_done(grp_sin_or_cos_double_s_fu_263_ap_done),
    .grp_sin_or_cos_double_s_fu_263_p_idle(grp_sin_or_cos_double_s_fu_263_ap_idle)
);

dft_sin_or_cos_double_s grp_sin_or_cos_double_s_fu_263(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sin_or_cos_double_s_fu_263_ap_start),
    .ap_done(grp_sin_or_cos_double_s_fu_263_ap_done),
    .ap_idle(grp_sin_or_cos_double_s_fu_263_ap_idle),
    .ap_ready(grp_sin_or_cos_double_s_fu_263_ap_ready),
    .t_in(grp_sin_or_cos_double_s_fu_263_t_in),
    .do_cos(grp_sin_or_cos_double_s_fu_263_do_cos),
    .ap_return(grp_sin_or_cos_double_s_fu_263_ap_return)
);

dft_fptrunc_64ns_32_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 64 ),
    .dout_WIDTH( 32 ))
fptrunc_64ns_32_2_no_dsp_1_U53(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_246_p0),
    .ce(grp_fu_246_ce),
    .dout(grp_fu_246_p1)
);

dft_fpext_32ns_64_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
fpext_32ns_64_2_no_dsp_1_U54(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_249_p0),
    .ce(grp_fu_249_ce),
    .dout(grp_fu_249_p1)
);

dft_dadd_64ns_64ns_64_7_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 7 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
dadd_64ns_64ns_64_7_full_dsp_1_U55(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_252_p0),
    .din1(grp_fu_252_p1),
    .ce(grp_fu_252_ce),
    .dout(grp_fu_252_p2)
);

dft_dmul_64ns_64ns_64_7_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 7 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U56(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_256_p0),
    .din1(grp_fu_256_p1),
    .ce(grp_fu_256_ce),
    .dout(grp_fu_256_p2)
);

dft_sitodp_32ns_64_6_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
sitodp_32ns_64_6_no_dsp_1_U57(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_260_p0),
    .ce(grp_fu_260_ce),
    .dout(grp_fu_260_p1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_ap_start_reg <= 1'b1;
        end else if ((grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_ap_ready == 1'b1)) begin
            grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_ap_start_reg <= 1'b1;
        end else if ((grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_ap_ready == 1'b1)) begin
            grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln11_fu_163_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_ap_start_reg <= 1'b1;
        end else if ((grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_ap_ready == 1'b1)) begin
            grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        k_fu_58 <= 9'd0;
    end else if (((icmp_ln11_fu_163_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        k_fu_58 <= add_ln11_fu_169_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln11_fu_163_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        sum_i_addr_reg_231 <= zext_ln11_fu_175_p1;
        sum_r_addr_reg_220 <= zext_ln11_fu_175_p1;
        trunc_ln18_reg_225 <= trunc_ln18_fu_181_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_i_load_reg_241 <= sum_i_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_r_load_reg_236 <= sum_r_q0;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if ((grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

assign ap_ST_fsm_state7_blk = 1'b0;

always @ (*) begin
    if ((grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end

always @ (*) begin
    if (((grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_246_ce = grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_246_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_246_ce = grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_246_p_ce;
    end else begin
        grp_fu_246_ce = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_246_p0 = grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_246_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_246_p0 = grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_246_p_din0;
    end else begin
        grp_fu_246_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_249_ce = grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_249_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_249_ce = grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_249_p_ce;
    end else begin
        grp_fu_249_ce = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_249_p0 = grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_249_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_249_p0 = grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_249_p_din0;
    end else begin
        grp_fu_249_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_252_ce = grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_252_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_252_ce = grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_252_p_ce;
    end else begin
        grp_fu_252_ce = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_252_p0 = grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_252_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_252_p0 = grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_252_p_din0;
    end else begin
        grp_fu_252_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_252_p1 = grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_252_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_252_p1 = grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_252_p_din1;
    end else begin
        grp_fu_252_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_256_ce = grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_256_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_256_ce = grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_256_p_ce;
    end else begin
        grp_fu_256_ce = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_256_p0 = grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_256_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_256_p0 = grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_256_p_din0;
    end else begin
        grp_fu_256_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_256_p1 = grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_256_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_256_p1 = grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_256_p_din1;
    end else begin
        grp_fu_256_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_260_ce = grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_260_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_260_ce = grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_260_p_ce;
    end else begin
        grp_fu_260_ce = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_260_p0 = grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_fu_260_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_260_p0 = grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_fu_260_p_din0;
    end else begin
        grp_fu_260_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_sin_or_cos_double_s_fu_263_ap_start = grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_sin_or_cos_double_s_fu_263_p_start;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_sin_or_cos_double_s_fu_263_ap_start = grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_sin_or_cos_double_s_fu_263_p_start;
    end else begin
        grp_sin_or_cos_double_s_fu_263_ap_start = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_sin_or_cos_double_s_fu_263_do_cos = grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_sin_or_cos_double_s_fu_263_p_din2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_sin_or_cos_double_s_fu_263_do_cos = grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_sin_or_cos_double_s_fu_263_p_din2;
    end else begin
        grp_sin_or_cos_double_s_fu_263_do_cos = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_sin_or_cos_double_s_fu_263_t_in = grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_grp_sin_or_cos_double_s_fu_263_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_sin_or_cos_double_s_fu_263_t_in = grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_grp_sin_or_cos_double_s_fu_263_p_din1;
    end else begin
        grp_sin_or_cos_double_s_fu_263_t_in = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        real_sample_address0 = grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_real_sample_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        real_sample_address0 = grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_real_sample_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        real_sample_address0 = grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_real_sample_address0;
    end else begin
        real_sample_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        real_sample_ce0 = grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_real_sample_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        real_sample_ce0 = grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_real_sample_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        real_sample_ce0 = grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_real_sample_ce0;
    end else begin
        real_sample_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        real_sample_we0 = grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_real_sample_we0;
    end else begin
        real_sample_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        sum_i_address0 = sum_i_addr_reg_231;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_i_address0 = grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_sum_i_address0;
    end else begin
        sum_i_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state4) & (grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_ap_done == 1'b1)))) begin
        sum_i_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_i_ce0 = grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_sum_i_ce0;
    end else begin
        sum_i_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        sum_i_we0 = 1'b1;
    end else begin
        sum_i_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_r_address0 = sum_r_addr_reg_220;
    end else if (((icmp_ln11_fu_163_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        sum_r_address0 = zext_ln11_fu_175_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_r_address0 = grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_sum_r_address0;
    end else begin
        sum_r_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | ((icmp_ln11_fu_163_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        sum_r_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_r_ce0 = grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_sum_r_ce0;
    end else begin
        sum_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_r_we0 = 1'b1;
    end else begin
        sum_r_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln11_fu_163_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln11_fu_169_p2 = (k_fu_58 + 9'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_ap_start = grp_dft_Pipeline_VITIS_LOOP_13_2_fu_111_ap_start_reg;

assign grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_ap_start = grp_dft_Pipeline_VITIS_LOOP_21_3_fu_133_ap_start_reg;

assign grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_ap_start = grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_ap_start_reg;

assign icmp_ln11_fu_163_p2 = ((k_fu_58 == 9'd256) ? 1'b1 : 1'b0);

assign imag_sample_address0 = grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_imag_sample_address0;

assign imag_sample_ce0 = grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_imag_sample_ce0;

assign imag_sample_d0 = grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_imag_sample_d0;

assign imag_sample_we0 = grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_imag_sample_we0;

assign real_sample_d0 = grp_dft_Pipeline_VITIS_LOOP_30_4_fu_101_real_sample_d0;

assign trunc_ln18_fu_181_p1 = k_fu_58[7:0];

assign zext_ln11_fu_175_p1 = k_fu_58;

endmodule //dft
