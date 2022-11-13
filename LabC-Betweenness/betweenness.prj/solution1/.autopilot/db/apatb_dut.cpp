#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_numVert "../tv/cdatafile/c.dut.autotvin_numVert.dat"
#define AUTOTB_TVOUT_numVert "../tv/cdatafile/c.dut.autotvout_numVert.dat"
#define AUTOTB_TVIN_numEdge "../tv/cdatafile/c.dut.autotvin_numEdge.dat"
#define AUTOTB_TVOUT_numEdge "../tv/cdatafile/c.dut.autotvout_numEdge.dat"
#define AUTOTB_TVIN_offset "../tv/cdatafile/c.dut.autotvin_offset.dat"
#define AUTOTB_TVOUT_offset "../tv/cdatafile/c.dut.autotvout_offset.dat"
#define AUTOTB_TVIN_column "../tv/cdatafile/c.dut.autotvin_column.dat"
#define AUTOTB_TVOUT_column "../tv/cdatafile/c.dut.autotvout_column.dat"
#define AUTOTB_TVIN_btwn "../tv/cdatafile/c.dut.autotvin_btwn.dat"
#define AUTOTB_TVOUT_btwn "../tv/cdatafile/c.dut.autotvout_btwn.dat"
#define AUTOTB_TVIN_tmp0 "../tv/cdatafile/c.dut.autotvin_tmp0.dat"
#define AUTOTB_TVOUT_tmp0 "../tv/cdatafile/c.dut.autotvout_tmp0.dat"
#define AUTOTB_TVIN_tmp1 "../tv/cdatafile/c.dut.autotvin_tmp1.dat"
#define AUTOTB_TVOUT_tmp1 "../tv/cdatafile/c.dut.autotvout_tmp1.dat"
#define AUTOTB_TVIN_tmp2 "../tv/cdatafile/c.dut.autotvin_tmp2.dat"
#define AUTOTB_TVOUT_tmp2 "../tv/cdatafile/c.dut.autotvout_tmp2.dat"
#define AUTOTB_TVIN_tmp3 "../tv/cdatafile/c.dut.autotvin_tmp3.dat"
#define AUTOTB_TVOUT_tmp3 "../tv/cdatafile/c.dut.autotvout_tmp3.dat"
#define AUTOTB_TVIN_gmem0 "../tv/cdatafile/c.dut.autotvin_gmem0.dat"
#define AUTOTB_TVOUT_gmem0 "../tv/cdatafile/c.dut.autotvout_gmem0.dat"
#define AUTOTB_TVIN_gmem1 "../tv/cdatafile/c.dut.autotvin_gmem1.dat"
#define AUTOTB_TVOUT_gmem1 "../tv/cdatafile/c.dut.autotvout_gmem1.dat"
#define AUTOTB_TVIN_gmem3 "../tv/cdatafile/c.dut.autotvin_gmem3.dat"
#define AUTOTB_TVOUT_gmem3 "../tv/cdatafile/c.dut.autotvout_gmem3.dat"
#define AUTOTB_TVIN_gmem6 "../tv/cdatafile/c.dut.autotvin_gmem6.dat"
#define AUTOTB_TVOUT_gmem6 "../tv/cdatafile/c.dut.autotvout_gmem6.dat"
#define AUTOTB_TVIN_gmem7 "../tv/cdatafile/c.dut.autotvin_gmem7.dat"
#define AUTOTB_TVOUT_gmem7 "../tv/cdatafile/c.dut.autotvout_gmem7.dat"
#define AUTOTB_TVIN_gmem8 "../tv/cdatafile/c.dut.autotvin_gmem8.dat"
#define AUTOTB_TVOUT_gmem8 "../tv/cdatafile/c.dut.autotvout_gmem8.dat"
#define AUTOTB_TVIN_gmem9 "../tv/cdatafile/c.dut.autotvin_gmem9.dat"
#define AUTOTB_TVOUT_gmem9 "../tv/cdatafile/c.dut.autotvout_gmem9.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_numVert "../tv/rtldatafile/rtl.dut.autotvout_numVert.dat"
#define AUTOTB_TVOUT_PC_numEdge "../tv/rtldatafile/rtl.dut.autotvout_numEdge.dat"
#define AUTOTB_TVOUT_PC_offset "../tv/rtldatafile/rtl.dut.autotvout_offset.dat"
#define AUTOTB_TVOUT_PC_column "../tv/rtldatafile/rtl.dut.autotvout_column.dat"
#define AUTOTB_TVOUT_PC_btwn "../tv/rtldatafile/rtl.dut.autotvout_btwn.dat"
#define AUTOTB_TVOUT_PC_tmp0 "../tv/rtldatafile/rtl.dut.autotvout_tmp0.dat"
#define AUTOTB_TVOUT_PC_tmp1 "../tv/rtldatafile/rtl.dut.autotvout_tmp1.dat"
#define AUTOTB_TVOUT_PC_tmp2 "../tv/rtldatafile/rtl.dut.autotvout_tmp2.dat"
#define AUTOTB_TVOUT_PC_tmp3 "../tv/rtldatafile/rtl.dut.autotvout_tmp3.dat"
#define AUTOTB_TVOUT_PC_gmem0 "../tv/rtldatafile/rtl.dut.autotvout_gmem0.dat"
#define AUTOTB_TVOUT_PC_gmem1 "../tv/rtldatafile/rtl.dut.autotvout_gmem1.dat"
#define AUTOTB_TVOUT_PC_gmem3 "../tv/rtldatafile/rtl.dut.autotvout_gmem3.dat"
#define AUTOTB_TVOUT_PC_gmem6 "../tv/rtldatafile/rtl.dut.autotvout_gmem6.dat"
#define AUTOTB_TVOUT_PC_gmem7 "../tv/rtldatafile/rtl.dut.autotvout_gmem7.dat"
#define AUTOTB_TVOUT_PC_gmem8 "../tv/rtldatafile/rtl.dut.autotvout_gmem8.dat"
#define AUTOTB_TVOUT_PC_gmem9 "../tv/rtldatafile/rtl.dut.autotvout_gmem9.dat"


