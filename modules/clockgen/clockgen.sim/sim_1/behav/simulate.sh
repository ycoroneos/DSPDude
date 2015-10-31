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
ExecStep $xv_path/bin/xsim clockmaker_tb_behav -key {Behavioral:sim_1:Functional:clockmaker_tb} -tclbatch clockmaker_tb.tcl -log simulate.log
