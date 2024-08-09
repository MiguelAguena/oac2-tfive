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
add wave -noupdate -height 40 -expand -group {MEM FILE} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/address_bits
add wave -noupdate -height 40 -expand -group {MEM FILE} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/size
add wave -noupdate -height 40 -expand -group {MEM FILE} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_ram_init_file
add wave -noupdate -height 40 -expand -group {MEM FILE} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/clock
add wave -noupdate -height 40 -expand -group {MEM FILE} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/write
add wave -noupdate -height 40 -expand -group {MEM FILE} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/address
add wave -noupdate -height 40 -expand -group {MEM FILE} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_in
add wave -noupdate -height 40 -expand -group {MEM FILE} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_out
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(250)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(249)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(248)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(247)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(246)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(245)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(244)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(243)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(242)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(241)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(240)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(239)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(238)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(237)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(236)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(235)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(234)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(233)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(232)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(231)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(230)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(229)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(228)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(227)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(226)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(225)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(224)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(223)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(222)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(221)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(220)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(219)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(218)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(217)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(216)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(215)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(214)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(213)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(212)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(211)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(210)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(209)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(208)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(207)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(206)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(205)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(204)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(203)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(202)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(201)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(200)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(199)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(198)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(197)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(196)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(195)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(194)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(193)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(192)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(191)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM pilha} -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/inst_mem/data_memory(190)
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM Dados} -radix decimal /tb_if_id_ex_mem_wb/memoria/inst_mem/W10
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM Dados} -radix decimal /tb_if_id_ex_mem_wb/memoria/inst_mem/W9
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM Dados} -radix decimal /tb_if_id_ex_mem_wb/memoria/inst_mem/W8
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM Dados} -radix decimal /tb_if_id_ex_mem_wb/memoria/inst_mem/W7
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM Dados} -radix decimal /tb_if_id_ex_mem_wb/memoria/inst_mem/W6
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM Dados} -radix decimal /tb_if_id_ex_mem_wb/memoria/inst_mem/W4001
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM Dados} -radix decimal /tb_if_id_ex_mem_wb/memoria/inst_mem/W4
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM Dados} -radix decimal /tb_if_id_ex_mem_wb/memoria/inst_mem/W3
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM Dados} -radix decimal /tb_if_id_ex_mem_wb/memoria/inst_mem/W2
add wave -noupdate -height 40 -expand -group {MEM FILE} -height 40 -expand -group {MEM Dados} -radix decimal /tb_if_id_ex_mem_wb/memoria/inst_mem/W1
add wave -noupdate -height 40 -expand -group {REG FILE} -color red -itemcolor red -radix hexadecimal /tb_if_id_ex_mem_wb/decode/rf/clock
add wave -noupdate -height 40 -expand -group {REG FILE} -radix hexadecimal /tb_if_id_ex_mem_wb/decode/rf/RegWrite
add wave -noupdate -height 40 -expand -group {REG FILE} -radix hexadecimal /tb_if_id_ex_mem_wb/decode/rf/read_reg_rs1
add wave -noupdate -height 40 -expand -group {REG FILE} -radix hexadecimal /tb_if_id_ex_mem_wb/decode/rf/read_reg_rs2
add wave -noupdate -height 40 -expand -group {REG FILE} -radix hexadecimal /tb_if_id_ex_mem_wb/decode/rf/write_reg_rd
add wave -noupdate -height 40 -expand -group {REG FILE} -radix hexadecimal /tb_if_id_ex_mem_wb/decode/rf/data_in
add wave -noupdate -height 40 -expand -group {REG FILE} -radix hexadecimal /tb_if_id_ex_mem_wb/decode/rf/data_out_a
add wave -noupdate -height 40 -expand -group {REG FILE} -radix hexadecimal /tb_if_id_ex_mem_wb/decode/rf/data_out_b
add wave -noupdate -height 40 -expand -group {REG FILE} -radix hexadecimal -childformat {{/tb_if_id_ex_mem_wb/decode/rf/regs(31) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(30) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(29) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(28) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(27) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(26) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(25) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(24) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(23) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(22) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(21) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(20) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(19) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(18) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(17) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(16) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(15) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(14) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(13) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(12) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(11) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(10) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(9) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(8) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(7) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(6) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(5) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(4) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(3) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(2) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(1) -radix hexadecimal} {/tb_if_id_ex_mem_wb/decode/rf/regs(0) -radix hexadecimal}} -expand -subitemconfig {/tb_if_id_ex_mem_wb/decode/rf/regs(31) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(30) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(29) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(28) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(27) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(26) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(25) {-color red -height 15 -itemcolor red -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(24) {-color red -height 15 -itemcolor red -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(23) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(22) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(21) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(20) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(19) {-color cyan -height 15 -itemcolor cyan -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(18) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(17) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(16) {-color blue -height 15 -itemcolor blue -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(15) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(14) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(13) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(12) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(11) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(10) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(9) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(8) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(7) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(6) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(5) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(4) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(3) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(2) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(1) {-height 15 -radix hexadecimal} /tb_if_id_ex_mem_wb/decode/rf/regs(0) {-height 15 -radix hexadecimal}} /tb_if_id_ex_mem_wb/decode/rf/regs
add wave -noupdate -height 40 -expand -group FETCH -radix hexadecimal /tb_if_id_ex_mem_wb/fetch/imem_init_file
add wave -noupdate -height 40 -expand -group FETCH -radix hexadecimal /tb_if_id_ex_mem_wb/fetch/clock
add wave -noupdate -height 40 -expand -group FETCH -radix hexadecimal /tb_if_id_ex_mem_wb/fetch/id_hd_hazard
add wave -noupdate -height 40 -expand -group FETCH -radix hexadecimal /tb_if_id_ex_mem_wb/fetch/id_Branch_nop
add wave -noupdate -height 40 -expand -group FETCH -radix hexadecimal /tb_if_id_ex_mem_wb/fetch/id_PC_Src
add wave -noupdate -height 40 -expand -group FETCH -radix hexadecimal /tb_if_id_ex_mem_wb/fetch/id_Jump_PC
add wave -noupdate -height 40 -expand -group FETCH -radix hexadecimal /tb_if_id_ex_mem_wb/fetch/keep_simulating
add wave -noupdate -height 40 -expand -group FETCH -radix hexadecimal /tb_if_id_ex_mem_wb/fetch/BID
add wave -noupdate -height 40 -expand -group FETCH -radix hexadecimal /tb_if_id_ex_mem_wb/fetch/COP_if_out
add wave -noupdate -height 40 -expand -group FETCH -radix hexadecimal /tb_if_id_ex_mem_wb/fetch/s_pc_plus4
add wave -noupdate -height 40 -expand -group FETCH -radix hexadecimal /tb_if_id_ex_mem_wb/fetch/s_imem_out
add wave -noupdate -height 40 -expand -group FETCH -radix hexadecimal /tb_if_id_ex_mem_wb/fetch/s_instr
add wave -noupdate -height 40 -expand -group FETCH -radix hexadecimal /tb_if_id_ex_mem_wb/fetch/s_pc
add wave -noupdate -height 40 -expand -group FETCH -radix hexadecimal /tb_if_id_ex_mem_wb/fetch/s_pc_enable
add wave -noupdate -height 40 -expand -group FETCH -radix hexadecimal /tb_if_id_ex_mem_wb/fetch/s_halt
add wave -noupdate -height 40 -expand -group FETCH -radix hexadecimal /tb_if_id_ex_mem_wb/fetch/s_BID
add wave -noupdate -height 40 -expand -group FETCH -radix hexadecimal /tb_if_id_ex_mem_wb/fetch/COP_if
add wave -noupdate -height 40 -expand -group FETCH -radix hexadecimal /tb_if_id_ex_mem_wb/fetch/ri_if
add wave -noupdate -height 40 -expand -group FETCH -radix hexadecimal /tb_if_id_ex_mem_wb/fetch/PC_if
add wave -noupdate -height 40 -expand -group FETCH -radix hexadecimal /tb_if_id_ex_mem_wb/fetch/wait_bit
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/clock
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/BID
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/MemRead_ex
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/rd_ex
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/ula_ex
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/MemRead_mem
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/rd_mem
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/ula_mem
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/NPC_mem
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/RegWrite_wb
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/writedata_wb
add wave -noupdate -height 40 -expand -group DECODE -color Coral -itemcolor coral -radix hexadecimal /tb_if_id_ex_mem_wb/decode/rd_wb
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/ex_fw_A_Branch
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/ex_fw_B_Branch
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/id_Jump_PC
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/id_PC_src
add wave -noupdate -height 40 -expand -group DECODE -color cyan -itemcolor cyan -radix hexadecimal /tb_if_id_ex_mem_wb/decode/id_hd_hazard
add wave -noupdate -height 40 -expand -group DECODE -color cyan -itemcolor cyan -radix hexadecimal /tb_if_id_ex_mem_wb/decode/id_Branch_nop
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/rs1_id_ex
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/rs2_id_ex
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/BEX
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/COP_id
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/COP_ex
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/s_pc
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/s_instruction
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/rs2_id
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/rs1_id
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/rd_id
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/s_op
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/s_funct3
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/s_funct7
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/RegWrite_id
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/Memwrite_id
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/Memread_id
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/AluSrc_id
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/Branch
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/Jump
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/s_id_hd_hazard
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/MemtoReg_id
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/RA_id
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/RB_id
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/Imed_id
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/PC_id_Plus4
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/ImmSrc
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/Aluop_id
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/s_id_Jump_PC
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/s_RA
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/s_RB
add wave -noupdate -height 40 -expand -group DECODE -radix hexadecimal /tb_if_id_ex_mem_wb/decode/s_COP_ex
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/clock
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/clock
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/BEX
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/COP_ex
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/ula_mem
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/rs1_id_ex
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/rs2_id_ex
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/MemRead_mem
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/rd_wb
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/RegWrite_mem
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/rd_mem
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/RegWrite_wb
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/writedata_wb
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/Memval_mem
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/MemRead_ex
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/rd_ex
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/ULA_ex
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/ex_fw_A_Branch
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/ex_fw_B_Branch
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/BMEM
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/COP_mem
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_rd_ex
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_rs1_ex
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_rs2_ex
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/ula_a
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/ula_b
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_immed
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_RB
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_RA
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_pcPlus4
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_ULA
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_dado_arma
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_fw_a
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_fw_b
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_ula_a
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_ula_b
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_MemToReg
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_aluSrc
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_aluOp
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_Memread
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_RegWrite
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_MemWrite
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/BEX
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/COP_ex
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/ula_mem
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/rs1_id_ex
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/rs2_id_ex
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/MemRead_mem
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/RegWrite_mem
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/rd_mem
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/RegWrite_wb
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/rd_wb
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/writedata_wb
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/Memval_mem
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/MemRead_ex
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/rd_ex
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/ULA_ex
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/ex_fw_A_Branch
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/ex_fw_B_Branch
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/BMEM
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/COP_mem
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_rd_ex
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_rs1_ex
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_rs2_ex
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/ula_a
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/ula_b
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_immed
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_RB
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_RA
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_pcPlus4
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_ULA
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_dado_arma
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_fw_a
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_fw_b
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_ula_a
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_ula_b
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_MemToReg
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_aluSrc
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_aluOp
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_Memread
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_RegWrite
add wave -noupdate -height 40 -expand -group EXECUTE -radix hexadecimal /tb_if_id_ex_mem_wb/executa/s_MemWrite
add wave -noupdate -height 40 -expand -group MEM -radix hexadecimal -childformat {{/tb_if_id_ex_mem_wb/memoria/dmem_init_file(1) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/dmem_init_file(2) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/dmem_init_file(3) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/dmem_init_file(4) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/dmem_init_file(5) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/dmem_init_file(6) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/dmem_init_file(7) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/dmem_init_file(8) -radix hexadecimal}} -subitemconfig {/tb_if_id_ex_mem_wb/memoria/dmem_init_file(1) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/dmem_init_file(2) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/dmem_init_file(3) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/dmem_init_file(4) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/dmem_init_file(5) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/dmem_init_file(6) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/dmem_init_file(7) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/dmem_init_file(8) {-height 14 -radix hexadecimal}} /tb_if_id_ex_mem_wb/memoria/dmem_init_file
add wave -noupdate -height 40 -expand -group MEM -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/clock
add wave -noupdate -height 40 -expand -group MEM -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/BMEM
add wave -noupdate -height 40 -expand -group MEM -color cyan -itemcolor cyan -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/COP_mem
add wave -noupdate -height 40 -expand -group MEM -radix hexadecimal -childformat {{/tb_if_id_ex_mem_wb/memoria/BWB(103) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(102) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(101) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(100) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(99) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(98) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(97) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(96) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(95) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(94) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(93) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(92) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(91) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(90) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(89) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(88) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(87) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(86) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(85) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(84) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(83) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(82) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(81) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(80) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(79) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(78) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(77) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(76) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(75) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(74) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(73) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(72) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(71) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(70) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(69) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(68) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(67) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(66) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(65) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(64) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(63) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(62) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(61) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(60) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(59) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(58) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(57) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(56) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(55) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(54) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(53) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(52) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(51) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(50) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(49) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(48) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(47) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(46) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(45) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(44) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(43) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(42) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(41) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(40) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(39) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(38) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(37) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(36) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(35) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(34) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(33) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(32) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(31) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(30) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(29) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(28) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(27) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(26) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(25) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(24) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(23) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(22) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(21) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(20) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(19) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(18) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(17) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(16) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(15) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(14) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(13) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(12) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(11) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(10) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(9) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(8) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(7) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(6) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(5) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(4) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(3) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(2) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(1) -radix hexadecimal} {/tb_if_id_ex_mem_wb/memoria/BWB(0) -radix hexadecimal}} -subitemconfig {/tb_if_id_ex_mem_wb/memoria/BWB(103) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(102) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(101) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(100) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(99) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(98) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(97) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(96) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(95) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(94) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(93) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(92) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(91) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(90) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(89) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(88) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(87) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(86) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(85) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(84) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(83) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(82) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(81) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(80) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(79) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(78) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(77) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(76) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(75) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(74) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(73) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(72) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(71) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(70) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(69) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(68) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(67) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(66) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(65) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(64) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(63) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(62) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(61) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(60) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(59) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(58) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(57) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(56) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(55) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(54) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(53) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(52) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(51) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(50) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(49) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(48) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(47) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(46) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(45) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(44) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(43) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(42) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(41) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(40) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(39) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(38) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(37) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(36) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(35) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(34) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(33) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(32) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(31) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(30) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(29) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(28) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(27) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(26) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(25) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(24) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(23) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(22) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(21) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(20) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(19) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(18) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(17) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(16) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(15) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(14) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(13) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(12) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(11) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(10) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(9) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(8) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(7) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(6) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(5) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(4) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(3) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(2) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(1) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/memoria/BWB(0) {-height 14 -radix hexadecimal}} /tb_if_id_ex_mem_wb/memoria/BWB
add wave -noupdate -height 40 -expand -group MEM -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/COP_wb
add wave -noupdate -height 40 -expand -group MEM -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/RegWrite_mem
add wave -noupdate -height 40 -expand -group MEM -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/MemRead_mem
add wave -noupdate -height 40 -expand -group MEM -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/MemWrite_mem
add wave -noupdate -height 40 -expand -group MEM -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/rd_mem
add wave -noupdate -height 40 -expand -group MEM -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/ula_mem
add wave -noupdate -height 40 -expand -group MEM -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/NPC_mem
add wave -noupdate -height 40 -expand -group MEM -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/Memval_mem
add wave -noupdate -height 40 -expand -group MEM -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/s_rd_ex
add wave -noupdate -height 40 -expand -group MEM -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/s_rs1_ex
add wave -noupdate -height 40 -expand -group MEM -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/s_rs2_ex
add wave -noupdate -height 40 -expand -group MEM -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/s_pcPlus4
add wave -noupdate -height 40 -expand -group MEM -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/s_ULA
add wave -noupdate -height 40 -expand -group MEM -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/s_dado_arma
add wave -noupdate -height 40 -expand -group MEM -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/s_memval_mem
add wave -noupdate -height 40 -expand -group MEM -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/s_MemToReg
add wave -noupdate -height 40 -expand -group MEM -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/s_Memread
add wave -noupdate -height 40 -expand -group MEM -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/s_RegWrite
add wave -noupdate -height 40 -expand -group MEM -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/s_MemWrite
add wave -noupdate -height 40 -expand -group MEM -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/s_write
add wave -noupdate -height 40 -expand -group MEM -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/s_read
add wave -noupdate -height 40 -expand -group MEM -radix hexadecimal /tb_if_id_ex_mem_wb/memoria/s_mem_out
add wave -noupdate -height 40 -expand -group WRITEBACK -radix hexadecimal /tb_if_id_ex_mem_wb/writeback/BWB
add wave -noupdate -height 40 -expand -group WRITEBACK -radix hexadecimal /tb_if_id_ex_mem_wb/writeback/COP_wb
add wave -noupdate -height 40 -expand -group WRITEBACK -radix hexadecimal /tb_if_id_ex_mem_wb/writeback/writedata_wb
add wave -noupdate -height 40 -expand -group WRITEBACK -radix hexadecimal /tb_if_id_ex_mem_wb/writeback/rd_wb
add wave -noupdate -height 40 -expand -group WRITEBACK -radix hexadecimal /tb_if_id_ex_mem_wb/writeback/RegWrite_wb
add wave -noupdate -height 40 -expand -group WRITEBACK -radix hexadecimal /tb_if_id_ex_mem_wb/writeback/s_MemtoReg_wb
add wave -noupdate -height 40 -expand -group WRITEBACK -radix hexadecimal /tb_if_id_ex_mem_wb/writeback/s_RegWrite_wb
add wave -noupdate -height 40 -expand -group WRITEBACK -radix hexadecimal /tb_if_id_ex_mem_wb/writeback/s_NPC_wb
add wave -noupdate -height 40 -expand -group WRITEBACK -radix hexadecimal /tb_if_id_ex_mem_wb/writeback/s_ULA_wb
add wave -noupdate -height 40 -expand -group WRITEBACK -radix hexadecimal /tb_if_id_ex_mem_wb/writeback/s_Memval_wb
add wave -noupdate -height 40 -expand -group WRITEBACK -radix hexadecimal /tb_if_id_ex_mem_wb/writeback/s_rd_wb
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/clock
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/rd_ex
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/rd_mem
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/rd_wb
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/pc
add wave -noupdate -height 40 -expand -group HAZARD -color GOLD -itemcolor GOLD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/rs1_id
add wave -noupdate -height 40 -expand -group HAZARD -color GOLD -itemcolor GOLD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/rs2_id
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/rd_id
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/RA_id
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/RB_id
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/alu_mem
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/alu_ex
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/NPC_mem
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/writedata_wb
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/immediate
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/op
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/funct3
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/MemRead_mem
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/MemRead_ex
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/RegWrite_wb
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/Jump
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/Branch
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/ex_fw_A_Branch
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/ex_fw_B_Branch
add wave -noupdate -height 40 -expand -group HAZARD -color cyan -itemcolor cyan -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/id_hd_hazard
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/id_PC_src
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/id_Jump_PC
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/id_Branch_nop
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/RA_out
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/RB_out
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/s_a
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/s_b
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/s_alu_target_op
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/s_target_res
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/s_id_hd_hazard_rs1
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/s_id_hd_hazard_rs2
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/s_branching_a
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/s_branching_b
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/s_alu_branching_op
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/s_branching_zero
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/s_jump
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/s_branching_res
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/s_RA
add wave -noupdate -height 40 -expand -group HAZARD -radix hexadecimal /tb_if_id_ex_mem_wb/decode/hd/s_RB
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/imem_init_file
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal -childformat {{/tb_if_id_ex_mem_wb/dmem_init_file(1) -radix hexadecimal} {/tb_if_id_ex_mem_wb/dmem_init_file(2) -radix hexadecimal} {/tb_if_id_ex_mem_wb/dmem_init_file(3) -radix hexadecimal} {/tb_if_id_ex_mem_wb/dmem_init_file(4) -radix hexadecimal} {/tb_if_id_ex_mem_wb/dmem_init_file(5) -radix hexadecimal} {/tb_if_id_ex_mem_wb/dmem_init_file(6) -radix hexadecimal} {/tb_if_id_ex_mem_wb/dmem_init_file(7) -radix hexadecimal} {/tb_if_id_ex_mem_wb/dmem_init_file(8) -radix hexadecimal}} -subitemconfig {/tb_if_id_ex_mem_wb/dmem_init_file(1) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/dmem_init_file(2) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/dmem_init_file(3) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/dmem_init_file(4) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/dmem_init_file(5) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/dmem_init_file(6) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/dmem_init_file(7) {-height 14 -radix hexadecimal} /tb_if_id_ex_mem_wb/dmem_init_file(8) {-height 14 -radix hexadecimal}} /tb_if_id_ex_mem_wb/dmem_init_file
add wave -noupdate -height 40 -expand -group EXTERNAL -color red -radix hexadecimal /tb_if_id_ex_mem_wb/clock
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/id_hd_hazard
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/id_Branch_nop
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/id_PC_Src
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/id_Jump_PC
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/BID
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/BEX
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/BMEM
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/BWB
add wave -noupdate -height 40 -expand -group EXTERNAL -color MAGENTA -height 50 -radix hexadecimal /tb_if_id_ex_mem_wb/COP_id
add wave -noupdate -height 40 -expand -group EXTERNAL -color MAGENTA -height 50 -radix hexadecimal /tb_if_id_ex_mem_wb/COP_ex
add wave -noupdate -height 40 -expand -group EXTERNAL -color MAGENTA -height 50 -radix hexadecimal /tb_if_id_ex_mem_wb/COP_mem
add wave -noupdate -height 40 -expand -group EXTERNAL -color MAGENTA -height 50 -radix hexadecimal /tb_if_id_ex_mem_wb/COP_wb
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/writedata_wb
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/Memval_mem
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/rd_wb
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/RegWrite_wb
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/ula_mem
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/NPC_mem
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/MemRead_ex
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/rd_ex
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/rs1_id_ex
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/rs2_id_ex
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/ula_ex
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/ex_fw_A_branch
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/ex_fw_B_branch
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/MemRead_mem
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/MemWrite_mem
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/RegWrite_mem
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/rd_mem
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/keep_simulating
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/eof
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/clock_period
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/C_FILE_NAME_indices
add wave -noupdate -height 40 -expand -group EXTERNAL -radix hexadecimal /tb_if_id_ex_mem_wb/C_FILE_NAME_perfil
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {29175 ps} 0}
quietly wave cursor active 1
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
WaveRestoreZoom {17370 ps} {133172 ps}
