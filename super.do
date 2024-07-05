onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/imem_init_file
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/dmem_init_file
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/clock
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/id_hd_hazard
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/id_PC_Src
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/id_Jump_PC
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/BID
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/Keep_simulating
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/MemRead_ex
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/rd_ex
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/ula_ex
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/MemRead_mem
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/ula_mem
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/RegWrite_wb
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/writedata_wb
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/rd_wb
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/ex_fw_A_Branch
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/ex_fw_B_Branch
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/rd_mem
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/NPC_mem
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/id_Branch_nop
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/rs1_id_ex
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/rs2_id_ex
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/COP_id
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/BEX
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/COP_ex
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/eof
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/BEX_Data
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/BEX_control
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/RA
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/RB
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/Imed
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/PC_id
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/reg_rs1
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/reg_rs2
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/reg_rd
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/Aluop
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/AluSrc
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/Memread
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/Memwrite
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/RegWrite
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/MemToReg
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/clock_period
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/C_FILE_NAME
add wave -noupdate -divider -height 40 {HAZARD UNIT}
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/hd/rd_id
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/hd/rd_ex
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/hd/rd_mem
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/hd/rd_wb
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/hd/pc
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/hd/RA_id
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/hd/RB_id
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/hd/op
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/hd/immediate
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/hd/MemRead_mem
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/hd/id_Jump_PC
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/hd/id_Branch_nop
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/hd/id_hd_hazard
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/hd/fwd_from_mem
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/hd/fwd_from_wb
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/hd/stall
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/hd/s_a
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/hd/s_b
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/hd/s_op
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/hd/s_res
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/hd/s_branching_a
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/hd/s_branching_b
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/hd/s_branching_op
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/hd/s_branching_zero
add wave -noupdate -divider -height 40 FETCH
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/fetch/imem_init_file
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/fetch/clock
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/fetch/id_hd_hazard
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/fetch/id_Branch_nop
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/fetch/id_PC_Src
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/fetch/id_Jump_PC
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/fetch/keep_simulating
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/fetch/BID
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/fetch/s_pc_out
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/fetch/s_pc_plus4
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/fetch/s_imem_out
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/fetch/s_instr
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/fetch/s_pc_in
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/fetch/s_pc_enable
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/fetch/s_halt
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/fetch/COP_if
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/fetch/ri_if
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/fetch/PC_if
add wave -noupdate -divider -height 40 BID
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {9562 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 354
configure wave -valuecolwidth 303
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
WaveRestoreZoom {0 ps} {105 ns}
