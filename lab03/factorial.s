.globl factorial

.data
n: .word 8

.text
main:
    la t0, n
    lw a0, 0(t0)
    jal ra, factorial

    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit

factorial:

#BEGIN PROLOGUE
addi sp, sp, -8
sw s0, 0(sp)
sw ra, 4(sp)
#END PROLOGUE

beq x0, a0, base # n == 0 ? -> ret
mv s0, a0
addi a0, a0, -1
jal ra, factorial
mul s0, s0, a0

done:
    mv a0, s0
    j return


base:
    li a0, 1
    j return

return:
    #BEGIN EPILOGUE
    lw s0, 0(sp)
    lw ra, 4(sp)
    addi sp, sp, 8
    #END EPILOGUE
    ret
