.text
main:
    addi tp, zero, 0 ## initial position for the data vector
    addi t0, zero, 10 ## data vector size
    addi t4, zero, 200 ## moving our stack pointer to the last position valid
    jal zero, sort
sort: 	 
    addi t4,t4, -36
    sw a5, 0(t4)
    sw a6, 4(t4)
    sw a7, 8(t4)
    sw s2,12(t4)
    sw s3,16(t4)
    sw s4,20(t4)
    sw s8,24(t4)
    sw s9,28(t4)
    sw t6,32(t4)
    add s2, zero, tp
    add s4, zero, t0
    add s3, zero, zero 
for1tst: 
    slt s0, s3, s4
    beq s0, zero, exit1
    addi a7, s3, -1
for2tst:
    slti s0, a7, 0
    bne s0, zero, exit2
    slli a5, a7, 2
    add a6,s2, a5
    lw s8, 0(a6)
    lw s9, 4(a6)
    slt s0, s9, s8
    beq s0, zero, exit2
    add tp, zero, s2
    add t0, zero, a7
    jal zero, swap
ret:
    addi a7, a7, -1
    jal zero, for2tst
exit2:   
    addi s3 , s3, 1
    jal zero, for1tst
exit1:   
    lw a5, 0(t4)
    lw a6, 4(t4)
    lw a7, 8(t4)
    lw s2,12(t4)
    lw s3,16(t4)
    lw s4,20(t4)
    lw s8,24(t4)
    lw s9,28(t4)
    lw t6,32(t4)
    addi t4,t4, 36
    halt
swap: 
    addi t4,t4, -12
    sw sp, 0(t4)
    sw a5, 4(t4)
    sw a6, 8(t4)
    slli sp, t0,2
    add sp, tp,sp
    lw a5, 0(sp)
    lw a6, 4(sp)
    sw a6, 0(sp)
    sw a5, 4(sp)
    lw sp, 0(t4)
    lw a5, 4(t4)
    lw a6, 8(t4)
    addi t4,t4, 12
    jal zero, ret