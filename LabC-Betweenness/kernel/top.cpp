#include "top.hpp"
#include <list>
#include <queue>
#include <stack>

void dut(
        unsigned numVert, 
        unsigned numEdge, 
        unsigned *offset, 
        unsigned *column,
        float *btwn, 
        unsigned *tmp0, 
        unsigned *tmp1, 
        unsigned *tmp2,
        unsigned *tmp3) {
  // clang-format off

    const unsigned MEMSIZE=INTERFACE_MEMSIZE;
#pragma HLS INTERFACE m_axi offset = slave latency = 32 num_write_outstanding = 1 num_read_outstanding = \
    16 max_write_burst_length = 2 max_read_burst_length = 256 bundle = gmem0 port = offset depth = MEMSIZE

#pragma HLS INTERFACE m_axi offset = slave latency = 32 num_write_outstanding = 1 num_read_outstanding = \
    16 max_write_burst_length = 2 max_read_burst_length = 256 bundle = gmem1 port = column depth = MEMSIZE

#pragma HLS INTERFACE m_axi offset = slave latency = 32 num_write_outstanding = 1 num_read_outstanding = \
    16 max_write_burst_length = 2 max_read_burst_length = 256 bundle = gmem3 port = btwn depth = MEMSIZE

#pragma HLS INTERFACE m_axi offset = slave latency = 32 num_write_outstanding = 1 num_read_outstanding = \
    16 max_write_burst_length = 2 max_read_burst_length = 256 bundle = gmem6 port = tmp0 depth = MEMSIZE

#pragma HLS INTERFACE m_axi offset = slave latency = 32 num_write_outstanding = 1 num_read_outstanding = \
    16 max_write_burst_length = 2 max_read_burst_length = 256 bundle = gmem7 port = tmp1 depth = MEMSIZE

#pragma HLS INTERFACE m_axi offset = slave latency = 32 num_write_outstanding = 1 num_read_outstanding = \
    16 max_write_burst_length = 2 max_read_burst_length = 256 bundle = gmem8 port = tmp2 depth = MEMSIZE

#pragma HLS INTERFACE m_axi offset = slave latency = 32 num_write_outstanding = 1 num_read_outstanding = \
    16 max_write_burst_length = 2 max_read_burst_length = 256 bundle = gmem9 port = tmp3 depth = MEMSIZE

// clang-format on
// #ifndef __SYNTHESIS__
  // for (int i = 0; i < numVert; i++) {
  //   btwn[i] = 0;
  // }
  // for (int i = 0; i < numVert; i++) {
  //   std::stack<unsigned> s;
  //   std::vector<std::list<unsigned>> p(numVert);
  //   std::vector<float> sigma(numVert);
  //   std::vector<int> dist(numVert);
  //   std::queue<unsigned> q;
  //   unsigned source = i;

  //   for (int j = 0; j < numVert; j++) {
  //     sigma[j] = 0;
  //     dist[j] = -1;
  //   }
  //   sigma[source] = 1;
  //   dist[source] = 0;

  //   q.push(source);
  //   while (!q.empty()) {
  //     unsigned v = q.front();
  //     s.push(v);
  //     for (int j = offset[v]; j < offset[v + 1]; j++) {
  //       unsigned w = column[j];
  //       if (dist[w] < 0) {
  //         q.push(w);
  //         dist[w] = dist[v] + 1;
  //       }
  //       if (dist[w] == dist[v] + 1) {
  //         sigma[w] = sigma[w] + sigma[v];
  //         p[w].push_back(v);
  //       }
  //     }
  //     q.pop();
  //   }

  //   std::vector<float> delta(numVert);
  //   for (int j = 0; j < numVert; j++) {
  //     delta[j] = 0;
  //   }
  //   while (!s.empty()) {
  //     unsigned w = s.top();
  //     if (source != w) {
  //       btwn[w] = btwn[w] + delta[w];
  //     }
  //     for (std::list<unsigned>::iterator it = p[w].begin(); it != p[w].end();
  //          it++) {
  //       unsigned v = *it;
  //       delta[v] = delta[v] + (sigma[v] / sigma[w]) * (1 + delta[w]);
  //       // if (source != w) {
  //       //     btwn[w] = btwn[w] + delta[w];
  //       // }
  //     }
  //     s.pop();
  //   }
  // }
// #else
  
  static unsigned       offset_buf    [3534];
  static unsigned       column_buf    [41594];
  static float          btwn_buf      [3534];

  static signed short   s_array       [3534]; // stack, tmp2
  static signed int     sigma_array   [3534]; // record shortest path number, tmp1
  static unsigned short p_array       [3534][20];  // record shortest path pre-node
  static unsigned char  p_index_array [3534];
  static signed short   dist_array    [3534];
// #pragma HLS BIND_STORAGE variable=dist_array type=ram_2p impl=bram
 // record shortest distance, tmp0
  static signed short   q_array       [3534]; // queue
  static float          delta_array   [3534]; // record intra-iteration betweenness
  static unsigned short travel		    [3534];

  // #pragma HLS ARRAY_PARTITION variable=s_array        block factor=6
  // #pragma HLS ARRAY_PARTITION variable=sigma_array    block factor=6
  // #pragma HLS ARRAY_RESHAPE variable=sigma_array      block factor=6
  // #pragma HLS ARRAY_PARTITION variable=p_array        block factor=6 dim=0
  // #pragma HLS ARRAY_PARTITION variable=p_index_array  block factor=6
  // #pragma HLS ARRAY_PARTITION variable=dist_array     block factor=6
  // #pragma HLS ARRAY_PARTITION variable=q_array        block factor=6
  // #pragma HLS ARRAY_PARTITION variable=delta_array    block factor=6

  static unsigned short  q_index = 0;
  static unsigned short  source = 0;
  static signed short    v = 0;
  static signed short    w = 0;
  static unsigned short  base_edge = 0;
  static unsigned short  num_edge = 0;
  static unsigned short  inter_row = 0;

  static float           sigma_tmp = 0;
  static signed int      sigma_tmp_v = 0;
  static signed short    dist_tmp = 0;
  static signed short    dist_tmp_w = 0;
  static unsigned char   p_index_tmp = 0;
  static float           div_tmp = 0;
  static float           delta_tmp = 0;
  static float           btwn_tmp = 0;
  static float           delta_tmp_v = 0;
  static unsigned short  q_index_tmp = 0;

  
  Store_vertice_loop:
  for (int i = 0; i < 3535; i++) {
    if (i < numVert+1){
      offset_buf[i] = offset[i];
      if (i != numVert){
        btwn_buf[i]   = 0;
      }
    }
  }
  Store_edge_loop:
  for (int i = 0; i < 41594; i++){
    if (i < numEdge){
      column_buf[i] = column[i];
    }
  }

  // assert(numVert < 3534);
  Main_loop:
  for (int i = 0; i < 3534; i++) {
    // #pragma HLS DATAFLOW

    if (i >= numVert){
      break;
    }

    source = i;
    q_index = 1;

    Clear_loop:
    for (int j = 0; j < 3534; j++) {
      // #pragma HLS UNROLL
      #pragma HLS PIPELINE II=1
      #pragma HLS dependence variable=s_array       type=inter false
      #pragma HLS dependence variable=sigma_array   type=inter false
      #pragma HLS dependence variable=p_index_array type=inter false
      #pragma HLS dependence variable=dist_array    type=inter false
      #pragma HLS dependence variable=q_array       type=inter false
      #pragma HLS dependence variable=delta_array   type=inter false
      #pragma HLS dependence variable=travel        type=inter false

      // if (i < numVert){
        s_array[j] = -1;
        p_index_array[j] = 0;
        delta_array[j] = 0;

        if (j == 0){
          q_array[j] = source;
        }
        else {
          q_array[j] = -1;
        }
        if (j == source){
          dist_array[j] = 0;
          sigma_array[j] = 1;
          travel[j] = 1;
        }
        else{
          dist_array[j] = -1;
          sigma_array[j] = 0;
          travel[j] = 0;
        }
      // }
    }

    Queue_loop:
    for (int j = 0; j < 3534; j++){
      // #pragma HLS PIPELINE II=1

      // if (q_index == j){
      //   break;
      // }

      Edge_loop:
      for (int k = 0; k < 38; k++){
        #pragma HLS PIPELINE
        #pragma HLS dependence variable=offset_buf    type=inter false
        #pragma HLS dependence variable=column_buf    type=inter false
        #pragma HLS dependence variable=q_array       type=inter false
        #pragma HLS dependence variable=dist_array    type=inter false
        #pragma HLS dependence variable=sigma_array   type=inter false
        #pragma HLS dependence variable=p_index_array type=inter false
        #pragma HLS dependence variable=travel type=inter false
        // if (i < numVert){
          if (k == 0){
            v = q_array[j];
            s_array[j] = v;

            base_edge = offset_buf[v];
            dist_tmp = dist_array[v] + 1;
            num_edge = offset_buf[v+1] - base_edge;
            sigma_tmp_v = sigma_array[v];
          }

          if (k < num_edge){
            inter_row = base_edge + k;
            w = column_buf[inter_row];
            q_index_tmp = q_index;
            dist_tmp_w = dist_array[w];
            if (travel[w] == 0){
              q_array[q_index] = w;
              q_index_tmp = q_index + 1;
              dist_array[w] = dist_tmp;
              dist_tmp_w = dist_tmp;
              travel[w] = 1;
            }
            if (dist_tmp_w == dist_tmp){
              sigma_tmp = sigma_array[w];
              sigma_tmp = sigma_tmp + sigma_tmp_v;
              sigma_array[w] = sigma_tmp;

              p_index_tmp = p_index_array[w];
              p_array[w][p_index_tmp] = v;
              p_index_array[w] = p_index_tmp + 1;
            }
            q_index = q_index_tmp;
          }
        // }
      }
    }

    Dequeue_loop:
    for (int j = 3533; j >= 0; j--){
      // #pragma HLS PIPELINE II=1

      Computing_loop:
      for (int k = 0; k < 27; k++){
        #pragma HLS PIPELINE
        #pragma HLS dependence variable=btwn_buf    type=inter false
        #pragma HLS dependence variable=delta_array type=inter false
        #pragma HLS dependence variable=sigma_array type=inter false

      // if (i < numVert){
          if (j < q_index){
            if (k == 0){
              w = s_array[j];
              delta_tmp = delta_array[w];
              btwn_tmp = btwn_buf[w];
              sigma_tmp = sigma_array[w];
              if (w != source){
                btwn_buf[w] = btwn_tmp + delta_tmp;
              }
            }

            if (k < p_index_array[w]){
              v = p_array[w][k];
              div_tmp = (sigma_array[v] / sigma_tmp);
              delta_tmp_v = delta_array[v];
              delta_array[v] = delta_tmp_v + div_tmp * (1+delta_tmp);
            }
          }
        // }
      }
    }
  }

  Output_loop:
  for (int i = 0; i < 3534; i++) {
    #pragma HLS PIPELINE II=1
    #pragma HLS dependence variable=btwn type=inter false

    if (i < numVert){
      btwn[i] = btwn_buf[i];
    }
  }

// #endif
}
