set_host_options -max_cores 6
# Read all Files
read_verilog RFILE.v
current_design RFILE
link

# Setting Clock Constraits
source -echo -verbose RFILE_DC.sdc

set_multicycle_path -setup 2 -to [get_cells xt*]
set_multicycle_path -hold  1 -to [get_cells xt*]

set_multicycle_path -setup 2 -to [get_cells yt*]
set_multicycle_path -hold  1 -to [get_cells yt*]


# Synthesis all design
compile -map_effort high -area_effort high
compile -map_effort high -area_effort high -inc

write -format ddc  -hierarchy -output "RFILE_syn.ddc"
write_sdf RFILE_syn.sdf
write_file -format verilog -hierarchy -output RFILE_syn.v
report_area > area.log
report_timing > timing.log
report_qor > RFILE_syn.qor

