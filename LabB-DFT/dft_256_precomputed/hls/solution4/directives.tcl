############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name dft "dft"
set_directive_array_partition -type cyclic -factor 16 -dim 1 "dft" real_sample
set_directive_interface -mode ap_none "dft" real_sample
set_directive_stream -depth 256 -type fifo "dft" real_sample
