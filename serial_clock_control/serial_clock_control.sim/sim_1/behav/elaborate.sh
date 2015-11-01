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
ExecStep $xv_path/bin/xelab -wto 60c0d9d28d3f4365bcbf41e2124c51ed -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot serial_clock_control_tb_behav xil_defaultlib.serial_clock_control_tb xil_defaultlib.glbl -log elaborate.log
