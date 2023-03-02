# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.runs/synth_1/top.tcl"
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
OPTRACE "synth_1" START { ROLLUP_AUTO }
set_param chipscope.maxJobs 3
set_param xicom.use_bs_reader 1
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.cache/wt [current_project]
set_property parent.project_path D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo d:/Desktop/RISC-V-pipeline/RISC-V-pipeline.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
add_files D:/Desktop/RISC-V/Test/load_store/load_store.coe
add_files D:/Desktop/RISC-V/Test/UJ_format/UJ_format.coe
read_verilog -library xil_defaultlib {
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/param.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/basic/alu/ALU.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/basic/ctrl/ALUope.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/basic/pc/BHT.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/IO/BUS/BUS.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/basic/ctrl/BranchCTRL.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/basic/pc/BranchPredictor.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/basic/alu/COMP.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/basic/ctrl/CTRL.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/combine/EX.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/combine/EX_IF.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/combine/EX_MEM.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/basic/ctrl/ExceptionCTRL.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/basic/ctrl/ForwardingUnit.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/combine/ID.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/combine/ID_EX.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/combine/IF.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/combine/IF_ID.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/basic/ctrl/InstDivider.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/combine/MEM.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/combine/MEM_WB.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/basic/pc/NPC.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/basic/pc/PC.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/combine/WB.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/IO/buffer/buffer.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/basic/mem/dataMem.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/IO/clk/deviceCLK.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/basic/alu/immGen.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/IO/interface_LED_SWITCH/inputCtrl_LED.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/IO/interface_NUMLED/inputCtrl_NUMLED.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/IO/interface_RAM/inputCtrl_RAM.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/basic/mem/instMem.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/IO/interface_LED_SWITCH/interface_LED_SWITCH.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/IO/interface_NUMLED/interface_NUMLED.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/IO/interface_RAM/interface_RAM.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/miniRV.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/IO/interface_RAM/outputCtrl_RAM.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/IO/interface_LED_SWITCH/outputCtrl_Switch.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/basic/mem/regFIle.v
  D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/imports/risc-v-cpu-pipeline/top.v
}
read_ip -quiet D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/ip/cpuclk/cpuclk.xci
set_property used_in_implementation false [get_files -all d:/Desktop/RISC-V-pipeline/RISC-V-pipeline.gen/sources_1/ip/cpuclk/cpuclk_board.xdc]
set_property used_in_implementation false [get_files -all d:/Desktop/RISC-V-pipeline/RISC-V-pipeline.gen/sources_1/ip/cpuclk/cpuclk.xdc]
set_property used_in_implementation false [get_files -all d:/Desktop/RISC-V-pipeline/RISC-V-pipeline.gen/sources_1/ip/cpuclk/cpuclk_ooc.xdc]

read_ip -quiet D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/ip/inst_mem/inst_mem.xci
set_property used_in_implementation false [get_files -all d:/Desktop/RISC-V-pipeline/RISC-V-pipeline.gen/sources_1/ip/inst_mem/inst_mem_ooc.xdc]

read_ip -quiet D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/sources_1/ip/data_mem/data_mem.xci
set_property used_in_implementation false [get_files -all d:/Desktop/RISC-V-pipeline/RISC-V-pipeline.gen/sources_1/ip/data_mem/data_mem_ooc.xdc]

OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/constrs_1/new/RISC-V.xdc
set_property used_in_implementation false [get_files D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/constrs_1/new/RISC-V.xdc]

set_param ips.enableIPCacheLiteLoad 1

read_checkpoint -auto_incremental -incremental D:/Desktop/RISC-V-pipeline/RISC-V-pipeline.srcs/utils_1/imports/synth_1/top.dcp
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top top -part xc7a100tcsg324-1
OPTRACE "synth_design" END { }
if { [get_msg_config -count -severity {CRITICAL WARNING}] > 0 } {
 send_msg_id runtcl-6 info "Synthesis results are not added to the cache due to CRITICAL_WARNING"
}


OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
create_report "synth_1_synth_report_utilization_0" "report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb"
OPTRACE "synth reports" END { }
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "synth_1" END { }
