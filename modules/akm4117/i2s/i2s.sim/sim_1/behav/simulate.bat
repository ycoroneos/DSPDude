@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xsim i2s_receiver_tb_behav -key {Behavioral:sim_1:Functional:i2s_receiver_tb} -tclbatch i2s_receiver_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
