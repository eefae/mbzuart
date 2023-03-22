
puts "Attempting to connect to HAPS-SX..."

connect -xvc-url 192.168.50.101:2542

#connect -xvc-url [lindex $argv 0]

connect -host localhost

targets

puts "Connected."

puts "Program FPGA device ....."
targets -set -filter {name =~ "xcvu19p*"}

puts "bitstream: ./export/hw.bit"
#fpga ./export/hw.bit
fpga ./export/mbzsx_golden.bit

#puts "bitstream: ./vivado/hw/hw.runs/impl_1/top_wrapper.bit"
#fpga ./vivado/hw/hw.runs/impl_1/top_wrapper.bit

exit




