# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "/home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.runs/top_xbar_0_synth_1/top_xbar_0.tcl"
  variable category "vivado_synth"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
OPTRACE "top_xbar_0_synth_1" START { ROLLUP_AUTO }
set_param project.vivado.isBlockSynthRun true
set_msg_config -msgmgr_mode ooc_run
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.cache/wt [current_project]
set_property parent.project_path /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part_repo_paths {/home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/deps/board_files} [current_project]
set_property board_part tul.com.tw:pynq-z2:part0:1.0 [current_project]
set_property ip_repo_paths {
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_0_IODMA_0_dv1a4aj8/project_StreamingDataflowPartition_0_IODMA_0/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_stitch_proj_xmtqtbcz/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_0_ox2pk459/project_StreamingDataflowPartition_1_StreamingFIFO_0/sol1/impl/verilog
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_Thresholding_Batch_0_kvmr2e8y/project_StreamingDataflowPartition_1_Thresholding_Batch_0/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0_zr3oegt7/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_FMPadding_Batch_0_vg4w36mn/project_StreamingDataflowPartition_1_FMPadding_Batch_0/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_1_ahhxu966/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_1/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_ConvolutionInputGenerator_0_rpd6ieuj/project_StreamingDataflowPartition_1_ConvolutionInputGenerator_0/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_1_t3qi13oa/project_StreamingDataflowPartition_1_StreamingFIFO_1/sol1/impl/verilog
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_0__g44zp2p/project_StreamingDataflowPartition_1_MatrixVectorActivation_0/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_DuplicateStreams_Batch_0_gdgkofn2/project_StreamingDataflowPartition_1_DuplicateStreams_Batch_0/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_2_al__1n9n/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_2/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_Thresholding_Batch_1_s7u1nm_n/project_StreamingDataflowPartition_1_Thresholding_Batch_1/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_FMPadding_Batch_1_wzee6kuu/project_StreamingDataflowPartition_1_FMPadding_Batch_1/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_3_z6i5e_5a/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_3/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_ConvolutionInputGenerator_1_wd4v_e5t/project_StreamingDataflowPartition_1_ConvolutionInputGenerator_1/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_2_z_1vc6n2/project_StreamingDataflowPartition_1_StreamingFIFO_2/sol1/impl/verilog
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_1_adoi5z1r/project_StreamingDataflowPartition_1_MatrixVectorActivation_1/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_4_h2567p61/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_4/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_FMPadding_Batch_2_o2bcwel3/project_StreamingDataflowPartition_1_FMPadding_Batch_2/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_5_hpslnogs/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_5/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_ConvolutionInputGenerator_2_yg7tpsxj/project_StreamingDataflowPartition_1_ConvolutionInputGenerator_2/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_3_ojzlolg9/project_StreamingDataflowPartition_1_StreamingFIFO_3/sol1/impl/verilog
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_2_30yphoi3/project_StreamingDataflowPartition_1_MatrixVectorActivation_2/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_AddStreams_Batch_0_f1fqz0f3/project_StreamingDataflowPartition_1_AddStreams_Batch_0/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_Thresholding_Batch_2_xqpebmha/project_StreamingDataflowPartition_1_Thresholding_Batch_2/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_DuplicateStreams_Batch_1_hs70o3u9/project_StreamingDataflowPartition_1_DuplicateStreams_Batch_1/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_6_89dat11v/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_6/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_7_ef1jn6n8/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_7/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_FMPadding_Batch_3_3s36f6u4/project_StreamingDataflowPartition_1_FMPadding_Batch_3/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_DownSampler_0_urmf1olj/project_StreamingDataflowPartition_1_DownSampler_0/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_8_smhn8k_f/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_8/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_9_dlfqvzma/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_9/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_4_3d34zwar/project_StreamingDataflowPartition_1_StreamingFIFO_4/sol1/impl/verilog
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_ConvolutionInputGenerator_3_elggiind/project_StreamingDataflowPartition_1_ConvolutionInputGenerator_3/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_5__npn_tlu/project_StreamingDataflowPartition_1_StreamingFIFO_5/sol1/impl/verilog
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_3_t6cwj65o/project_StreamingDataflowPartition_1_MatrixVectorActivation_3/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_4_oowr6359/project_StreamingDataflowPartition_1_MatrixVectorActivation_4/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_10_5x4hd5cu/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_10/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_FMPadding_Batch_4_twqimrcb/project_StreamingDataflowPartition_1_FMPadding_Batch_4/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_11_23ug1l_x/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_11/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_ConvolutionInputGenerator_4_f4t_htl_/project_StreamingDataflowPartition_1_ConvolutionInputGenerator_4/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_6_q_af4r7u/project_StreamingDataflowPartition_1_StreamingFIFO_6/sol1/impl/verilog
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_5_uzs47gc6/project_StreamingDataflowPartition_1_MatrixVectorActivation_5/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_AddStreams_Batch_1_ryj2q3ih/project_StreamingDataflowPartition_1_AddStreams_Batch_1/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_Thresholding_Batch_3_jkzq4317/project_StreamingDataflowPartition_1_Thresholding_Batch_3/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_DuplicateStreams_Batch_2_x1k19s8u/project_StreamingDataflowPartition_1_DuplicateStreams_Batch_2/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_12_7i_1ez4d/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_12/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_13_bn_av3kr/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_13/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_FMPadding_Batch_5__h6fzrl9/project_StreamingDataflowPartition_1_FMPadding_Batch_5/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_DownSampler_1_2cgo0fqp/project_StreamingDataflowPartition_1_DownSampler_1/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_14_xtk8_bh6/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_14/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_15_6fb9ffs0/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_15/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_7_kvu2frxk/project_StreamingDataflowPartition_1_StreamingFIFO_7/sol1/impl/verilog
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_ConvolutionInputGenerator_5_vmk32unc/project_StreamingDataflowPartition_1_ConvolutionInputGenerator_5/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_8_hjxt8nvh/project_StreamingDataflowPartition_1_StreamingFIFO_8/sol1/impl/verilog
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_6_m51mk8q3/project_StreamingDataflowPartition_1_MatrixVectorActivation_6/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_7_s09jrr06/project_StreamingDataflowPartition_1_MatrixVectorActivation_7/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_16_jp8de1vp/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_16/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_FMPadding_Batch_6_w0v626ou/project_StreamingDataflowPartition_1_FMPadding_Batch_6/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_17_a9ggpuzi/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_17/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_ConvolutionInputGenerator_6_zhdicnta/project_StreamingDataflowPartition_1_ConvolutionInputGenerator_6/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_9_cweu7dx6/project_StreamingDataflowPartition_1_StreamingFIFO_9/sol1/impl/verilog
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_8_z8ye6e7y/project_StreamingDataflowPartition_1_MatrixVectorActivation_8/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_AddStreams_Batch_2_pclmbwb1/project_StreamingDataflowPartition_1_AddStreams_Batch_2/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_Thresholding_Batch_4_zjlt6fun/project_StreamingDataflowPartition_1_Thresholding_Batch_4/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_10_qfut3w6o/project_StreamingDataflowPartition_1_StreamingFIFO_10/sol1/impl/verilog
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_stitch_proj_88xmpoiq/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/finn-rtllib/memstream
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_2_IODMA_0_w2x050uy/project_StreamingDataflowPartition_2_IODMA_0/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_stitch_proj_8sy5f3bn/ip
} [current_project]
update_ip_catalog
set_property ip_output_repo /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
read_ip -quiet /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.srcs/sources_1/bd/top/ip/top_xbar_0/top_xbar_0.xci
set_property used_in_implementation false [get_files -all /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.gen/sources_1/bd/top/ip/top_xbar_0/top_xbar_0_ooc.xdc]

OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
OPTRACE "Configure IP Cache" START { }

set cacheID [config_ip_cache -export -no_bom  -dir /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.runs/top_xbar_0_synth_1 -new_name top_xbar_0 -ip [get_ips top_xbar_0]]

OPTRACE "Configure IP Cache" END { }
if { $cacheID == "" } {
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top top_xbar_0 -part xc7z020clg400-1 -incremental_mode off -mode out_of_context
OPTRACE "synth_design" END { }
OPTRACE "Write IP Cache" START { }

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
# disable binary constraint mode for IPCache checkpoints
set_param constraints.enableBinaryConstraints false

catch {
 write_checkpoint -force -noxdef -rename_prefix top_xbar_0_ top_xbar_0.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_xbar_0_stub.v
 lappend ipCachedFiles top_xbar_0_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_xbar_0_stub.vhdl
 lappend ipCachedFiles top_xbar_0_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_xbar_0_sim_netlist.v
 lappend ipCachedFiles top_xbar_0_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_xbar_0_sim_netlist.vhdl
 lappend ipCachedFiles top_xbar_0_sim_netlist.vhdl
 set TIME_taken [expr [clock seconds] - $TIME_start]

 if { [get_msg_config -count -severity {CRITICAL WARNING}] == 0 } {
  config_ip_cache -add -dcp top_xbar_0.dcp -move_files $ipCachedFiles   -synth_runtime $TIME_taken  -ip [get_ips top_xbar_0]
 }
OPTRACE "Write IP Cache" END { }
}
if { [get_msg_config -count -severity {CRITICAL WARNING}] > 0 } {
 send_msg_id runtcl-6 info "Synthesis results are not added to the cache due to CRITICAL_WARNING"
}

rename_ref -prefix_all top_xbar_0_

OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top_xbar_0.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
create_report "top_xbar_0_synth_1_synth_report_utilization_0" "report_utilization -file top_xbar_0_utilization_synth.rpt -pb top_xbar_0_utilization_synth.pb"
OPTRACE "synth reports" END { }

if { [catch {
  file copy -force /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.runs/top_xbar_0_synth_1/top_xbar_0.dcp /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.gen/sources_1/bd/top/ip/top_xbar_0/top_xbar_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 status "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.gen/sources_1/bd/top/ip/top_xbar_0/top_xbar_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.gen/sources_1/bd/top/ip/top_xbar_0/top_xbar_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.gen/sources_1/bd/top/ip/top_xbar_0/top_xbar_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.gen/sources_1/bd/top/ip/top_xbar_0/top_xbar_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.runs/top_xbar_0_synth_1/top_xbar_0.dcp /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.gen/sources_1/bd/top/ip/top_xbar_0/top_xbar_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 status "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.runs/top_xbar_0_synth_1/top_xbar_0_stub.v /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.gen/sources_1/bd/top/ip/top_xbar_0/top_xbar_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.runs/top_xbar_0_synth_1/top_xbar_0_stub.vhdl /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.gen/sources_1/bd/top/ip/top_xbar_0/top_xbar_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.runs/top_xbar_0_synth_1/top_xbar_0_sim_netlist.v /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.gen/sources_1/bd/top/ip/top_xbar_0/top_xbar_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.runs/top_xbar_0_synth_1/top_xbar_0_sim_netlist.vhdl /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.gen/sources_1/bd/top/ip/top_xbar_0/top_xbar_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cacheID 

if {[file isdir /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.ip_user_files/ip/top_xbar_0]} {
  catch { 
    file copy -force /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.gen/sources_1/bd/top/ip/top_xbar_0/top_xbar_0_stub.v /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.ip_user_files/ip/top_xbar_0
  }
}

if {[file isdir /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.ip_user_files/ip/top_xbar_0]} {
  catch { 
    file copy -force /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.gen/sources_1/bd/top/ip/top_xbar_0/top_xbar_0_stub.vhdl /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.ip_user_files/ip/top_xbar_0
  }
}
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "top_xbar_0_synth_1" END { }
