## create workspace

set HW $::env(HW)
set SW $::env(SW)
puts "+------------------------------------------"
puts "| xsa: ${HW}.xsa | target: ${SW}.elf"
puts "+------------------------------------------"

setws ./

## create application
app create -name ${SW} -hw ../${HW}.xsa -domain {standalone_microblaze_0} -proc {microblaze_0} -os {standalone} -template {Memory Tests} -out {./workspace}

## create elf
app build -name ${SW}

## app create -name swtest -hw ../hw.xsa -domain {standalone_microblaze_0} -proc {microblaze_0} -os {standalone} -template {Memory Tests} -out {./workspace}
## app build -name swtest

exit

