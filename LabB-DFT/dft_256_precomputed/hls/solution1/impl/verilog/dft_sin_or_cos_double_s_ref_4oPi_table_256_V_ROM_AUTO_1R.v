// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module dft_sin_or_cos_double_s_ref_4oPi_table_256_V_ROM_AUTO_1R (
address0, ce0, q0, reset,clk);

parameter DataWidth = 256;
parameter AddressWidth = 4;
parameter AddressRange = 10;

input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;

reg [DataWidth-1:0] ram[0:AddressRange-1];

initial begin
    $readmemh("./dft_sin_or_cos_double_s_ref_4oPi_table_256_V_ROM_AUTO_1R.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[address0];
    end
end



endmodule

