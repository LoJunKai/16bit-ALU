set projDir "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit\ ALU/work/vivado"
set projName "alu proj"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit\ ALU/work/verilog/au_top_0.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit\ ALU/work/verilog/button_conditioner_1.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit\ ALU/work/verilog/edge_detector_2.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit\ ALU/work/verilog/alucalc_3.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit\ ALU/work/verilog/pipeline_4.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit\ ALU/work/verilog/alu16_5.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit\ ALU/work/verilog/ytoystar_6.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit\ ALU/work/verilog/sixteen_bit_adder_7.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit\ ALU/work/verilog/multiplier16_8.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit\ ALU/work/verilog/find_zvn_9.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit\ ALU/work/verilog/compare16_10.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit\ ALU/work/verilog/shift16_11.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit\ ALU/work/verilog/boole16_12.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit\ ALU/work/verilog/full_adder_13.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit\ ALU/work/verilog/multiply_single_layer_14.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit\ ALU/work/verilog/find_n_15.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit\ ALU/work/verilog/find_z_16.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit\ ALU/work/verilog/find_v_17.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit\ ALU/work/verilog/shiftleft16_18.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit\ ALU/work/verilog/shiftright16_19.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit\ ALU/work/verilog/mux4_20.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit\ ALU/work/constraint/io.xdc" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit\ ALU/work/constraint/alchitry.xdc" "C:/Users/JK/Desktop/Computing/Alchitry/library/components/au.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
