#!/bin/sh -f
xv_path="/opt/Xilinx/Vivado/2015.2"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim serial_clock_control_tb_behav -key {Behavioral:sim_1:Functional:serial_clock_control_tb} -tclbatch serial_clock_control_tb.tcl -log simulate.log
