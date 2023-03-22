
puts "Connecting to HAPS ....."

#connect -xvc-url 192.168.50.101:2542
#connect -xvc-url [lindex $argv 0]
connect -host localhost
puts "Connected."

targets -set -filter {name =~ "MicroBlaze #*"}
#dow ./export/sw.elf
dow ./export/sw.elf

set fp [open ./export/uart.log w]

puts "Starting UART Terminal with MDM..."

#jtagterminal
readjtaguart -handle $fp

after 1500
puts "Resestting and running program..."
rst
after 500
con
puts "Done. Press |Enter| key to continue..."
set rsp [gets stdin]
readjtaguart -stop
#jtagterminal -stop

exit

