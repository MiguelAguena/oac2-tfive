onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color RED -itemcolor red -label CLOCK -radix hexadecimal /fd_if_id_ex/clock
add wave -noupdate -color gold -itemcolor gold -label {COP IF} -radix hexadecimal /fd_if_id_ex/fetch/COP_if
add wave -noupdate -color gold -itemcolor gold -label {COP ID} -radix hexadecimal /fd_if_id_ex/COP_id
add wave -noupdate -color gold -itemcolor gold -label {COP EX} -radix hexadecimal /fd_if_id_ex/COP_ex
add wave -noupdate -color Cyan -itemcolor cyan -label BID -radix hexadecimal /fd_if_id_ex/fetch/s_BID
add wave -noupdate -color CYAN -itemcolor CYAN -label {RI IF} -radix hexadecimal /fd_if_id_ex/fetch/ri_if
add wave -noupdate -color cyan -itemcolor cyan -label {PC Id} -radix hexadecimal /fd_if_id_ex/fetch/s_pc
add wave -noupdate -color {Green Yellow} -itemcolor {Green Yellow} -label BEX -radix hexadecimal /fd_if_id_ex/BEX
add wave -noupdate -color {Green Yellow} -itemcolor {Green Yellow} -label MemToReg -radix hexadecimal /fd_if_id_ex/MemToReg
add wave -noupdate -color {Green Yellow} -itemcolor {Green Yellow} -label RegWrite -radix hexadecimal /fd_if_id_ex/RegWrite
add wave -noupdate -color {Green Yellow} -itemcolor {Green Yellow} -label MemWrite -radix hexadecimal /fd_if_id_ex/Memwrite
add wave -noupdate -color {Green Yellow} -itemcolor {Green Yellow} -label AluSrc -radix hexadecimal /fd_if_id_ex/AluSrc
add wave -noupdate -color {Green Yellow} -itemcolor {Green Yellow} -label {Reg Rd} -radix hexadecimal /fd_if_id_ex/reg_rd
add wave -noupdate -color {Green Yellow} -itemcolor {Green Yellow} -label {Reg Rs1} -radix hexadecimal /fd_if_id_ex/reg_rs1
add wave -noupdate -color {Green Yellow} -itemcolor {Green Yellow} -label {Reg Rs2} -radix hexadecimal /fd_if_id_ex/reg_rs2
add wave -noupdate -color {Green Yellow} -itemcolor {Green Yellow} -label {PC id} -radix hexadecimal /fd_if_id_ex/PC_id
add wave -noupdate -color {Green Yellow} -itemcolor {Green Yellow} -label Imed -radix hexadecimal /fd_if_id_ex/Imed
add wave -noupdate -color {Green Yellow} -itemcolor {Green Yellow} -label RB -radix hexadecimal /fd_if_id_ex/RB
add wave -noupdate -color {Green Yellow} -itemcolor {Green Yellow} -label RA -radix hexadecimal /fd_if_id_ex/RA
add wave -noupdate -color Magenta -itemcolor Plum -label {ID HD HAZARD} -radix hexadecimal /fd_if_id_ex/id_hd_hazard
add wave -noupdate -color Magenta -itemcolor PLUM -label {ID BRANCH NOP} -radix hexadecimal /fd_if_id_ex/id_Branch_nop
add wave -noupdate -color Magenta -itemcolor PLUM -label {PARE IF} -radix hexadecimal /fd_if_id_ex/fetch/s_halt
add wave -noupdate -color Magenta -itemcolor PLUM -label {KEEP SIMULATING} -radix hexadecimal /fd_if_id_ex/Keep_simulating
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {174849 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 352
configure wave -valuecolwidth 39
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
WaveRestoreZoom {0 ps} {178626 ps}
