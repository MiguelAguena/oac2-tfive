onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label BID -radix hexadecimal /tb_if/BID
add wave -noupdate -divider -height 30 CONTROL
add wave -noupdate -color Turquoise -label CLOCK -radix hexadecimal /tb_if/clock
add wave -noupdate -color magenta -label ID_BRANCH_NOP -radix hexadecimal /tb_if/id_Branch_nop
add wave -noupdate -color magenta -label ID_HD_HAZARD -radix hexadecimal /tb_if/id_hd_hazard
add wave -noupdate -color magenta -label ID_JUMP_PC -radix hexadecimal /tb_if/id_Jump_PC
add wave -noupdate -color gold -label ID_PC_SRC -radix hexadecimal /tb_if/id_PC_Src
add wave -noupdate -divider -height 30 MEM
add wave -noupdate -label S_IMEM_OUT -radix hexadecimal /tb_if/DUT/s_imem_out
add wave -noupdate -label S_INSTR -radix hexadecimal /tb_if/DUT/s_instr
add wave -noupdate -divider -height 30 PC
add wave -noupdate -color gold -label S_PC_ENABLE -radix hexadecimal /tb_if/DUT/s_pc_enable
add wave -noupdate -color LIME -label S_PC_IN -radix hexadecimal /tb_if/DUT/s_pc_in
add wave -noupdate -color LIME -label S_PC_OUT -radix hexadecimal /tb_if/DUT/s_pc_out
add wave -noupdate -color LIME -label S_PC_PLUS4 -radix hexadecimal /tb_if/DUT/s_pc_plus4
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {10 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 267
configure wave -valuecolwidth 125
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {50 ns}
