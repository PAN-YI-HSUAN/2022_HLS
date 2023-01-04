// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module StreamingDataflowPartition_2_IODMA_0_StreamingDataWidthConverter_Batch_8u_64u_4096u_Pipeline_VITIS_LOOP_508_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in0_V_TVALID,
        dwc2dma1_din,
        dwc2dma1_num_data_valid,
        dwc2dma1_fifo_cap,
        dwc2dma1_full_n,
        dwc2dma1_write,
        totalIters,
        in0_V_TDATA,
        in0_V_TREADY
);

parameter    ap_ST_iter0_fsm_state1 = 1'd1;
parameter    ap_ST_iter1_fsm_state2 = 2'd2;
parameter    ap_ST_iter1_fsm_state0 = 2'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   in0_V_TVALID;
output  [63:0] dwc2dma1_din;
input  [1:0] dwc2dma1_num_data_valid;
input  [1:0] dwc2dma1_fifo_cap;
input   dwc2dma1_full_n;
output   dwc2dma1_write;
input  [31:0] totalIters;
input  [7:0] in0_V_TDATA;
output   in0_V_TREADY;

reg ap_idle;
reg dwc2dma1_write;
reg in0_V_TREADY;

reg   [0:0] ap_CS_iter0_fsm;
wire    ap_CS_iter0_fsm_state1;
reg   [1:0] ap_CS_iter1_fsm;
wire    ap_CS_iter1_fsm_state0;
wire   [0:0] icmp_ln508_fu_97_p2;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] icmp_ln508_reg_198;
wire   [0:0] icmp_ln508_reg_198_pp0_iter0_reg;
reg   [0:0] icmp_ln517_reg_208;
reg    ap_predicate_op32_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
wire    ap_CS_iter1_fsm_state2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    in0_V_TDATA_blk_n;
reg    dwc2dma1_blk_n;
reg   [7:0] ei_V_reg_202;
wire   [0:0] icmp_ln517_fu_118_p2;
reg   [55:0] p_Val2_s_fu_48;
wire   [55:0] trunc_ln_fu_163_p3;
wire    ap_loop_init;
reg   [31:0] i_fu_52;
wire   [31:0] i_1_fu_112_p2;
reg   [31:0] ap_sig_allocacmp_i_load;
reg   [31:0] t_fu_56;
wire   [31:0] t_2_fu_103_p2;
reg   [31:0] ap_sig_allocacmp_t_1;
wire   [47:0] tmp_1_fu_153_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_iter0_fsm;
reg   [1:0] ap_NS_iter1_fsm;
reg    ap_ST_iter0_fsm_state1_blk;
reg    ap_ST_iter1_fsm_state2_blk;
wire    ap_start_int;
reg    ap_condition_193;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_iter0_fsm = 1'd1;
#0 ap_CS_iter1_fsm = 2'd1;
#0 ap_done_reg = 1'b0;
end

