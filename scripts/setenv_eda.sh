#!/bin/bash -f

## +-------------------------------------------------------
## | Please change the settings to your local environment
## +-------------------------------------------------------
export XLNX_HOME=/tools/xilinx
export SNPS_HOME=/tools/synopsys
export XILINXD_LICENSE_FILE=/tools/xilinx/license/Xilinx.lic
export SNPSLMD_LICENSE_FILE=27020@PTWN02

## +-------------------------------------------------------
## | HAPS network address
## +-------------------------------------------------------
export HAPS_IP=192.168.50.101:2542

## +-------------------------------------------------------
## | Xilinx FPGA Tools
## +-------------------------------------------------------
export VIVADO_HOME=${XLNX_HOME}/Vivado/2021.2
export VITIS_HOME=${XLNX_HOME}/Vitis/2021.2
source $XLNX_HOME/Vitis/2021.2/settings64.sh
source $XLNX_HOME/Vivado/2021.2/settings64.sh

## +-------------------------------------------------------
## | Synopsys HAPS Tools
## +-------------------------------------------------------
export VCS_HOME=$SNPS_HOME/vcs/Q-2020.03-SP2-10-T-20220405
export CONFPRO_HOME=${SNPS_HOME}/confprosx/1.1.9/Confpro-SX_1.1.9/guibin
source $SNPS_HOME/protocomp/R-2020.12-SP1-1/settings_linux64.sh
export PATH=$SNPS_HOME/scl/2021.03/linux64/bin:$PATH

if [ -z "$SNPSLMD_LICENSE_FILE" ]; then echo "\$SNPSLMD_LICENSE_FILE is emnty"
        else echo "export SNPSLMD_LICENSE_FILE=$SNPSLMD_LICENSE_FILE"; fi
if [ -z "$XILINXD_LICENSE_FILE" ]; then echo "\$XILINXD_LICENSE_FILE is empty"
        else echo "export XILINXD_LICENSE_FILE=$XILINXD_LICENSE_FILE"; fi


which protocompiler
which vcs
which vivado
which vitis
which lmgrd

