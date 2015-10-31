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
ExecStep $xv_path/bin/xsim serialcontroller_tb_behav -key {Behavioral:sim_1:Functional:serialcontroller_tb} -tclbatch serialcontroller_tb.tcl -log simulate.log
