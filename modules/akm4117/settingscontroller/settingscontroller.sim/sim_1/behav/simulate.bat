@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xsim akm4117settingscontroller_tb_behav -key {Behavioral:sim_1:Functional:akm4117settingscontroller_tb} -tclbatch akm4117settingscontroller_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
