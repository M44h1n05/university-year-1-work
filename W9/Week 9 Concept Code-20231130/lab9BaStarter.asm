.data
enterNumMsg: .string "Please enter a whole number "
outputMsg1: .string " divided by "
outputMsg2: .string " gives remainder "

.text
	# output text to request a number
	addi a7, zero, 4
	la a0, enterNumMsg
	ecall

	# read an integer from keyboard and store in s0
	addi a7, zero, 5
	ecall
	add s0, zero, a0

	# output text to request a number
	addi a7, zero, 4
	la a0, enterNumMsg
	ecall

	# read an integer from keyboard and store in s1
	addi a7, zero, 5
	ecall
	add s1, zero, a0

	# find remainder after dividing s0 by s1 
	# and store in s2
	rem s2, s0, s1

	# output message
	add a0, s0, zero
	addi a7, zero, 1
	ecall

	addi a7, zero, 4
	la a0, outputMsg1
	ecall

	add a0, s1, zero
	addi a7, zero, 1
	ecall

	addi a7, zero, 4
	la a0, outputMsg2
	ecall

	add a0, s2, zero
	addi a7, zero, 1
	ecall

	# output a new line
	addi a7, zero, 11
	addi a0, zero, '\n'
	ecall

	# now do the same the other way round
	# find the remainder after dividing s1 by s0 
	# and store in s3
	rem s3, s1, s0

	# output message
	add a0, s1, zero
	addi a7, zero, 1
	ecall

	addi a7, zero, 4
	la a0, outputMsg1
	ecall

	add a0, s0, zero
	addi a7, zero, 1
	ecall

	addi a7, zero, 4
	la a0, outputMsg2
	ecall

	add a0, s3, zero
	addi a7, zero, 1
	ecall

exit:
	addi a7, zero, 10
	ecall