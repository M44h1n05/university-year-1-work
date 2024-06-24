.data

enterMsg1: .string "Please enter the last four digits of your student id \n"
enterMsg2: .string "Press enter between each digit \n"
enterMsg3: .string "Enter next digit \n"
enterMsg4: .string "The total sum of the digits is: "

.text

# output the initial instruction text to the console
addi a7, zero, 4
la a0, enterMsg1
ecall

###
addi a7, zero, 4
la a0, enterMsg2
ecall

# read an integer from keyboard input and store the input
addi a7, zero, 5
ecall
add s0, zero, a0


# output the text asking for the next digit to the console
# then receive the input, add to total

##
jal Enternum
##

jal Enternum
##
jal Enternum


####
addi a7, zero, 4
la a0, enterMsg4
ecall

add a0, s0, zero
addi a7, zero, 1
ecall


addi a7, zero, 10
ecall


# subroutine code
Enternum:
addi a7, zero, 4
la a0, enterMsg3
ecall

addi a7, zero, 5
ecall
add s0, s0, a0
ret

