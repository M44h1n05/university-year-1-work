.data
message: .string "Hello all"
message2: .string "RISC-V"

.text
la a0, message
addi a7, zero, 4
ecall

la a0, message2
ecall
