set_property SRC_FILE_INFO {cfile:/home/yanni/DSPDude/modules/clockgen/clockgen.srcs/sources_1/ip/clkgen0/clkgen0.xdc rfile:../../../clockgen.srcs/sources_1/ip/clkgen0/clkgen0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_100mhz]] 0.1