static const bool little_endian()
{
  int a = 1;
  return *(char*)&a == 1;
}

inline static void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    rev_endian(p, dbytes);
    vp = (p_dat) (p+dbytes);
  }

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
      if (little_endian()) {
        rev_endian(vp[i], wbytes);
      }
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};


inline static const std::string begin_str(int num)
{
  return std::string("[[transaction]]           ")
         .append(std::to_string(num))
         .append("\n");
}

inline static const std::string end_str()
{
  return std::string("[[/transaction]]\n");
}

const std::string formatData(unsigned char *pos, size_t wbits)
{
  bool LE = little_endian();
  size_t wbytes = (wbits+7)>>3;
  size_t i = LE ? wbytes-1 : 0;
  auto next = [&] () {
    auto c = pos[i];
    LE ? --i : ++i;
    return c;
  };
  std::ostringstream ss;
  ss << "0x";
  if (int t = (wbits & 0x7)) {
    if (t <= 4) {
      unsigned char mask = (1<<t)-1;
      ss << std::hex << std::setfill('0') << std::setw(1)
         << (int) (next() & mask);
      wbytes -= 1;
    }
  }
  for (size_t i = 0; i < wbytes; ++i) {
    ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
  }
  ss.put('\n');
  return ss.str();
}

static bool RTLOutputCheckAndReplacement(std::string &data)
{
  bool changed = false;
  for (size_t i = 2; i < data.size(); ++i) {
    if (data[i] == 'X' || data[i] == 'x') {
      data[i] = '0';
      changed = true;
    }
  }
  return changed;
}

struct SimException : public std::exception {
  const char *msg;
  const size_t line;
  SimException(const char *msg, const size_t line)
    : msg(msg), line(line)
  {
  }
};

template<size_t bit_width>
class PostCheck
{
  static const char *bad;
  static const char *err;
  std::fstream stream;
  std::string s;

