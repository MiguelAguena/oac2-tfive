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
add wave -noupdate -radix hexadecimal -childformat {{/tb_if_id_swap_halt/fetch/ri_if(31) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(30) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(29) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(28) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(27) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(26) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(25) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(24) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(23) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(22) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(21) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(20) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(19) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(18) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(17) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(16) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(15) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(14) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(13) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(12) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(11) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(10) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(9) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(8) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(7) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(6) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(5) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(4) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(3) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(2) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(1) -radix hexadecimal} {/tb_if_id_swap_halt/fetch/ri_if(0) -radix hexadecimal}} -subitemconfig {/tb_if_id_swap_halt/fetch/ri_if(31) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(30) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(29) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(28) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(27) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(26) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(25) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(24) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(23) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(22) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(21) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(20) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(19) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(18) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(17) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(16) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(15) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(14) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(13) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(12) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(11) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(10) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(9) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(8) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(7) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(6) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(5) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(4) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(3) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(2) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(1) {-height 14 -radix hexadecimal} /tb_if_id_swap_halt/fetch/ri_if(0) {-height 14 -radix hexadecimal}} /tb_if_id_swap_halt/fetch/ri_if
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/fetch/PC_if
add wave -noupdate -divider -height 40 REGFILE
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/rf/clock
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/rf/RegWrite
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/rf/read_reg_rs1
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/rf/read_reg_rs2
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/rf/write_reg_rd
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/rf/data_in
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/rf/data_out_a
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/rf/data_out_b
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/rf/regs
add wave -noupdate -divider -height 40 DECODE
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/clock
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/BID
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/MemRead_ex
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/rd_ex
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/ula_ex
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/MemRead_mem
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/rd_mem
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/ula_mem
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/NPC_mem
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/RegWrite_wb
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/writedata_wb
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/rd_wb
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/ex_fw_A_Branch
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/ex_fw_B_Branch
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/id_Jump_PC
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/id_PC_src
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/id_hd_hazard
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/id_Branch_nop
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/rs1_id_ex
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/rs2_id_ex
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/BEX
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/COP_id
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/COP_ex
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/s_pc
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/s_instruction
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/rs2_id
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/rs1_id
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/rd_id
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/s_op
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/s_funct3
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/s_funct7
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/RegWrite_id
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/Memwrite_id
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/Memread_id
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/AluSrc_id
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/Branch
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/Jump
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/MemtoReg_id
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/RA_id
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/RB_id
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/Imed_id
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/PC_id_Plus4
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/ImmSrc
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/Aluop_id
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/s_id_Jump_PC
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/s_fwd_from_mem
add wave -noupdate -radix hexadecimal /tb_if_id_swap_halt/decode/s_fwd_from_wb
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6484 ps} 0}
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
WaveRestoreZoom {0 ps} {42 ns}
