
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name pipelineCPU -dir "/home/ctnguyen/Works/pipelineCPU/planAhead_run_1" -part xc7a100tcsg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "MEM_Instruction.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {src/MEM_Instruction.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top MEM_Instruction $srcset
add_files [list {MEM_Instruction.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc7a100tcsg324-3
