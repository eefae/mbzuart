
puts "Connecting to HAPS ....."
connect -xvc-url [lindex $argv 0]
connect -host localhost
puts "Connected."

targets -set -filter {name =~ "MicroBlaze #*"}
dow ./autotest.elf

set fp [open uart.log w]

puts "Starting UART Terminal with MDM..."
#jtagterminal
readjtaguart -handle $fp
after 1500
puts "Resetting and running program..."
rst
after 500
con
puts "Done. Press |Enter| key to continue"
set rsp [gets stdin]
readjtaguart -stop
#jtagterminal -stop
exit


