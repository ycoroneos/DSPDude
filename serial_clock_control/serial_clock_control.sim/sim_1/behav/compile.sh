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
echo "xvlog -m64 --relax -prj serial_clock_control_tb_vlog.prj"
ExecStep $xv_path/bin/xvlog -m64 --relax -prj serial_clock_control_tb_vlog.prj 2>&1 | tee compile.log
