# Store decimal values 42 and 9 in registers s1 and s2 respectively
addi s1, zero, 42
addi s2, zero, 9

# Add them together and store the result in s3
add s3, s1, s2

# Add 10 to the result and store back in s3
addi s3, s3, 10
