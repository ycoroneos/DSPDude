# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {Common-41} -limit 4294967295
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-3

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/yanni/DSPDude/modules/clockgen/clockgen.cache/wt [current_project]
set_property parent.project_path /home/yanni/DSPDude/modules/clockgen/clockgen.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
add_files -quiet /home/yanni/DSPDude/modules/clockgen/clockgen.runs/clkgen0_synth_1/clkgen0.dcp
set_property used_in_implementation false [get_files /home/yanni/DSPDude/modules/clockgen/clockgen.runs/clkgen0_synth_1/clkgen0.dcp]
read_verilog -library xil_defaultlib {
  /home/yanni/DSPDude/modules/clockgen/clockgen.srcs/sources_1/new/slowdivider.v
  /home/yanni/DSPDude/modules/clockgen/clockgen.srcs/sources_1/new/clockmaker.v
  /home/yanni/DSPDude/modules/clockgen/clockgen.srcs/sources_1/new/nexys4.v
}
read_xdc /home/yanni/DSPDude/modules/clockgen/clockgen.srcs/constrs_1/imports/constraints/Nexys4DDR_Master.xdc
set_property used_in_implementation false [get_files /home/yanni/DSPDude/modules/clockgen/clockgen.srcs/constrs_1/imports/constraints/Nexys4DDR_Master.xdc]

synth_design -top nexys4 -part xc7a100tcsg324-3
write_checkpoint -noxdef nexys4.dcp
catch { report_utilization -file nexys4_utilization_synth.rpt -pb nexys4_utilization_synth.pb }
