#ifndef PARAMS_HPP
#define PARAMS_HPP
namespace PARAM{ 
static FixedPointWeights<2,ap_int<8>,6,8> weights= {
{
{ 
0x118c,
0x151c,
0x1825,
0x12c0,
0x7d27,
0x7c7e,
0x517a,
0x5a06} 
,{ 
0x1559,
0x353e,
0x300a,
0x6a51,
0x2d95,
0x7c7e,
0x517a,
0x5a06} 
,{ 
0x38a3,
0x353e,
0x300a,
0x6a51,
0x4590,
0x7e1b,
0x1965,
0x7ad2} 
,{ 
0x604f,
0x353e,
0x300a,
0x6a51,
0x5a0c,
0x6128,
0x6fa8,
0x3f0} 
,{ 
0xef1,
0x593c,
0x4fdf,
0x59af,
0x34af,
0x782a,
0x6c55,
0x4b71} 
,{ 
0x7d27,
0x63a4,
0x517a,
0x5a06,
0x175c,
0x5145,
0x3f73,
0x4c76} 
}
};

static const ap_uint<12> channel_mask = 0b000011101110;

static ap_uint<6> red_ch_index[2] = {1,5};

}

#endif 
