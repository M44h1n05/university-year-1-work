.data
  message: .string "\nLetter "

.text
  addi s0, zero, 'a'

  jal outputMessage
  jal outputChar

  addi s0, s0, 1

  jal outputMessage
  jal outputChar

  addi a7, zero, 10
  ecall

outputMessage:
  la a0, message
  addi a7, zero, 4
  ecall
  ret

outputChar:
  addi a7, zero, 11
  add a0, zero, s0
  ecall
  ret
