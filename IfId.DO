onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Pink -radix hexadecimal -radixshowbase 0 /tb_if_id_tr/reset
add wave -noupdate -radix hexadecimal -radixshowbase 0 /tb_if_id_tr/clock
add wave -noupdate -radix hexadecimal -radixshowbase 0 /tb_if_id_tr/Keep_simulating
add wave -noupdate -divider -height 40 {DECODE IN}
add wave -noupdate -color {Sky Blue} -radix hexadecimal -radixshowbase 0 /tb_if_id_tr/BID
add wave -noupdate -color {Sky Blue} -radix hexadecimal -radixshowbase 0 /tb_if_id_tr/MemRead_ex
add wave -noupdate -color {Sky Blue} -radix hexadecimal -radixshowbase 0 /tb_if_id_tr/rd_ex
add wave -noupdate -color {Sky Blue} -radix hexadecimal -radixshowbase 0 /tb_if_id_tr/ula_ex
add wave -noupdate -color {Sky Blue} -radix hexadecimal -radixshowbase 0 /tb_if_id_tr/MemRead_mem
add wave -noupdate -color {Sky Blue} -radix hexadecimal -radixshowbase 0 /tb_if_id_tr/ula_mem
add wave -noupdate -color {Sky Blue} -radix hexadecimal -radixshowbase 0 /tb_if_id_tr/NPC_mem
add wave -noupdate -color {Sky Blue} -radix hexadecimal -radixshowbase 0 /tb_if_id_tr/rd_mem
add wave -noupdate -color {Sky Blue} -radix hexadecimal -radixshowbase 0 /tb_if_id_tr/ex_fw_A_Branch
add wave -noupdate -color {Sky Blue} -radix hexadecimal -radixshowbase 0 /tb_if_id_tr/ex_fw_B_Branch
add wave -noupdate -color {Sky Blue} -radix hexadecimal -radixshowbase 0 /tb_if_id_tr/rd_wb
add wave -noupdate -color {Sky Blue} -radix hexadecimal -radixshowbase 0 /tb_if_id_tr/writedata_wb
add wave -noupdate -color {Sky Blue} -radix hexadecimal -radixshowbase 0 /tb_if_id_tr/RegWrite_wb
add wave -noupdate -divider -height 40 {DECODE OUT}
add wave -noupdate -color Magenta -radix hexadecimal -radixshowbase 0 /tb_if_id_tr/id_Jump_PC
add wave -noupdate -color Magenta -radix hexadecimal -radixshowbase 0 /tb_if_id_tr/COP_id
add wave -noupdate -color Magenta -radix hexadecimal -radixshowbase 0 /tb_if_id_tr/COP_ex
add wave -noupdate -color Magenta -radix hexadecimal -radixshowbase 0 /tb_if_id_tr/rs1_id_ex
add wave -noupdate -color Magenta -radix hexadecimal -radixshowbase 0 /tb_if_id_tr/rs2_id_ex
add wave -noupdate -color Magenta -radix hexadecimal -radixshowbase 0 /tb_if_id_tr/id_Branch_nop
add wave -noupdate -color Magenta -radix hexadecimal -radixshowbase 0 /tb_if_id_tr/id_hd_hazard
add wave -noupdate -color Magenta -radix hexadecimal -radixshowbase 0 /tb_if_id_tr/id_PC_Src
add wave -noupdate -color Magenta -radix hexadecimal -radixshowbase 0 /tb_if_id_tr/BEX
add wave -noupdate -divider -height 40 FETCH
add wave -noupdate -radix hexadecimal /tb_if_id_tr/fetch/id_hd_hazard
add wave -noupdate -radix hexadecimal /tb_if_id_tr/fetch/id_Branch_nop
add wave -noupdate -radix hexadecimal /tb_if_id_tr/fetch/id_Jump_PC
add wave -noupdate -radix hexadecimal /tb_if_id_tr/fetch/id_PC_Src
add wave -noupdate -radix hexadecimal /tb_if_id_tr/fetch/keep_simulating
add wave -noupdate -radix hexadecimal /tb_if_id_tr/fetch/BID
add wave -noupdate -radix hexadecimal /tb_if_id_tr/fetch/s_pc_out
add wave -noupdate -radix hexadecimal /tb_if_id_tr/fetch/s_pc_plus4
add wave -noupdate -radix hexadecimal /tb_if_id_tr/fetch/s_imem_out
add wave -noupdate -radix hexadecimal /tb_if_id_tr/fetch/s_instr
add wave -noupdate -radix hexadecimal /tb_if_id_tr/fetch/s_pc_in
add wave -noupdate -radix hexadecimal /tb_if_id_tr/fetch/s_pc_enable
add wave -noupdate -radix hexadecimal /tb_if_id_tr/fetch/s_halt
add wave -noupdate -height 25 -radix hexadecimal /tb_if_id_tr/fetch/COP_if
add wave -noupdate -radix hexadecimal /tb_if_id_tr/fetch/ri_if
add wave -noupdate -radix hexadecimal /tb_if_id_tr/fetch/PC_if
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {29470 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 226
configure wave -valuecolwidth 251
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {52500 ps}
