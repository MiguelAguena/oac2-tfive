onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider -height 40 CTRL
add wave -noupdate -radix hexadecimal /fd_if_id_ex/fetch/COP_if
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/COP_id
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/COP_mem
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/COP_ex
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/COP_ex
add wave -noupdate -divider -height 40 IF
add wave -noupdate -color Magenta -radix hexadecimal /fd_if_id_ex/fetch/clock
add wave -noupdate -radix hexadecimal /fd_if_id_ex/fetch/id_hd_hazard
add wave -noupdate -radix hexadecimal /fd_if_id_ex/fetch/id_Branch_nop
add wave -noupdate -radix hexadecimal /fd_if_id_ex/fetch/id_PC_Src
add wave -noupdate -radix hexadecimal /fd_if_id_ex/fetch/id_Jump_PC
add wave -noupdate -radix hexadecimal /fd_if_id_ex/fetch/keep_simulating
add wave -noupdate -radix hexadecimal /fd_if_id_ex/fetch/BID
add wave -noupdate -radix hexadecimal /fd_if_id_ex/fetch/s_pc_plus4
add wave -noupdate -radix hexadecimal /fd_if_id_ex/fetch/s_imem_out
add wave -noupdate -radix hexadecimal /fd_if_id_ex/fetch/s_instr
add wave -noupdate -radix hexadecimal /fd_if_id_ex/fetch/s_pc
add wave -noupdate -radix hexadecimal /fd_if_id_ex/fetch/s_pc_enable
add wave -noupdate -radix hexadecimal /fd_if_id_ex/fetch/s_halt
add wave -noupdate -radix hexadecimal /fd_if_id_ex/fetch/s_BID
add wave -noupdate -radix hexadecimal /fd_if_id_ex/fetch/ri_if
add wave -noupdate -radix hexadecimal /fd_if_id_ex/fetch/PC_if
add wave -noupdate -radix hexadecimal /fd_if_id_ex/fetch/wait_bit
add wave -noupdate -divider -height 40 ID
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/BID
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/MemRead_ex
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/rd_ex
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/ula_ex
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/MemRead_mem
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/rd_mem
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/ula_mem
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/NPC_mem
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/RegWrite_wb
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/writedata_wb
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/rd_wb
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/ex_fw_A_Branch
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/ex_fw_B_Branch
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/id_Jump_PC
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/id_PC_src
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/id_hd_hazard
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/id_Branch_nop
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/rs1_id_ex
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/rs2_id_ex
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/BEX
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/s_pc
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/s_instruction
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/rs2_id
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/rs1_id
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/rd_id
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/s_op
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/s_funct3
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/s_funct7
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/RegWrite_id
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/Memwrite_id
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/Memread_id
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/AluSrc_id
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/Branch
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/Jump
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/s_id_hd_hazard
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/MemtoReg_id
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/RA_id
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/RB_id
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/Imed_id
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/PC_id_Plus4
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/ImmSrc
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/Aluop_id
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/s_id_Jump_PC
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/s_RA
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/s_RB
add wave -noupdate -radix hexadecimal /fd_if_id_ex/decode/s_COP_id
add wave -noupdate -divider -height 40 EX
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/clock
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/BEX
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/ula_mem
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/rs1_id_ex
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/rs2_id_ex
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/MemRead_mem
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/RegWrite_mem
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/rd_mem
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/RegWrite_wb
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/rd_wb
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/writedata_wb
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/Memval_mem
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/MemRead_ex
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/rd_ex
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/ULA_ex
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/ex_fw_A_Branch
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/ex_fw_B_Branch
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/BMEM
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/s_rd_ex
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/s_rs1_ex
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/s_rs2_ex
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/ula_a
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/ula_b
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/s_immed
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/s_RB
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/s_RA
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/s_pcPlus4
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/s_ULA
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/s_dado_arma
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/s_fw_a
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/s_fw_b
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/s_ula_a
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/s_ula_b
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/s_MemToReg
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/s_aluSrc
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/s_aluOp
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/s_Memread
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/s_RegWrite
add wave -noupdate -radix hexadecimal /fd_if_id_ex/executa/s_MemWrite
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {27924 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 342
configure wave -valuecolwidth 323
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
WaveRestoreZoom {0 ps} {157500 ps}
