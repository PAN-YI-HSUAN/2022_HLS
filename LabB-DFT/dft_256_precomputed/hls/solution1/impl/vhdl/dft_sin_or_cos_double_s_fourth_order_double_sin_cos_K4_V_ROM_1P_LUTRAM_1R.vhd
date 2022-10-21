-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity dft_sin_or_cos_double_s_fourth_order_double_sin_cos_K4_V_ROM_1P_LUTRAM_1R is 
    generic(
             DataWidth     : integer := 25; 
             AddressWidth     : integer := 8; 
             AddressRange    : integer := 256
    ); 
    port (
          address0      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DataWidth-1 downto 0);
          reset     : in std_logic;
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of dft_sin_or_cos_double_s_fourth_order_double_sin_cos_K4_V_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "1000000111100000110011101", 1 => "1000000111011111100000111", 
    2 => "1000000111011101000001001", 3 => "1000000111011001010010101", 
    4 => "1000000111010100010000101", 5 => "1000000111001110000010111", 
    6 => "1000000111000110100001000", 7 => "1000000110111101101110010", 
    8 => "1000000110110011101111001", 9 => "1000000110101000011100110", 
    10 => "1000000110011011111100110", 11 => "1000000110001110010000101", 
    12 => "1000000101111111001111010", 13 => "1000000101101110111101000", 
    14 => "1000000101011101011101100", 15 => "1000000101001010101100000", 
    16 => "1000000100110110101110110", 17 => "1000000100100001011100011", 
    18 => "1000000100001010111101101", 19 => "1000000011110011010000011", 
    20 => "1000000011011010001111111", 21 => "1000000011000000000011100", 
    22 => "1000000010100100100111001", 23 => "1000000010000111111000100", 
    24 => "1000000001101001111101011", 25 => "1000000001001010110000000", 
    26 => "1000000000101010010110001", 27 => "1000000000001000110000101", 
    28 => "0111111111100101111000001", 29 => "0111111111000001101100100", 
    30 => "0111111110011100011100001", 31 => "0111111101110101110011101", 
    32 => "0111111101001110000010010", 33 => "0111111100100100111111010", 
    34 => "0111111011111010101110110", 35 => "0111111011001111010000110", 
    36 => "0111111010100010100110110", 37 => "0111111001110100100111100", 
    38 => "0111111001000101011110010", 39 => "0111111000010101001001110", 
    40 => "0111110111100011100011100", 41 => "0111110110110000110010001", 
    42 => "0111110101111100110101101", 43 => "0111110101000111100011100", 
    44 => "0111110100010001001011111", 45 => "0111110011011001100010100", 
    46 => "0111110010100000110001011", 47 => "0111110001100110101110000", 
    48 => "0111110000101011011111011", 49 => "0111101111101111000100110", 
    50 => "0111101110110001011011011", 51 => "0111101101110010100111110", 
    52 => "0111101100110010101001110", 53 => "0111101011110001011100110", 
    54 => "0111101010101111000110100", 55 => "0111101001101011100100011", 
    56 => "0111101000100110110110000", 57 => "0111100111100000111101010", 
    58 => "0111100110011001110110001", 59 => "0111100101010001100111010", 
    60 => "0111100100001000001000010", 61 => "0111100010111101100101100", 
    62 => "0111100001110001110011011", 63 => "0111100000100100111100100", 
    64 => "0111011111010110110101110", 65 => "0111011110000111100110011", 
    66 => "0111011100110111001110001", 67 => "0111011011100101101110101", 
    68 => "0111011010010011000010111", 69 => "0111011000111111001101011", 
    70 => "0111010111101010010001010", 71 => "0111010110010100000111100", 
    72 => "0111010100111100111110100", 73 => "0111010011100100100010111", 
    74 => "0111010010001011000111010", 75 => "0111010000110000011111111", 
    76 => "0111001111010100110000000", 77 => "0111001101110111111010110", 
    78 => "0111001100011001111110001", 79 => "0111001010111010110111101", 
    80 => "0111001001011010101111101", 81 => "0111000111111001011101011", 
    82 => "0111000110010111000101011", 83 => "0111000100110011100111000", 
    84 => "0111000011001111000100101", 85 => "0111000001101001011000001", 
    86 => "0111000000000010101011010", 87 => "0110111110011010110111000", 
    88 => "0110111100110001111110011", 89 => "0110111011001000000010111", 
    90 => "0110111001011101000001000", 91 => "0110110111110000111100011", 
    92 => "0110110110000011110000001", 93 => "0110110100010101100101101", 
    94 => "0110110010100110010100111", 95 => "0110110000110110000010110", 
    96 => "0110101111000100101101000", 97 => "0110101101010010010001011", 
    98 => "0110101011011110111000001", 99 => "0110101001101010011010100", 
    100 => "0110100111110100111110110", 101 => "0110100101111110011111001", 
    102 => "0110100100000110111101100", 103 => "0110100010001110011101011", 
    104 => "0110100000010100111001010", 105 => "0110011110011010010111011", 
    106 => "0110011100011110110100000", 107 => "0110011010100010010011101", 
    108 => "0110011000100100110101011", 109 => "0110010110100110010001100", 
    110 => "0110010100100110110011110", 111 => "0110010010100110010101001", 
    112 => "0110010000100100111110000", 113 => "0110001110100010100101011", 
    114 => "0110001100011111001010110", 115 => "0110001010011010111011100", 
    116 => "0110001000010101101000011", 117 => "0110000110001111011011111", 
    118 => "0110000100001000010001111", 119 => "0110000010000000001110011", 
    120 => "0101111111110111001100111", 121 => "0101111101101101010010010", 
    122 => "0101111011100010011101011", 123 => "0101111001010110101001101", 
    124 => "0101110111001001111111111", 125 => "0101110100111100011000000", 
    126 => "0101110010101101111010111", 127 => "0101110000011110100011001", 
    128 => "0001010001100110101101100", 129 => "0001010001100110100100110", 
    130 => "0001010001100110010100010", 131 => "0001010001100101111000000", 
    132 => "0001010001100101010011100", 133 => "0001010001100100100110011", 
    134 => "0001010001100011110010111", 135 => "0001010001100010110001110", 
    136 => "0001010001100001101100101", 137 => "0001010001100000011010001", 
    138 => "0001010001011111000000010", 139 => "0001010001011101011010111", 
    140 => "0001010001011011110010010", 141 => "0001010001011001111100000", 
    142 => "0001010001010111111110001", 143 => "0001010001010101111000101", 
    144 => "0001010001010011101001000", 145 => "0001010001010001010000000", 
    146 => "0001010001001110101101111", 147 => "0001010001001100000010011", 
    148 => "0001010001001001010000110", 149 => "0001010001000110010011011", 
    150 => "0001010001000011001110000", 151 => "0001010001000000000010111", 
    152 => "0001010000111100101000101", 153 => "0001010000111001001000101", 
    154 => "0001010000110101011101011", 155 => "0001010000110001101111110", 
    156 => "0001010000101101110100010", 157 => "0001010000101001101111100", 
    158 => "0001010000100101100010111", 159 => "0001010000100001001111001", 
    160 => "0001010000011100101110111", 161 => "0001010000011000001000011", 
    162 => "0001010000010011011011000", 163 => "0001010000001110100001101", 
    164 => "0001010000001001100000101", 165 => "0001010000000100010010100", 
    166 => "0001001111111110111111011", 167 => "0001001111111001100101000", 
    168 => "0001001111110100000000101", 169 => "0001001111101110010011001", 
    170 => "0001001111101000011010010", 171 => "0001001111100010011111000", 
    172 => "0001001111011100010101101", 173 => "0001001111010110000010101", 
    174 => "0001001111001111101010111", 175 => "0001001111001001001010101", 
    176 => "0001001111000010011101111", 177 => "0001001110111011101011000", 
    178 => "0001001110110100101111100", 179 => "0001001110101101101011100", 
    180 => "0001001110100110011110100", 181 => "0001001110011111000111000", 
    182 => "0001001110010111101000110", 183 => "0001001110010000000010010", 
    184 => "0001001110001000010011010", 185 => "0001001110000000011010100", 
    186 => "0001001101111000011001100", 187 => "0001001101110000010001100", 
    188 => "0001001101101000000001001", 189 => "0001001101011111100010100", 
    190 => "0001001101010111000010010", 191 => "0001001101001110010100011", 
    192 => "0001001101000101011111010", 193 => "0001001100111100100101000", 
    194 => "0001001100110011100001010", 195 => "0001001100101010010001101", 
    196 => "0001001100100000111110101", 197 => "0001001100010111011100111", 
    198 => "0001001100001101111011000", 199 => "0001001100000100001001011", 
    200 => "0001001011111010010110001", 201 => "0001001011110000010100100", 
    202 => "0001001011100110001100001", 203 => "0001001011011011111110010", 
    204 => "0001001011010001100101100", 205 => "0001001011000111000101100", 
    206 => "0001001010111100011010100", 207 => "0001001010110001101100000", 
    208 => "0001001010100110110100011", 209 => "0001001010011011110001000", 
    210 => "0001001010010000100101110", 211 => "0001001010000101010110100", 
    212 => "0001001001111010000000010", 213 => "0001001001101110011100110", 
    214 => "0001001001100010110010010", 215 => "0001001001010111000001010", 
    216 => "0001001001001011001001001", 217 => "0001001000111111000111110", 
    218 => "0001001000110010111100110", 219 => "0001001000100110101011110", 
    220 => "0001001000011010010010111", 221 => "0001001000001101110001111", 
    222 => "0001001000000001001001100", 223 => "0001000111110100011000011", 
    224 => "0001000111100111011111111", 225 => "0001000111011010011101011", 
    226 => "0001000111001101010101000", 227 => "0001000111000000000111011", 
    228 => "0001000110110010101111010", 229 => "0001000110100101001110101", 
    230 => "0001000110010111101000100", 231 => "0001000110001001111001111", 
    232 => "0001000101111100000011111", 233 => "0001000101101110000111101", 
    234 => "0001000101100000000000010", 235 => "0001000101010001110011101", 
    236 => "0001000101000011011110110", 237 => "0001000100110101000010001", 
    238 => "0001000100100110011111111", 239 => "0001000100010111110100100", 
    240 => "0001000100001001000000011", 241 => "0001000011111010000110100", 
    242 => "0001000011101011000111100", 243 => "0001000011011011111111001", 
    244 => "0001000011001100101111001", 245 => "0001000010111101011001110", 
    246 => "0001000010101101110111101", 247 => "0001000010011110010110010", 
    248 => "0001000010001110100110101", 249 => "0001000001111110110101001", 
    250 => "0001000001101110111100110", 251 => "0001000001011110111000111", 
    252 => "0001000001001110101111011", 253 => "0001000000111110011110010", 
    254 => "0001000000101110000111011", 255 => "0001000000011101101000001" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

begin 


memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(address0_tmp)); 
        end if;
    end if;
end process;

end rtl;

