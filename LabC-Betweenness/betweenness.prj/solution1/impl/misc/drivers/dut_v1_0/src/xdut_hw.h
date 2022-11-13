// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 4  - ap_continue (Read/Write/SC)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/COR)
//        bit 0 - ap_done (Read/COR)
//        bit 1 - ap_ready (Read/COR)
//        others - reserved
// 0x10 : Data signal of numVert
//        bit 31~0 - numVert[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of numEdge
//        bit 31~0 - numEdge[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of offset
//        bit 31~0 - offset[31:0] (Read/Write)
// 0x24 : Data signal of offset
//        bit 31~0 - offset[63:32] (Read/Write)
// 0x28 : reserved
// 0x2c : Data signal of column
//        bit 31~0 - column[31:0] (Read/Write)
// 0x30 : Data signal of column
//        bit 31~0 - column[63:32] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of btwn
//        bit 31~0 - btwn[31:0] (Read/Write)
// 0x3c : Data signal of btwn
//        bit 31~0 - btwn[63:32] (Read/Write)
// 0x40 : reserved
// 0x44 : Data signal of tmp0
//        bit 31~0 - tmp0[31:0] (Read/Write)
// 0x48 : Data signal of tmp0
//        bit 31~0 - tmp0[63:32] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of tmp1
//        bit 31~0 - tmp1[31:0] (Read/Write)
// 0x54 : Data signal of tmp1
//        bit 31~0 - tmp1[63:32] (Read/Write)
// 0x58 : reserved
// 0x5c : Data signal of tmp2
//        bit 31~0 - tmp2[31:0] (Read/Write)
// 0x60 : Data signal of tmp2
//        bit 31~0 - tmp2[63:32] (Read/Write)
// 0x64 : reserved
// 0x68 : Data signal of tmp3
//        bit 31~0 - tmp3[31:0] (Read/Write)
// 0x6c : Data signal of tmp3
//        bit 31~0 - tmp3[63:32] (Read/Write)
// 0x70 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XDUT_CONTROL_ADDR_AP_CTRL      0x00
#define XDUT_CONTROL_ADDR_GIE          0x04
#define XDUT_CONTROL_ADDR_IER          0x08
#define XDUT_CONTROL_ADDR_ISR          0x0c
#define XDUT_CONTROL_ADDR_NUMVERT_DATA 0x10
#define XDUT_CONTROL_BITS_NUMVERT_DATA 32
#define XDUT_CONTROL_ADDR_NUMEDGE_DATA 0x18
#define XDUT_CONTROL_BITS_NUMEDGE_DATA 32
#define XDUT_CONTROL_ADDR_OFFSET_DATA  0x20
#define XDUT_CONTROL_BITS_OFFSET_DATA  64
#define XDUT_CONTROL_ADDR_COLUMN_DATA  0x2c
#define XDUT_CONTROL_BITS_COLUMN_DATA  64
#define XDUT_CONTROL_ADDR_BTWN_DATA    0x38
#define XDUT_CONTROL_BITS_BTWN_DATA    64
#define XDUT_CONTROL_ADDR_TMP0_DATA    0x44
#define XDUT_CONTROL_BITS_TMP0_DATA    64
#define XDUT_CONTROL_ADDR_TMP1_DATA    0x50
#define XDUT_CONTROL_BITS_TMP1_DATA    64
#define XDUT_CONTROL_ADDR_TMP2_DATA    0x5c
#define XDUT_CONTROL_BITS_TMP2_DATA    64
#define XDUT_CONTROL_ADDR_TMP3_DATA    0x68
#define XDUT_CONTROL_BITS_TMP3_DATA    64

