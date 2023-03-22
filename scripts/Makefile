
SHELL := /bin/bash

export HW=hw
export SW=sw
export NJOBS=16


.PHONY: help hw sw elf conn fpga xpr xsct

help:
	@echo "+-----------------------------------------------------"
	@echo "| ### Microblaze soft processor example"
	@echo "+-----------------------------------------------------"
	@echo "| Step 1: \$$ make hw   : Build Vivado HW platform"
	@echo "| Step 2: \$$ make sw   : Build Vitis SW platform"
	@echo "| Step 3: \$$ make elf  : Associate ELF files (Optional)"
	@echo "| Step 4: \$$ make conn : Connecting HAPS using Confpro"
	@echo "| Step 5: \$$ make fpga : Program FPGA bitstream"
	@echo "| Step 6: \$$ make apps : Connect HAPS and run apps"
	@echo "| Step 7: \$$ make auto : Remote connect HAPS and run apps"
	@echo "+-----------------------------------------------------"
	@echo "| Step 0: \$$ make xpr  : Open Vivado project"
	@echo "| Step 0: \$$ make xsct : Launch XSCT console"
	@echo "+-----------------------------------------------------"
	@echo ""


## +-----------------------------------------------------------------
## | Build HW platform
## +-----------------------------------------------------------------	

env: 
	@source ./setenv.sh

hw:
	@cd ./vivado/$(HW) && vivado -mode tcl -project ./$(HW).xpr -source ../../scripts/build_hw_vivado.tcl
	@ls ./vivado/$(HW)/$(HW).runs
	@ls -lh ./vivado/$(HW)/$(HW).runs/impl_1/top_wrapper.bit
	@ls -lh ./vivado/$(HW)/$(HW).xsa
	@cp -f ./vivado/$(HW)/$(HW).xsa ./export/hw.xsa
	@cp -f ./vivado/$(HW)/$(HW).runs/impl_1/top_wrapper.bit ./expoer/hw.bit
	@echo "+-----------------------------------------------------"
	@echo "| ### Build Vivado HW Platform (\$$NJOBS=$(NJOBS))"
	@echo "| ### Output: ./export/hw.xsa"
	@echo "| ### Output: ./export/hw.bit"
	@echo "+-----------------------------------------------------"

clean-hw:
	@cd ./vivado/$(HW) && \rm -rf vivado.* .Xil *.os *.jou *.og $(HW).cache $(HW).runs


xpr:
	@cd ./vivado/$(HW) && vivado -mode gui -project ./$(HW).xpr &


rpt:
	@echo "### Open Vivado HW report"
	@vim -o ./vivado/$(HW)/*.rpt

## +-----------------------------------------------------------------
## | Launch XSIM simulaton
## +-----------------------------------------------------------------
.PHONY: xsim

xsim:
	@cd ./vivado/$(HW) && vivado -mode gui -project ./$(HW).xpr -source ../../scripts/xsim_openwave.tcl &


## +-----------------------------------------------------------------
## | Associate ELF to bitstream (Optional)
## +-----------------------------------------------------------------
elf:
	@cp -f ./export/sw.elf ./vivado/$(HW)/sw.elf
	@cd ./vivado/$(HW) && vivado -mode tcl -project ./$(HW).xpr -source ../../scripts/build_hw_elf.tcl
	@cd ./vivado/$(HW) && cp -f ./hw_elf.bit ../../export/hw_elf.bit
	@cd ./vivado/$(HW) && cp -f ./hw_elf.xsa ../../export/hw_elf.xsa

## +-----------------------------------------------------------------
## | Runtime
## | Step 1: make conn
## | Step 2: make fpga
## | Step 3: make dow
## +-----------------------------------------------------------------

conn:
	@bash -x $(CONFPRO_HOME)/Confpro-SX-GuiRun.sh

	
fpga:
	@echo "Using XSCT to program FPGA ....."
	@source ./setenv.sh && xsct ./scripts/xsct_fpga.tcl $(HAPS_IP)

apps:
	@echo "Using XSCT to download ELF (/export/sw.elf) ....."
	@cd ./export && \rm -f ./sw.elf && ln -s ./sw_custom.elf ./sw.elf
	@source ./setenv.sh && ${VITIS_HOME}/bin/xsct ./scripts/xsct_dow.tcl $(HAPS_IP)
	@echo "Check the output log (./export/uart.log)  ....."
	@cd ./export && ls -lh uart.log && tail -n 10 ./uart.log
	@cd ./export && cp -f ./uart.log sw_custom_uart.log
	@echo ""
	

kill:
	ps aux | grep vivado | awk '{print $$2}'
	pkill hw_server


## +-----------------------------------------------------------------
## | Build SW platform
## +-----------------------------------------------------------------

sw: sw_custom 

sw-gui: clean-sw
	@cd ./vitis && vitis &


sw_memtests sw_helloworld sw_custom: clean-sw
	@cd ./vitis && \rm -rf workspace && mkdir -p ./workspace
	@cd ./vitis/workspace && cp -f ../../export/hw.xsa ./hw.xsa
	@cd ./vitis/workspace && $(VITIS_HOME)/bin/xsct ../../scripts/build_$@.tcl
	@mkdir -p ./src/apps/$@
	@cp -rf ./vitis/workspace/$(SW)/Debug ./src/apps/$@
	@cp -rf ./vitis/workspace/$(SW)/src ./src/apps/$@
	@cp -f ./src/apps/$@/Debug/$(SW).elf ./export/$@.elf
	@echo "+-----------------------------------------------------"
	@echo "| ### Build Vitis SW"
	@echo "| ### Input: ./src/apps/$@"
	@echo "| ### Input: ./export/hw.xsa"
	@echo "| ### Output:./export/$@.elf"
	@echo "+-----------------------------------------------------"


clean-sw:
	@cd ./vitis && \rm -rf workspace && \mkdir -p workspace
	@cd ./vitis && \rm -f *.log *.str


## +-----------------------------------------------------------------
## | Autotest: Remote connect HAPS ans run applicaiton SW
## +-----------------------------------------------------------------
.PHONY: auto helloworld memtests custom

auto: custom

helloworld memtests custom:
	@echo "+-----------------------------------------------------"
	@echo "| ### SW ELF: $@"
	@echo "+-----------------------------------------------------"
	@cd ./autotest && \rm -f ./autotest.elf && ln -s ../export/sw_$@.elf ./autotest.elf
	expect ./autotest/autotest.exp
	@echo "+-----------------------------------------------------"
	@echo "| ### $@: ./autotest/uart.log"
	@echo "+-----------------------------------------------------"
	@echo ""
	@cd ./autotest && ls -lh ./uart.log && tail -n 20 ./uart.log
	@echo ""



