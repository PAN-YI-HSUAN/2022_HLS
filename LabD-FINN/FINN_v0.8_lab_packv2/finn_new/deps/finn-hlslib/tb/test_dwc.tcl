##############################################################################
 #  Copyright (c) 2019, Xilinx, Inc.
 #  All rights reserved.
 #
 #  Redistribution and use in source and binary forms, with or without
 #  modification, are permitted provided that the following conditions are met:
 #
 #  1.  Redistributions of source code must retain the above copyright notice,
 #     this list of conditions and the following disclaimer.
 #
 #  2.  Redistributions in binary form must reproduce the above copyright
 #      notice, this list of conditions and the following disclaimer in the
 #      documentation and/or other materials provided with the distribution.
 #
 #  3.  Neither the name of the copyright holder nor the names of its
 #      contributors may be used to endorse or promote products derived from
 #      this software without specific prior written permission.
 #
 #  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 #  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 #  THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 #  PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
 #  CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 #  EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 #  PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 #  OR BUSINESS INTERRUPTION). HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 #  WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 #  OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
 #  ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 #
###############################################################################
###############################################################################
 #
 #  Authors: Giulio Gambardella <giuliog@xilinx.com>
 #
 # \file test_dwc.tcl
 #
 # Tcl script for HLS csim, synthesis and cosim of the datawidth converter block
 #
###############################################################################
open_project hls-syn-dwc
add_files dwc_top.cpp -cflags "-std=c++14 -I$::env(FINN_HLS_ROOT) -I$::env(FINN_HLS_ROOT)/tb" 
add_files -tb dwc_tb.cpp -cflags "-std=c++14 -I$::env(FINN_HLS_ROOT) -I$::env(FINN_HLS_ROOT)/tb" 
set_top Testbench_dwc
open_solution sol1
set_part {xczu3eg-sbva484-1-i}
create_clock -period 5 -name default
csim_design
csynth_design
cosim_design
exit