# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 23 \
    name q_array \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename q_array \
    op interface \
    ports { q_array_address0 { O 12 vector } q_array_ce0 { O 1 bit } q_array_we0 { O 1 bit } q_array_d0 { O 16 vector } q_array_address1 { O 12 vector } q_array_ce1 { O 1 bit } q_array_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'q_array'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 25 \
    name s_array \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename s_array \
    op interface \
    ports { s_array_address0 { O 12 vector } s_array_ce0 { O 1 bit } s_array_we0 { O 1 bit } s_array_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_array'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 26 \
    name offset_buf \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename offset_buf \
    op interface \
    ports { offset_buf_address0 { O 12 vector } offset_buf_ce0 { O 1 bit } offset_buf_q0 { I 16 vector } offset_buf_address1 { O 12 vector } offset_buf_ce1 { O 1 bit } offset_buf_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'offset_buf'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 27 \
    name dist_array \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dist_array \
    op interface \
    ports { dist_array_address0 { O 12 vector } dist_array_ce0 { O 1 bit } dist_array_we0 { O 1 bit } dist_array_d0 { O 16 vector } dist_array_q0 { I 16 vector } dist_array_address1 { O 12 vector } dist_array_ce1 { O 1 bit } dist_array_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dist_array'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 28 \
    name sigma_array \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename sigma_array \
    op interface \
    ports { sigma_array_address0 { O 12 vector } sigma_array_ce0 { O 1 bit } sigma_array_we0 { O 1 bit } sigma_array_d0 { O 32 vector } sigma_array_q0 { I 32 vector } sigma_array_address1 { O 12 vector } sigma_array_ce1 { O 1 bit } sigma_array_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sigma_array'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 30 \
    name column_buf \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename column_buf \
    op interface \
    ports { column_buf_address0 { O 16 vector } column_buf_ce0 { O 1 bit } column_buf_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'column_buf'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 32 \
    name travel \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename travel \
    op interface \
    ports { travel_address0 { O 12 vector } travel_ce0 { O 1 bit } travel_we0 { O 1 bit } travel_d0 { O 1 vector } travel_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'travel'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 34 \
    name p_index_array \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_index_array \
    op interface \
    ports { p_index_array_address0 { O 12 vector } p_index_array_ce0 { O 1 bit } p_index_array_we0 { O 1 bit } p_index_array_d0 { O 8 vector } p_index_array_address1 { O 12 vector } p_index_array_ce1 { O 1 bit } p_index_array_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_index_array'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 35 \
    name p_array \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_array \
    op interface \
    ports { p_array_address0 { O 17 vector } p_array_ce0 { O 1 bit } p_array_we0 { O 1 bit } p_array_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_array'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name v \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_v \
    op interface \
    ports { v_i { I 16 vector } v_o { O 16 vector } v_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name q_index \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_q_index \
    op interface \
    ports { q_index_i { I 16 vector } q_index_o { O 16 vector } q_index_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name w \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w \
    op interface \
    ports { w { O 12 vector } w_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name sigma_tmp \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sigma_tmp \
    op interface \
    ports { sigma_tmp { O 32 vector } sigma_tmp_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName dut_flow_control_loop_pipe_sequential_init_U
set CompName dut_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix dut_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


