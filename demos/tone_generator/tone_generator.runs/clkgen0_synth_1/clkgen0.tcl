# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-3

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/yanni/DSPDude/demos/tone_generator/tone_generator.cache/wt [current_project]
set_property parent.project_path /home/yanni/DSPDude/demos/tone_generator/tone_generator.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_ip /home/yanni/DSPDude/demos/tone_generator/tone_generator.srcs/sources_1/ip/clkgen0/clkgen0.xci
set_property is_locked true [get_files /home/yanni/DSPDude/demos/tone_generator/tone_generator.srcs/sources_1/ip/clkgen0/clkgen0.xci]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top clkgen0 -part xc7a100tcsg324-3 -mode out_of_context
rename_ref -prefix_all clkgen0_
write_checkpoint -noxdef clkgen0.dcp
catch { report_utilization -file clkgen0_utilization_synth.rpt -pb clkgen0_utilization_synth.pb }
if { [catch {
  file copy -force /home/yanni/DSPDude/demos/tone_generator/tone_generator.runs/clkgen0_synth_1/clkgen0.dcp /home/yanni/DSPDude/demos/tone_generator/tone_generator.srcs/sources_1/ip/clkgen0/clkgen0.dcp
} _RESULT ] } { 
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}
if { [catch {
  write_verilog -force -mode synth_stub /home/yanni/DSPDude/demos/tone_generator/tone_generator.srcs/sources_1/ip/clkgen0/clkgen0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode synth_stub /home/yanni/DSPDude/demos/tone_generator/tone_generator.srcs/sources_1/ip/clkgen0/clkgen0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_verilog -force -mode funcsim /home/yanni/DSPDude/demos/tone_generator/tone_generator.srcs/sources_1/ip/clkgen0/clkgen0_funcsim.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode funcsim /home/yanni/DSPDude/demos/tone_generator/tone_generator.srcs/sources_1/ip/clkgen0/clkgen0_funcsim.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}