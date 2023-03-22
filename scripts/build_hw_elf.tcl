###########################################################
## Associate ELF file and generate bitstream with ELF includded
###########################################################

puts "##### source: sw.elf"
puts "##### target: $::env(HW).xsa"
puts "##### target: $::env(HW).bit"

#open_project vivado/hw.xpr

update_compile_order -fileset sources_1

remove_files sw.elf
import_files -norecurse -force sw.elf

set_property used_in_simulation 0 [get_files sw.elf]

import_files -fileset sim_1 -norecurse -force sw.elf

set_property SCOPED_TO_REF top [get_files -all -of_objects [get_fileset sources_1] {sw.elf}]
set_property SCOPED_TO_CELLS { microblaze_0 } [get_files -all -of_objects [get_fileset sources_1] {sw.elf}]

set_property SCOPED_TO_REF top [get_files -all -of_objects [get_fileset sim_1] {sw.elf}]
set_property SCOPED_TO_CELLS { microblaze_0 } [get_files -all -of_objects [get_fileset sim_1] {sw.elf}]


update_compile_order -fileset sources_1
reset_run synth_1
launch_runs synth_1 -jobs $::env(NJOBS)
wait_on_run synth_1

reset_run impl_1
launch_runs impl_1 -to_step write_bitstream -jobs $::env(NJOBS)
wait_on_run impl_1

write_hw_platform -fixed -include_bit -force -file ./top_wrapper.xsa 

file copy -force ./top_wrapper.xsa ./hw_elf.xsa
file copy -force ./hw.runs/impl_1/top_wrapper.bit ./hw_elf.bit

exit

