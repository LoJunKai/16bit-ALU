set projDir "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/vivado"
set projName "alu proj"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/verilog/au_top_0.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/verilog/button_conditioner_1.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/verilog/reset_conditioner_2.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/verilog/edge_detector_3.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/verilog/auto_tester_4.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/verilog/alucalc_5.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/verilog/alufn_checker_6.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/verilog/pipeline_7.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/verilog/counter_8.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/verilog/multi_seven_seg_9.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/verilog/auto_test_output_10.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/verilog/decimal_counter_11.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/verilog/alu16_12.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/verilog/counter_13.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/verilog/seven_seg_14.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/verilog/decoder_15.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/verilog/ytoystar_16.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/verilog/sixteen_bit_adder_17.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/verilog/compare16_18.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/verilog/shift16_19.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/verilog/boole16_20.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/verilog/find_zvn_21.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/verilog/full_adder_22.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/verilog/shiftleft16_23.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/verilog/shiftright16_24.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/verilog/mux4_25.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/constraint/io.xdc" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/16bit-ALU/work/constraint/alchitry.xdc" "C:/Users/JK/Desktop/Computing/Alchitry/library/components/au.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
