#include <systemc>
#include <list>
#include <map>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;

namespace bcsim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(1<<10)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void dut(int*, int*, int*, int*, int*, int*, int*, int, int, int, int, int, int, int, int, int);
extern "C" void apatb_dut_hw(int __xlx_apatb_param_numVert, int __xlx_apatb_param_numEdge, volatile void * __xlx_apatb_param_offset, volatile void * __xlx_apatb_param_column, volatile void * __xlx_apatb_param_btwn, volatile void * __xlx_apatb_param_tmp0, volatile void * __xlx_apatb_param_tmp1, volatile void * __xlx_apatb_param_tmp2, volatile void * __xlx_apatb_param_tmp3) {
  // Collect __xlx_offset__tmp_vec
  vector<sc_bv<32> >__xlx_offset__tmp_vec;
  for (int j = 0, e = 100000; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_offset)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_offset)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_offset)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_offset)[j*4+3];
    __xlx_offset__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_offset = 100000;
  int __xlx_offset_param_offset = 0;
  int __xlx_offset_byte_param_offset = 0*4;
  int* __xlx_offset__input_buffer= new int[__xlx_offset__tmp_vec.size()];
  for (int i = 0; i < __xlx_offset__tmp_vec.size(); ++i) {
    __xlx_offset__input_buffer[i] = __xlx_offset__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_column__tmp_vec
  vector<sc_bv<32> >__xlx_column__tmp_vec;
  for (int j = 0, e = 100000; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_column)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_column)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_column)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_column)[j*4+3];
    __xlx_column__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_column = 100000;
  int __xlx_offset_param_column = 0;
  int __xlx_offset_byte_param_column = 0*4;
  int* __xlx_column__input_buffer= new int[__xlx_column__tmp_vec.size()];
  for (int i = 0; i < __xlx_column__tmp_vec.size(); ++i) {
    __xlx_column__input_buffer[i] = __xlx_column__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_btwn__tmp_vec
  vector<sc_bv<32> >__xlx_btwn__tmp_vec;
  for (int j = 0, e = 100000; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_btwn)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_btwn)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_btwn)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_btwn)[j*4+3];
    __xlx_btwn__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_btwn = 100000;
  int __xlx_offset_param_btwn = 0;
  int __xlx_offset_byte_param_btwn = 0*4;
  int* __xlx_btwn__input_buffer= new int[__xlx_btwn__tmp_vec.size()];
  for (int i = 0; i < __xlx_btwn__tmp_vec.size(); ++i) {
    __xlx_btwn__input_buffer[i] = __xlx_btwn__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_tmp0__tmp_vec
  vector<sc_bv<32> >__xlx_tmp0__tmp_vec;
  for (int j = 0, e = 100000; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_tmp0)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_tmp0)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_tmp0)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_tmp0)[j*4+3];
    __xlx_tmp0__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_tmp0 = 100000;
  int __xlx_offset_param_tmp0 = 0;
  int __xlx_offset_byte_param_tmp0 = 0*4;
  int* __xlx_tmp0__input_buffer= new int[__xlx_tmp0__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp0__tmp_vec.size(); ++i) {
    __xlx_tmp0__input_buffer[i] = __xlx_tmp0__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_tmp1__tmp_vec
  vector<sc_bv<32> >__xlx_tmp1__tmp_vec;
  for (int j = 0, e = 100000; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_tmp1)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_tmp1)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_tmp1)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_tmp1)[j*4+3];
    __xlx_tmp1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_tmp1 = 100000;
  int __xlx_offset_param_tmp1 = 0;
  int __xlx_offset_byte_param_tmp1 = 0*4;
  int* __xlx_tmp1__input_buffer= new int[__xlx_tmp1__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp1__tmp_vec.size(); ++i) {
    __xlx_tmp1__input_buffer[i] = __xlx_tmp1__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_tmp2__tmp_vec
  vector<sc_bv<32> >__xlx_tmp2__tmp_vec;
  for (int j = 0, e = 100000; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_tmp2)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_tmp2)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_tmp2)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_tmp2)[j*4+3];
    __xlx_tmp2__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_tmp2 = 100000;
  int __xlx_offset_param_tmp2 = 0;
  int __xlx_offset_byte_param_tmp2 = 0*4;
  int* __xlx_tmp2__input_buffer= new int[__xlx_tmp2__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp2__tmp_vec.size(); ++i) {
    __xlx_tmp2__input_buffer[i] = __xlx_tmp2__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_tmp3__tmp_vec
  vector<sc_bv<32> >__xlx_tmp3__tmp_vec;
  for (int j = 0, e = 100000; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_tmp3)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_tmp3)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_tmp3)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_tmp3)[j*4+3];
    __xlx_tmp3__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_tmp3 = 100000;
  int __xlx_offset_param_tmp3 = 0;
  int __xlx_offset_byte_param_tmp3 = 0*4;
  int* __xlx_tmp3__input_buffer= new int[__xlx_tmp3__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp3__tmp_vec.size(); ++i) {
    __xlx_tmp3__input_buffer[i] = __xlx_tmp3__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  dut(__xlx_offset__input_buffer, __xlx_column__input_buffer, __xlx_btwn__input_buffer, __xlx_tmp0__input_buffer, __xlx_tmp1__input_buffer, __xlx_tmp2__input_buffer, __xlx_tmp3__input_buffer, __xlx_apatb_param_numVert, __xlx_apatb_param_numEdge, __xlx_offset_byte_param_offset, __xlx_offset_byte_param_column, __xlx_offset_byte_param_btwn, __xlx_offset_byte_param_tmp0, __xlx_offset_byte_param_tmp1, __xlx_offset_byte_param_tmp2, __xlx_offset_byte_param_tmp3);
// print __xlx_apatb_param_offset
  sc_bv<32>*__xlx_offset_output_buffer = new sc_bv<32>[__xlx_size_param_offset];
  for (int i = 0; i < __xlx_size_param_offset; ++i) {
    __xlx_offset_output_buffer[i] = __xlx_offset__input_buffer[i+__xlx_offset_param_offset];
  }
  for (int i = 0; i < __xlx_size_param_offset; ++i) {
    ((char*)__xlx_apatb_param_offset)[i*4+0] = __xlx_offset_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_offset)[i*4+1] = __xlx_offset_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_offset)[i*4+2] = __xlx_offset_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_offset)[i*4+3] = __xlx_offset_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_column
  sc_bv<32>*__xlx_column_output_buffer = new sc_bv<32>[__xlx_size_param_column];
  for (int i = 0; i < __xlx_size_param_column; ++i) {
    __xlx_column_output_buffer[i] = __xlx_column__input_buffer[i+__xlx_offset_param_column];
  }
  for (int i = 0; i < __xlx_size_param_column; ++i) {
    ((char*)__xlx_apatb_param_column)[i*4+0] = __xlx_column_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_column)[i*4+1] = __xlx_column_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_column)[i*4+2] = __xlx_column_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_column)[i*4+3] = __xlx_column_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_btwn
  sc_bv<32>*__xlx_btwn_output_buffer = new sc_bv<32>[__xlx_size_param_btwn];
  for (int i = 0; i < __xlx_size_param_btwn; ++i) {
    __xlx_btwn_output_buffer[i] = __xlx_btwn__input_buffer[i+__xlx_offset_param_btwn];
  }
  for (int i = 0; i < __xlx_size_param_btwn; ++i) {
    ((char*)__xlx_apatb_param_btwn)[i*4+0] = __xlx_btwn_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_btwn)[i*4+1] = __xlx_btwn_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_btwn)[i*4+2] = __xlx_btwn_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_btwn)[i*4+3] = __xlx_btwn_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_tmp0
  sc_bv<32>*__xlx_tmp0_output_buffer = new sc_bv<32>[__xlx_size_param_tmp0];
  for (int i = 0; i < __xlx_size_param_tmp0; ++i) {
    __xlx_tmp0_output_buffer[i] = __xlx_tmp0__input_buffer[i+__xlx_offset_param_tmp0];
  }
  for (int i = 0; i < __xlx_size_param_tmp0; ++i) {
    ((char*)__xlx_apatb_param_tmp0)[i*4+0] = __xlx_tmp0_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_tmp0)[i*4+1] = __xlx_tmp0_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_tmp0)[i*4+2] = __xlx_tmp0_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_tmp0)[i*4+3] = __xlx_tmp0_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_tmp1
  sc_bv<32>*__xlx_tmp1_output_buffer = new sc_bv<32>[__xlx_size_param_tmp1];
  for (int i = 0; i < __xlx_size_param_tmp1; ++i) {
    __xlx_tmp1_output_buffer[i] = __xlx_tmp1__input_buffer[i+__xlx_offset_param_tmp1];
  }
  for (int i = 0; i < __xlx_size_param_tmp1; ++i) {
    ((char*)__xlx_apatb_param_tmp1)[i*4+0] = __xlx_tmp1_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_tmp1)[i*4+1] = __xlx_tmp1_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_tmp1)[i*4+2] = __xlx_tmp1_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_tmp1)[i*4+3] = __xlx_tmp1_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_tmp2
  sc_bv<32>*__xlx_tmp2_output_buffer = new sc_bv<32>[__xlx_size_param_tmp2];
  for (int i = 0; i < __xlx_size_param_tmp2; ++i) {
    __xlx_tmp2_output_buffer[i] = __xlx_tmp2__input_buffer[i+__xlx_offset_param_tmp2];
  }
  for (int i = 0; i < __xlx_size_param_tmp2; ++i) {
    ((char*)__xlx_apatb_param_tmp2)[i*4+0] = __xlx_tmp2_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_tmp2)[i*4+1] = __xlx_tmp2_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_tmp2)[i*4+2] = __xlx_tmp2_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_tmp2)[i*4+3] = __xlx_tmp2_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_tmp3
  sc_bv<32>*__xlx_tmp3_output_buffer = new sc_bv<32>[__xlx_size_param_tmp3];
  for (int i = 0; i < __xlx_size_param_tmp3; ++i) {
    __xlx_tmp3_output_buffer[i] = __xlx_tmp3__input_buffer[i+__xlx_offset_param_tmp3];
  }
  for (int i = 0; i < __xlx_size_param_tmp3; ++i) {
    ((char*)__xlx_apatb_param_tmp3)[i*4+0] = __xlx_tmp3_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_tmp3)[i*4+1] = __xlx_tmp3_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_tmp3)[i*4+2] = __xlx_tmp3_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_tmp3)[i*4+3] = __xlx_tmp3_output_buffer[i].range(31, 24).to_uint();
  }
}
