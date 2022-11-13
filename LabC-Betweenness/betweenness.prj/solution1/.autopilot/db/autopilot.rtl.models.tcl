set SynModuleInfo {
  {SRCNAME dut_Pipeline_Store_vertice_loop MODELNAME dut_Pipeline_Store_vertice_loop RTLNAME dut_dut_Pipeline_Store_vertice_loop
    SUBMODULES {
      {MODELNAME dut_flow_control_loop_pipe_sequential_init RTLNAME dut_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME dut_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME dut_Pipeline_Store_edge_loop MODELNAME dut_Pipeline_Store_edge_loop RTLNAME dut_dut_Pipeline_Store_edge_loop}
  {SRCNAME dut_Pipeline_Clear_loop MODELNAME dut_Pipeline_Clear_loop RTLNAME dut_dut_Pipeline_Clear_loop}
  {SRCNAME dut_Pipeline_Queue_loop_Edge_loop MODELNAME dut_Pipeline_Queue_loop_Edge_loop RTLNAME dut_dut_Pipeline_Queue_loop_Edge_loop}
  {SRCNAME dut_Pipeline_Dequeue_loop_Computing_loop MODELNAME dut_Pipeline_Dequeue_loop_Computing_loop RTLNAME dut_dut_Pipeline_Dequeue_loop_Computing_loop
    SUBMODULES {
      {MODELNAME dut_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME dut_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dut_fdiv_32ns_32ns_32_12_no_dsp_1 RTLNAME dut_fdiv_32ns_32ns_32_12_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 11 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dut_Pipeline_Output_loop MODELNAME dut_Pipeline_Output_loop RTLNAME dut_dut_Pipeline_Output_loop}
  {SRCNAME dut MODELNAME dut RTLNAME dut IS_TOP 1
    SUBMODULES {
      {MODELNAME dut_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME dut_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME dut_sitofp_32ns_32_5_no_dsp_1 RTLNAME dut_sitofp_32ns_32_5_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME dut_offset_buf_RAM_AUTO_1R1W RTLNAME dut_offset_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_btwn_buf_RAM_AUTO_1R1W RTLNAME dut_btwn_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_column_buf_RAM_AUTO_1R1W RTLNAME dut_column_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_sigma_array_RAM_AUTO_1R1W RTLNAME dut_sigma_array_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_travel_RAM_AUTO_1R1W RTLNAME dut_travel_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_p_index_array_RAM_AUTO_1R1W RTLNAME dut_p_index_array_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_q_array_RAM_AUTO_1R1W RTLNAME dut_q_array_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_p_array_RAM_AUTO_1R1W RTLNAME dut_p_array_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_gmem0_m_axi RTLNAME dut_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME dut_gmem1_m_axi RTLNAME dut_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME dut_gmem3_m_axi RTLNAME dut_gmem3_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME dut_control_s_axi RTLNAME dut_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
