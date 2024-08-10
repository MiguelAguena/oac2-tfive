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
add wave -noupdate -label DM(39) -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(39)
add wave -noupdate -label DM(38) -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(38)
add wave -noupdate -label DM(35) -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(35)
add wave -noupdate -label DM(34) -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(34)
add wave -noupdate -label DM(31) -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(31)
add wave -noupdate -label DM(30) -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(30)
add wave -noupdate -label DM(27) -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(27)
add wave -noupdate -label DM(26) -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(26)
add wave -noupdate -label DM(23) -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(23)
add wave -noupdate -label DM(22) -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(22)
add wave -noupdate -label DM(19) -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(19)
add wave -noupdate -label DM(18) -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(18)
add wave -noupdate -label DM(15) -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(15)
add wave -noupdate -label DM(14) -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(14)
add wave -noupdate -label DM(11) -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(11)
add wave -noupdate -label DM(10) -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(10)
add wave -noupdate -label DM(7) -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(7)
add wave -noupdate -label DM(6) -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(6)
add wave -noupdate -label DM(3) -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(3)
add wave -noupdate -label DM(2) -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(2)
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
WaveRestoreZoom {325077 ps} {10809755 ps}
