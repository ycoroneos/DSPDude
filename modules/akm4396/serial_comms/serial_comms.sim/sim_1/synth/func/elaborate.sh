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
ExecStep $xv_path/bin/xelab -wto 6f853690c4384c1495185a13b2fe9ccb -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L secureip --snapshot serialcontroller_tb_func_synth xil_defaultlib.serialcontroller_tb xil_defaultlib.glbl -log elaborate.log
