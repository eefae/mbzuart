## create workspace

set HW $::env(HW)
set SW $::env(SW)
puts "+------------------------------------------"
puts "| xsa: ${HW}.xsa | target: ${SW}.elf"
puts "+------------------------------------------"

setws ./

## create application
app create -name ${SW} -hw ../${HW}.xsa -domain {standalone_microblaze_0} -proc {microblaze_0} -os {standalone} -template {Hello World} -out {./workspace}

## create elf
app build -name ${SW}

exit

