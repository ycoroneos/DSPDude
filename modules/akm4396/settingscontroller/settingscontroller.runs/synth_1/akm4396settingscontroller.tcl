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
set_property webtalk.parent_dir /home/yanni/DSPDude/modules/akm4396/settingscontroller/settingscontroller.cache/wt [current_project]
set_property parent.project_path /home/yanni/DSPDude/modules/akm4396/settingscontroller/settingscontroller.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib /home/yanni/DSPDude/modules/akm4396/settingscontroller/settingscontroller.srcs/sources_1/new/akm4396.v
synth_design -top akm4396settingscontroller -part xc7a100tcsg324-3
write_checkpoint -noxdef akm4396settingscontroller.dcp
catch { report_utilization -file akm4396settingscontroller_utilization_synth.rpt -pb akm4396settingscontroller_utilization_synth.pb }