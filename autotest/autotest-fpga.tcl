
puts "Connecting to HAPS ....."
connect -xvc-url [lindex $argv 0]
connect -host localhost
puts "Connected."

puts "Program FPGA device ....."
targets -set -filter {name =~ "xcvu19p*"}

puts "Download FPGA bitstream: ./autotest/hw.bit"
fpga ./hw.bit

exit