  void send(char *p, ap_uint<bit_width> &data, size_t l, size_t rest)
  {
    if (rest == 0) {
      if (!little_endian()) {
        const size_t wbytes = (bit_width+7)>>3;
        rev_endian(p-wbytes, wbytes);
      }
    } else if (rest < 8) {
      *p = data.range(l+rest-1, l).to_uint();
      send(p+1, data, l+rest, 0);
    } else {
      *p = data.range(l+8-1, l).to_uint();
      send(p+1, data, l+8, rest-8);
    }
  }

  void readline()
  {
    std::getline(stream, s);
    if (stream.eof()) {
      throw SimException(bad, __LINE__);
    }
  }

public:
  char *param;
  size_t psize;
  size_t depth;

  PostCheck(const char *file)
  {
    stream.open(file);
    if (stream.fail()) {
      throw SimException(err, __LINE__);
    } else {
      readline();
      if (s != "[[[runtime]]]") {
        throw SimException(bad, __LINE__);
      }
    }
  }

  ~PostCheck() noexcept(false)
  {
    stream.close();
  }

  void run(size_t AESL_transaction_pc, size_t skip)
  {
    if (stream.peek() == '[') {
      readline();
    }

    for (size_t i = 0; i < skip; ++i) {
      readline();
    }

    bool foundX = false;
    for (size_t i = 0; i < depth; ++i) {
      readline();
      foundX |= RTLOutputCheckAndReplacement(s);
      ap_uint<bit_width> data(s.c_str(), 16);
      send(param+i*psize, data, 0, bit_width);
    }
    if (foundX) {
      std::cerr << "WARNING: [SIM 212-201] RTL produces unknown value "
                << "'x' or 'X' on some port, possible cause: "
                << "There are uninitialized variables in the design.\n";
    }

    if (stream.peek() == '[') {
      readline();
    }
  }
};

template<size_t bit_width>
const char* PostCheck<bit_width>::bad = "Bad TV file";

template<size_t bit_width>
const char* PostCheck<bit_width>::err = "Error on TV file";
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  numVert_depth = 0;
  numEdge_depth = 0;
  offset_depth = 0;
  column_depth = 0;
  btwn_depth = 0;
  tmp0_depth = 0;
  tmp1_depth = 0;
  tmp2_depth = 0;
  tmp3_depth = 0;
  gmem0_depth = 0;
  gmem1_depth = 0;
  gmem3_depth = 0;
  gmem6_depth = 0;
  gmem7_depth = 0;
  gmem8_depth = 0;
  gmem9_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{numVert " << numVert_depth << "}\n";
  total_list << "{numEdge " << numEdge_depth << "}\n";
  total_list << "{offset " << offset_depth << "}\n";
  total_list << "{column " << column_depth << "}\n";
  total_list << "{btwn " << btwn_depth << "}\n";
  total_list << "{tmp0 " << tmp0_depth << "}\n";
  total_list << "{tmp1 " << tmp1_depth << "}\n";
  total_list << "{tmp2 " << tmp2_depth << "}\n";
  total_list << "{tmp3 " << tmp3_depth << "}\n";
  total_list << "{gmem0 " << gmem0_depth << "}\n";
  total_list << "{gmem1 " << gmem1_depth << "}\n";
  total_list << "{gmem3 " << gmem3_depth << "}\n";
  total_list << "{gmem6 " << gmem6_depth << "}\n";
  total_list << "{gmem7 " << gmem7_depth << "}\n";
  total_list << "{gmem8 " << gmem8_depth << "}\n";
  total_list << "{gmem9 " << gmem9_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int numVert_depth;
    int numEdge_depth;
    int offset_depth;
    int column_depth;
    int btwn_depth;
    int tmp0_depth;
    int tmp1_depth;
    int tmp2_depth;
    int tmp3_depth;
    int gmem0_depth;
    int gmem1_depth;
    int gmem3_depth;
    int gmem6_depth;
    int gmem7_depth;
    int gmem8_depth;
    int gmem9_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};


