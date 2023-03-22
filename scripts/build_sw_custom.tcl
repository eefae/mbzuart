## create Vitis project

set HW $::env(HW)
set SW $::env(SW)
puts "+-------------------------------------"
puts "| xsa: ${HW}.xsa | target: ${SW}.elf"
puts "+-------------------------------------"

setws ./

## create application
app create -name ${SW} -hw ./hw.xsa -domain {standalone_microblaze_0} -proc {microblaze_0} -os {standalone} -out {./workspace}

## add source
exec cp -rf ../../src/apps/sw_custom/src ./${SW}

## create elf
app build -name ${SW}

exit