StreamingDataflowPartition_2_IODMA_0_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_iter0_fsm <= ap_ST_iter0_fsm_state1;
    end else begin
        ap_CS_iter0_fsm <= ap_NS_iter0_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_iter1_fsm <= ap_ST_iter1_fsm_state0;
    end else begin
        ap_CS_iter1_fsm <= ap_NS_iter1_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((ap_predicate_op32_write_state2 == 1'b1) & (dwc2dma1_full_n == 1'b0)) & (1'b1 == ap_CS_iter1_fsm_state2) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_predicate_op32_write_state2 == 1'b1) & (dwc2dma1_full_n == 1'b0)) & (ap_loop_exit_ready == 1'b0) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if ((~((ap_start_int == 1'b0) | ((ap_predicate_op32_write_state2 == 1'b1) & (dwc2dma1_full_n == 1'b0) & (1'b1 == ap_CS_iter1_fsm_state2)) | ((icmp_ln508_fu_97_p2 == 1'd0) & (in0_V_TVALID == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_193)) begin
        if (((icmp_ln517_fu_118_p2 == 1'd1) & (icmp_ln508_fu_97_p2 == 1'd0))) begin
            i_fu_52 <= 32'd0;
        end else if (((icmp_ln517_fu_118_p2 == 1'd0) & (icmp_ln508_fu_97_p2 == 1'd0))) begin
            i_fu_52 <= i_1_fu_112_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_52 <= 32'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start_int == 1'b0) | ((ap_predicate_op32_write_state2 == 1'b1) & (dwc2dma1_full_n == 1'b0) & (1'b1 == ap_CS_iter1_fsm_state2)) | ((icmp_ln508_fu_97_p2 == 1'd0) & (in0_V_TVALID == 1'b0))) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        p_Val2_s_fu_48 <= 56'd0;
    end else if ((~((ap_predicate_op32_write_state2 == 1'b1) & (dwc2dma1_full_n == 1'b0)) & (icmp_ln508_reg_198 == 1'd0) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        p_Val2_s_fu_48 <= trunc_ln_fu_163_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_193)) begin
        if ((icmp_ln508_fu_97_p2 == 1'd0)) begin
            t_fu_56 <= t_2_fu_103_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            t_fu_56 <= 32'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start_int == 1'b0) | ((ap_predicate_op32_write_state2 == 1'b1) & (dwc2dma1_full_n == 1'b0) & (1'b1 == ap_CS_iter1_fsm_state2)) | ((icmp_ln508_fu_97_p2 == 1'd0) & (in0_V_TVALID == 1'b0))) & (icmp_ln508_fu_97_p2 == 1'd0) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        ei_V_reg_202 <= in0_V_TDATA;
        icmp_ln517_reg_208 <= icmp_ln517_fu_118_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start_int == 1'b0) | ((ap_predicate_op32_write_state2 == 1'b1) & (dwc2dma1_full_n == 1'b0) & (1'b1 == ap_CS_iter1_fsm_state2)) | ((icmp_ln508_fu_97_p2 == 1'd0) & (in0_V_TVALID == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        icmp_ln508_reg_198 <= icmp_ln508_fu_97_p2;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) | ((icmp_ln508_fu_97_p2 == 1'd0) & (in0_V_TVALID == 1'b0)))) begin
        ap_ST_iter0_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_iter0_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((ap_predicate_op32_write_state2 == 1'b1) & (dwc2dma1_full_n == 1'b0))) begin
        ap_ST_iter1_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_iter1_fsm_state2_blk = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start_int == 1'b0) | ((ap_predicate_op32_write_state2 == 1'b1) & (dwc2dma1_full_n == 1'b0) & (1'b1 == ap_CS_iter1_fsm_state2)) | ((icmp_ln508_fu_97_p2 == 1'd0) & (in0_V_TVALID == 1'b0))) & (icmp_ln508_fu_97_p2 == 1'd1) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_predicate_op32_write_state2 == 1'b1) & (dwc2dma1_full_n == 1'b0)) & (1'b1 == ap_CS_iter1_fsm_state2) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_iter1_fsm_state0) & (1'b1 == ap_CS_iter0_fsm_state1) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start_int == 1'b0) | ((ap_predicate_op32_write_state2 == 1'b1) & (dwc2dma1_full_n == 1'b0) & (1'b1 == ap_CS_iter1_fsm_state2)) | ((icmp_ln508_fu_97_p2 == 1'd0) & (in0_V_TVALID == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        ap_sig_allocacmp_i_load = 32'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_52;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        ap_sig_allocacmp_t_1 = 32'd0;
    end else begin
        ap_sig_allocacmp_t_1 = t_fu_56;
    end
end

always @ (*) begin
    if (((ap_predicate_op32_write_state2 == 1'b1) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        dwc2dma1_blk_n = dwc2dma1_full_n;
    end else begin
        dwc2dma1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_predicate_op32_write_state2 == 1'b1) & (dwc2dma1_full_n == 1'b0)) & (ap_predicate_op32_write_state2 == 1'b1) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        dwc2dma1_write = 1'b1;
    end else begin
        dwc2dma1_write = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln508_fu_97_p2 == 1'd0) & (1'b1 == ap_CS_iter0_fsm_state1) & (ap_start_int == 1'b1))) begin
        in0_V_TDATA_blk_n = in0_V_TVALID;
    end else begin
        in0_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start_int == 1'b0) | ((ap_predicate_op32_write_state2 == 1'b1) & (dwc2dma1_full_n == 1'b0) & (1'b1 == ap_CS_iter1_fsm_state2)) | ((icmp_ln508_fu_97_p2 == 1'd0) & (in0_V_TVALID == 1'b0))) & (icmp_ln508_fu_97_p2 == 1'd0) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        in0_V_TREADY = 1'b1;
    end else begin
        in0_V_TREADY = 1'b0;
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
            if ((~((ap_predicate_op32_write_state2 == 1'b1) & (dwc2dma1_full_n == 1'b0)) & ((1'b0 == ap_CS_iter0_fsm_state1) | ((1'b1 == ap_CS_iter0_fsm_state1) & ((ap_start_int == 1'b0) | ((icmp_ln508_fu_97_p2 == 1'd0) & (in0_V_TVALID == 1'b0))))))) begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state0;
            end else if (((~((ap_predicate_op32_write_state2 == 1'b1) & (dwc2dma1_full_n == 1'b0)) & ~((ap_start_int == 1'b0) | ((icmp_ln508_fu_97_p2 == 1'd0) & (in0_V_TVALID == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1)) | (~((ap_predicate_op32_write_state2 == 1'b1) & (dwc2dma1_full_n == 1'b0)) & (icmp_ln508_reg_198_pp0_iter0_reg == 1'd1) & (1'b1 == ap_CS_iter1_fsm_state2)))) begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state2;
            end else begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state2;
            end
        end
        ap_ST_iter1_fsm_state0 : begin
            if ((~((ap_start_int == 1'b0) | ((ap_predicate_op32_write_state2 == 1'b1) & (dwc2dma1_full_n == 1'b0) & (1'b1 == ap_CS_iter1_fsm_state2)) | ((icmp_ln508_fu_97_p2 == 1'd0) & (in0_V_TVALID == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
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

assign ap_CS_iter0_fsm_state1 = ap_CS_iter0_fsm[32'd0];

assign ap_CS_iter1_fsm_state0 = ap_CS_iter1_fsm[32'd0];

assign ap_CS_iter1_fsm_state2 = ap_CS_iter1_fsm[32'd1];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start_int == 1'b0) | ((icmp_ln508_fu_97_p2 == 1'd0) & (in0_V_TVALID == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((ap_predicate_op32_write_state2 == 1'b1) & (dwc2dma1_full_n == 1'b0));
end

always @ (*) begin
    ap_condition_193 = (~((ap_start_int == 1'b0) | ((ap_predicate_op32_write_state2 == 1'b1) & (dwc2dma1_full_n == 1'b0) & (1'b1 == ap_CS_iter1_fsm_state2)) | ((icmp_ln508_fu_97_p2 == 1'd0) & (in0_V_TVALID == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1));
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

always @ (*) begin
    ap_predicate_op32_write_state2 = ((icmp_ln517_reg_208 == 1'd1) & (icmp_ln508_reg_198 == 1'd0));
end

assign dwc2dma1_din = {{ei_V_reg_202}, {p_Val2_s_fu_48}};

assign i_1_fu_112_p2 = (ap_sig_allocacmp_i_load + 32'd1);

assign icmp_ln508_fu_97_p2 = ((ap_sig_allocacmp_t_1 == totalIters) ? 1'b1 : 1'b0);

assign icmp_ln508_reg_198_pp0_iter0_reg = icmp_ln508_reg_198;

assign icmp_ln517_fu_118_p2 = ((i_1_fu_112_p2 == 32'd8) ? 1'b1 : 1'b0);

assign t_2_fu_103_p2 = (ap_sig_allocacmp_t_1 + 32'd1);

assign tmp_1_fu_153_p4 = {{p_Val2_s_fu_48[55:8]}};

assign trunc_ln_fu_163_p3 = {{ei_V_reg_202}, {tmp_1_fu_153_p4}};

endmodule //StreamingDataflowPartition_2_IODMA_0_StreamingDataWidthConverter_Batch_8u_64u_4096u_Pipeline_VITIS_LOOP_508_3