extern "C" void dut_hw_stub_wrapper(int, int, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_dut_hw(int __xlx_apatb_param_numVert, int __xlx_apatb_param_numEdge, volatile void * __xlx_apatb_param_offset, volatile void * __xlx_apatb_param_column, volatile void * __xlx_apatb_param_btwn, volatile void * __xlx_apatb_param_tmp0, volatile void * __xlx_apatb_param_tmp1, volatile void * __xlx_apatb_param_tmp2, volatile void * __xlx_apatb_param_tmp3) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(100000);
aesl_fh.read(AUTOTB_TVOUT_PC_gmem3, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_btwn, 100000, 0);
}
#else
try {
static PostCheck<32> pc(AUTOTB_TVOUT_PC_gmem3);
pc.psize = 4;
pc.param = (char*)__xlx_apatb_param_btwn;
pc.depth = 100000;
pc.run(AESL_transaction_pc, 0);
} catch (SimException &e) {
  std::cout << "at line " << e.line << " occurred exception, " << e.msg << "\n";
}
#endif

    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_offset = 0;
unsigned __xlx_offset_byte_param_column = 0;
unsigned __xlx_offset_byte_param_btwn = 0;
unsigned __xlx_offset_byte_param_tmp0 = 0;
unsigned __xlx_offset_byte_param_tmp1 = 0;
unsigned __xlx_offset_byte_param_tmp2 = 0;
unsigned __xlx_offset_byte_param_tmp3 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_gmem0, 'b');
transaction<32> tr(100000);
__xlx_offset_byte_param_offset = 0*4;
if (__xlx_apatb_param_offset) {
  tr.import<4>((char*)__xlx_apatb_param_offset, 100000, 0);
}
aesl_fh.write(AUTOTB_TVIN_gmem0, tr.p, tr.tbytes);
tcl_file.set_num(100000, &tcl_file.gmem0_depth);
}
#else
aesl_fh.touch(AUTOTB_TVIN_gmem0);
{
aesl_fh.write(AUTOTB_TVIN_gmem0, begin_str(AESL_transaction));
__xlx_offset_byte_param_offset = 0*4;
if (__xlx_apatb_param_offset) {
for (size_t i = 0; i < 100000; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_offset + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_gmem0, s);
}
}
tcl_file.set_num(100000, &tcl_file.gmem0_depth);
aesl_fh.write(AUTOTB_TVIN_gmem0, end_str());
}
#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_gmem1, 'b');
transaction<32> tr(100000);
__xlx_offset_byte_param_column = 0*4;
if (__xlx_apatb_param_column) {
  tr.import<4>((char*)__xlx_apatb_param_column, 100000, 0);
}
aesl_fh.write(AUTOTB_TVIN_gmem1, tr.p, tr.tbytes);
tcl_file.set_num(100000, &tcl_file.gmem1_depth);
}
#else
aesl_fh.touch(AUTOTB_TVIN_gmem1);
{
aesl_fh.write(AUTOTB_TVIN_gmem1, begin_str(AESL_transaction));
__xlx_offset_byte_param_column = 0*4;
if (__xlx_apatb_param_column) {
for (size_t i = 0; i < 100000; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_column + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_gmem1, s);
}
}
tcl_file.set_num(100000, &tcl_file.gmem1_depth);
aesl_fh.write(AUTOTB_TVIN_gmem1, end_str());
}
#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_gmem3, 'b');
transaction<32> tr(100000);
__xlx_offset_byte_param_btwn = 0*4;
if (__xlx_apatb_param_btwn) {
  tr.import<4>((char*)__xlx_apatb_param_btwn, 100000, 0);
}
aesl_fh.write(AUTOTB_TVIN_gmem3, tr.p, tr.tbytes);
tcl_file.set_num(100000, &tcl_file.gmem3_depth);
}
#else
aesl_fh.touch(AUTOTB_TVIN_gmem3);
{
aesl_fh.write(AUTOTB_TVIN_gmem3, begin_str(AESL_transaction));
__xlx_offset_byte_param_btwn = 0*4;
if (__xlx_apatb_param_btwn) {
for (size_t i = 0; i < 100000; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_btwn + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_gmem3, s);
}
}
tcl_file.set_num(100000, &tcl_file.gmem3_depth);
aesl_fh.write(AUTOTB_TVIN_gmem3, end_str());
}
#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_gmem6, 'b');
transaction<32> tr(100000);
__xlx_offset_byte_param_tmp0 = 0*4;
if (__xlx_apatb_param_tmp0) {
  tr.import<4>((char*)__xlx_apatb_param_tmp0, 100000, 0);
}
aesl_fh.write(AUTOTB_TVIN_gmem6, tr.p, tr.tbytes);
tcl_file.set_num(100000, &tcl_file.gmem6_depth);
}
#else
aesl_fh.touch(AUTOTB_TVIN_gmem6);
{
aesl_fh.write(AUTOTB_TVIN_gmem6, begin_str(AESL_transaction));
__xlx_offset_byte_param_tmp0 = 0*4;
if (__xlx_apatb_param_tmp0) {
for (size_t i = 0; i < 100000; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_tmp0 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_gmem6, s);
}
}
tcl_file.set_num(100000, &tcl_file.gmem6_depth);
aesl_fh.write(AUTOTB_TVIN_gmem6, end_str());
}
#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_gmem7, 'b');
transaction<32> tr(100000);
__xlx_offset_byte_param_tmp1 = 0*4;
if (__xlx_apatb_param_tmp1) {
  tr.import<4>((char*)__xlx_apatb_param_tmp1, 100000, 0);
}
aesl_fh.write(AUTOTB_TVIN_gmem7, tr.p, tr.tbytes);
tcl_file.set_num(100000, &tcl_file.gmem7_depth);
}
#else
aesl_fh.touch(AUTOTB_TVIN_gmem7);
{
aesl_fh.write(AUTOTB_TVIN_gmem7, begin_str(AESL_transaction));
__xlx_offset_byte_param_tmp1 = 0*4;
if (__xlx_apatb_param_tmp1) {
for (size_t i = 0; i < 100000; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_tmp1 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_gmem7, s);
}
}
tcl_file.set_num(100000, &tcl_file.gmem7_depth);
aesl_fh.write(AUTOTB_TVIN_gmem7, end_str());
}
#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_gmem8, 'b');
transaction<32> tr(100000);
__xlx_offset_byte_param_tmp2 = 0*4;
if (__xlx_apatb_param_tmp2) {
  tr.import<4>((char*)__xlx_apatb_param_tmp2, 100000, 0);
}
aesl_fh.write(AUTOTB_TVIN_gmem8, tr.p, tr.tbytes);
tcl_file.set_num(100000, &tcl_file.gmem8_depth);
}
#else
aesl_fh.touch(AUTOTB_TVIN_gmem8);
{
aesl_fh.write(AUTOTB_TVIN_gmem8, begin_str(AESL_transaction));
__xlx_offset_byte_param_tmp2 = 0*4;
if (__xlx_apatb_param_tmp2) {
for (size_t i = 0; i < 100000; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_tmp2 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_gmem8, s);
}
}
tcl_file.set_num(100000, &tcl_file.gmem8_depth);
aesl_fh.write(AUTOTB_TVIN_gmem8, end_str());
}
#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_gmem9, 'b');
transaction<32> tr(100000);
__xlx_offset_byte_param_tmp3 = 0*4;
if (__xlx_apatb_param_tmp3) {
  tr.import<4>((char*)__xlx_apatb_param_tmp3, 100000, 0);
}
aesl_fh.write(AUTOTB_TVIN_gmem9, tr.p, tr.tbytes);
tcl_file.set_num(100000, &tcl_file.gmem9_depth);
}
#else
aesl_fh.touch(AUTOTB_TVIN_gmem9);
{
aesl_fh.write(AUTOTB_TVIN_gmem9, begin_str(AESL_transaction));
__xlx_offset_byte_param_tmp3 = 0*4;
if (__xlx_apatb_param_tmp3) {
for (size_t i = 0; i < 100000; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_tmp3 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_gmem9, s);
}
}
tcl_file.set_num(100000, &tcl_file.gmem9_depth);
aesl_fh.write(AUTOTB_TVIN_gmem9, end_str());
}
#endif
// print numVert Transactions
{
aesl_fh.write(AUTOTB_TVIN_numVert, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_apatb_param_numVert;
aesl_fh.write(AUTOTB_TVIN_numVert, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.numVert_depth);
aesl_fh.write(AUTOTB_TVIN_numVert, end_str());
}

// print numEdge Transactions
{
aesl_fh.write(AUTOTB_TVIN_numEdge, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_apatb_param_numEdge;
aesl_fh.write(AUTOTB_TVIN_numEdge, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.numEdge_depth);
aesl_fh.write(AUTOTB_TVIN_numEdge, end_str());
}

// print offset Transactions
{
aesl_fh.write(AUTOTB_TVIN_offset, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_offset;
aesl_fh.write(AUTOTB_TVIN_offset, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.offset_depth);
aesl_fh.write(AUTOTB_TVIN_offset, end_str());
}

// print column Transactions
{
aesl_fh.write(AUTOTB_TVIN_column, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_column;
aesl_fh.write(AUTOTB_TVIN_column, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.column_depth);
aesl_fh.write(AUTOTB_TVIN_column, end_str());
}

// print btwn Transactions
{
aesl_fh.write(AUTOTB_TVIN_btwn, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_btwn;
aesl_fh.write(AUTOTB_TVIN_btwn, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.btwn_depth);
aesl_fh.write(AUTOTB_TVIN_btwn, end_str());
}

// print tmp0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_tmp0, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_tmp0;
aesl_fh.write(AUTOTB_TVIN_tmp0, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.tmp0_depth);
aesl_fh.write(AUTOTB_TVIN_tmp0, end_str());
}

// print tmp1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_tmp1, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_tmp1;
aesl_fh.write(AUTOTB_TVIN_tmp1, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.tmp1_depth);
aesl_fh.write(AUTOTB_TVIN_tmp1, end_str());
}

// print tmp2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_tmp2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_tmp2;
aesl_fh.write(AUTOTB_TVIN_tmp2, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.tmp2_depth);
aesl_fh.write(AUTOTB_TVIN_tmp2, end_str());
}

// print tmp3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_tmp3, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_tmp3;
aesl_fh.write(AUTOTB_TVIN_tmp3, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.tmp3_depth);
aesl_fh.write(AUTOTB_TVIN_tmp3, end_str());
}

CodeState = CALL_C_DUT;
dut_hw_stub_wrapper(__xlx_apatb_param_numVert, __xlx_apatb_param_numEdge, __xlx_apatb_param_offset, __xlx_apatb_param_column, __xlx_apatb_param_btwn, __xlx_apatb_param_tmp0, __xlx_apatb_param_tmp1, __xlx_apatb_param_tmp2, __xlx_apatb_param_tmp3);
CodeState = DUMP_OUTPUTS;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_gmem3, 'b');
transaction<32> tr(100000);
__xlx_offset_byte_param_btwn = 0*4;
if (__xlx_apatb_param_btwn) {
  tr.import<4>((char*)__xlx_apatb_param_btwn, 100000, 0);
}
aesl_fh.write(AUTOTB_TVOUT_gmem3, tr.p, tr.tbytes);
tcl_file.set_num(100000, &tcl_file.gmem3_depth);
}
#else
aesl_fh.touch(AUTOTB_TVOUT_gmem3);
{
aesl_fh.write(AUTOTB_TVOUT_gmem3, begin_str(AESL_transaction));
__xlx_offset_byte_param_btwn = 0*4;
if (__xlx_apatb_param_btwn) {
for (size_t i = 0; i < 100000; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_btwn + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_gmem3, s);
}
}
tcl_file.set_num(100000, &tcl_file.gmem3_depth);
aesl_fh.write(AUTOTB_TVOUT_gmem3, end_str());
}
#endif
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
