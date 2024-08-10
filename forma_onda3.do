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
add wave -noupdate -label NUMELEMENTOS /tb_if_id_ex_mem_wb/estatisticas/numelementos
add wave -noupdate -label NUM_INST /tb_if_id_ex_mem_wb/estatisticas/num_inst
add wave -noupdate -label NUM_CICLOS /tb_if_id_ex_mem_wb/estatisticas/num_ciclos
add wave -noupdate -label NUM_ACESSOS_LEITURA_DMEM /tb_if_id_ex_mem_wb/estatisticas/num_acessos_leitura_dmem
add wave -noupdate -label NUM_ACESSOS_ESCRITA_DMEM /tb_if_id_ex_mem_wb/estatisticas/num_acessos_escrita_dmem
add wave -noupdate -label NUM_BOLHAS /tb_if_id_ex_mem_wb/estatisticas/num_bolhas
add wave -noupdate -label NUM_ADD /tb_if_id_ex_mem_wb/estatisticas/num_add
add wave -noupdate -label NUM_ADDI /tb_if_id_ex_mem_wb/estatisticas/num_addi
add wave -noupdate -label NUM_SLLI /tb_if_id_ex_mem_wb/estatisticas/num_slli
add wave -noupdate -label NUM_SLTI /tb_if_id_ex_mem_wb/estatisticas/num_slti
add wave -noupdate -label NUM_SRLI /tb_if_id_ex_mem_wb/estatisticas/num_srli
add wave -noupdate -label NUM_SRAI /tb_if_id_ex_mem_wb/estatisticas/num_srai
add wave -noupdate -label NUM_SLT /tb_if_id_ex_mem_wb/estatisticas/num_slt
add wave -noupdate -label NUM_BEQ /tb_if_id_ex_mem_wb/estatisticas/num_beq
add wave -noupdate -label NUM_BNE /tb_if_id_ex_mem_wb/estatisticas/num_bne
add wave -noupdate -label NUM_BLT /tb_if_id_ex_mem_wb/estatisticas/num_blt
add wave -noupdate -label NUM_LW /tb_if_id_ex_mem_wb/estatisticas/num_lw
add wave -noupdate -label NUM_SW /tb_if_id_ex_mem_wb/estatisticas/num_sw
add wave -noupdate -label NUM_JAL /tb_if_id_ex_mem_wb/estatisticas/num_jal
add wave -noupdate -label NUM_JALR /tb_if_id_ex_mem_wb/estatisticas/num_jalr
add wave -noupdate -label NUM_NOP /tb_if_id_ex_mem_wb/estatisticas/num_nop
add wave -noupdate -label NUM_HALT /tb_if_id_ex_mem_wb/estatisticas/num_halt
add wave -noupdate -label CPI_MEDIO /tb_if_id_ex_mem_wb/estatisticas/CPI_medio
TreeUpdate [SetDefaultTree]
WaveRestoreCursors
quietly wave cursor active 0
configure wave -namecolwidth 212
configure wave -valuecolwidth 74
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
WaveRestoreZoom {325077 ps} {14064242 ps}
