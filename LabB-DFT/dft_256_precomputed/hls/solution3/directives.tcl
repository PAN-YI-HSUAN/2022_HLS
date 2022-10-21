############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name dft "dft"
set_directive_array_partition -type cyclic -factor 16 -dim 1 "dft" real_sample
set_directive_bind_storage -type ram_2p -impl bram "dft" real_sample
