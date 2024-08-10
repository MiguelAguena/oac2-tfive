onerror {resume}
quietly virtual signal -install /tb_if_id_ex_mem_wb/memoria/inst_mem { (context /tb_if_id_ex_mem_wb/memoria/inst_mem )(data_memory(0) &data_memory(1) &data_memory(2) &data_memory(3) )} W1
quietly virtual signal -install /tb_if_id_ex_mem_wb/memoria/inst_mem { (context /tb_if_id_ex_mem_wb/memoria/inst_mem )(data_memory(4) &data_memory(5) &data_memory(6) &data_memory(7) )} W2
quietly virtual signal -install /tb_if_id_ex_mem_wb/memoria/inst_mem { (context /tb_if_id_ex_mem_wb/memoria/inst_mem )(data_memory(8) &data_memory(9) &data_memory(10) &data_memory(11) )} W3
quietly virtual signal -install /tb_if_id_ex_mem_wb/memoria/inst_mem { (context /tb_if_id_ex_mem_wb/memoria/inst_mem )(data_memory(12) &data_memory(13) &data_memory(14) &data_memory(15) )} W4
quietly virtual signal -install /tb_if_id_ex_mem_wb/memoria/inst_mem { (context /tb_if_id_ex_mem_wb/memoria/inst_mem )(data_memory(19) &data_memory(18) &data_memory(17) &data_memory(16) )} W5
quietly virtual signal -install /tb_if_id_ex_mem_wb/memoria/inst_mem { (context /tb_if_id_ex_mem_wb/memoria/inst_mem )(data_memory(16) &data_memory(17) &data_memory(18) &data_memory(19) )} W4001
quietly virtual signal -install /tb_if_id_ex_mem_wb/memoria/inst_mem { (context /tb_if_id_ex_mem_wb/memoria/inst_mem )(data_memory(20) &data_memory(21) &data_memory(22) &data_memory(23) )} W6
quietly virtual signal -install /tb_if_id_ex_mem_wb/memoria/inst_mem { (context /tb_if_id_ex_mem_wb/memoria/inst_mem )(data_memory(24) &data_memory(25) &data_memory(26) &data_memory(27) )} W7
quietly virtual signal -install /tb_if_id_ex_mem_wb/memoria/inst_mem { (context /tb_if_id_ex_mem_wb/memoria/inst_mem )(data_memory(28) &data_memory(29) &data_memory(30) &data_memory(31) )} W8
quietly virtual signal -install /tb_if_id_ex_mem_wb/memoria/inst_mem { (context /tb_if_id_ex_mem_wb/memoria/inst_mem )(data_memory(32) &data_memory(33) &data_memory(34) &data_memory(35) )} W9
quietly virtual signal -install /tb_if_id_ex_mem_wb/memoria/inst_mem { (context /tb_if_id_ex_mem_wb/memoria/inst_mem )(data_memory(36) &data_memory(37) &data_memory(38) &data_memory(39) )} W10
quietly WaveActivateNextPane {} 0
add wave -noupdate -label CLOCK -radix hexadecimal /tb_if_id_ex_mem_wb/clock
add wave -noupdate -color MAGENTA -itemcolor PLUM -label {COP IF} -radix hexadecimal /tb_if_id_ex_mem_wb/fetch/COP_if
add wave -noupdate -color MAGENTA -itemcolor PLUM -label {COP ID} -radix hexadecimal /tb_if_id_ex_mem_wb/COP_id
add wave -noupdate -color MAGENTA -itemcolor PLUM -label {COP EX} -radix hexadecimal /tb_if_id_ex_mem_wb/COP_ex
add wave -noupdate -color MAGENTA -itemcolor PLUM -label {COP MEM} -radix hexadecimal /tb_if_id_ex_mem_wb/COP_mem
add wave -noupdate -color MAGENTA -itemcolor PLUM -label {COP WB} -radix hexadecimal /tb_if_id_ex_mem_wb/COP_wb
add wave -noupdate -color {Cornflower Blue} -itemcolor {Cornflower Blue} -label BID -radix hexadecimal /tb_if_id_ex_mem_wb/BID
add wave -noupdate -label BEX -radix hexadecimal /tb_if_id_ex_mem_wb/BEX
add wave -noupdate -color {Cornflower Blue} -itemcolor {Cornflower Blue} -label BMEM -radix hexadecimal /tb_if_id_ex_mem_wb/BMEM
add wave -noupdate -label BWB -radix hexadecimal /tb_if_id_ex_mem_wb/BWB
add wave -noupdate -color GOLD -itemcolor GOLD -label {KEEP SIMULATING} -radix hexadecimal /tb_if_id_ex_mem_wb/keep_simulating
add wave -noupdate -color GOLD -itemcolor GOLD -label {PARE IF} -radix hexadecimal /tb_if_id_ex_mem_wb/fetch/s_halt
TreeUpdate [SetDefaultTree]
WaveRestoreCursors
quietly wave cursor active 0
configure wave -namecolwidth 434
configure wave -valuecolwidth 213
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
WaveRestoreZoom {0 ps} {1699501 ps}
