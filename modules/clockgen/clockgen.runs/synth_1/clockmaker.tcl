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
add_files -quiet /home/yanni/DSPDude/modules/clockgen/clockgen.runs/clkgen1_synth_1/clkgen1.dcp
set_property used_in_implementation false [get_files /home/yanni/DSPDude/modules/clockgen/clockgen.runs/clkgen1_synth_1/clkgen1.dcp]
add_files -quiet /home/yanni/DSPDude/modules/clockgen/clockgen.runs/clkgen2_synth_1/clkgen2.dcp
set_property used_in_implementation false [get_files /home/yanni/DSPDude/modules/clockgen/clockgen.runs/clkgen2_synth_1/clkgen2.dcp]
read_verilog -library xil_defaultlib {
  /home/yanni/DSPDude/modules/clockgen/clockgen.srcs/sources_1/new/slowdivider.v
  /home/yanni/DSPDude/modules/clockgen/clockgen.srcs/sources_1/new/clockmaker.v
}
read_xdc /home/yanni/DSPDude/modules/clockgen/clockgen.srcs/constrs_1/imports/constraints/Nexys4DDR_Master.xdc
set_property used_in_implementation false [get_files /home/yanni/DSPDude/modules/clockgen/clockgen.srcs/constrs_1/imports/constraints/Nexys4DDR_Master.xdc]

synth_design -top clockmaker -part xc7a100tcsg324-3
write_checkpoint -noxdef clockmaker.dcp
catch { report_utilization -file clockmaker_utilization_synth.rpt -pb clockmaker_utilization_synth.pb }
