#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/eda/xilinx/Vitis/2021.2/bin:/eda/xilinx/Vivado/2021.2/ids_lite/ISE/bin/lin64:/eda/xilinx/Vivado/2021.2/bin
else
  PATH=/eda/xilinx/Vitis/2021.2/bin:/eda/xilinx/Vivado/2021.2/ids_lite/ISE/bin/lin64:/eda/xilinx/Vivado/2021.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/demo/nfs/haps/semi/hapsmbzsoc_v21p2/vivado/hw/hw.runs/top_xbar_0_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log top_xbar_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source top_xbar_0.tcl