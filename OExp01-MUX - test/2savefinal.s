j Initial
j Initial
j Initial
add $t5, $zero, $zero
add $t5, $zero, $zero
add $t5, $zero, $zero
add $t5, $zero, $zero
add $t5, $zero, $zero
add $t5, $zero, $zero
add $t5, $zero, $zero
Initial:
add $t5, $zero, $zero
add $t3, $zero, $zero	// t3 is clock count
addi $s0, $zero, 1280 	// s0 is x address h500
addi $s1, $zero, 1792	// s1 is y address h700
addi $s2, $zero, 2048	// s2 is x of backet h800
addi $s7, $zero, 1536	// s7 is ps2 address h600
addi $t8,$zero,15		// t8 is score reg
addi $t9,$zero,2304		// t9 is addr of score reg
sw $t8,0($t9)	// store score
start:
add $t6,$t6,$zero
lw $t7, 0x0($s7)		        // t7 = ps2 value
lw $t0, 0x0($s0)		        // $zt0  = x value
lw $t1, 0x0($s1) 			// t1 = y value
addi $t6,$t3, -30
bne $t6,$zero, appledown
addi $t6, $t7, -7196		// t6 = ps2 - 1c1c (A)
beq $t6, $zero, Left	// if t6 == 0 go left
addi $t6, $t7, -8995  // t6 = ps2 - 2323 (D)
beq $t6, $zero, Right // if t6 == 0 go right
addi $t6, $t7, -7453  // t6 = ps2 - 1d1d (W)
beq $t6, $zero, Up // if t6 == 0 go up
addi $t6, $t7, -6939  // t6 = ps2 - 1b1b (S)
beq $t6, $zero, Down // if t6 == 0 go right
addi $t6, $t7, -8738 // t6 = ps2 - 1a1a(X)
beq $t6, $zero, BLeft // if t6 == 0 go right
addi $t6, $t7, -8481 // t6 = ps2 - 2121(C)
beq $t6, $zero, BRight // if t6 == 0 go right
appledown:
add $t6,$t6,$zero
addi $t3, $t3, 1		// count clock
addi $t6, $t3, -60	// every 60 cycle, y + 3
beq $t6, $zero, changey	// when t3 = 50
j start
BLeft:
add $t6,$t6,$zero
lw $t6,0($s2)
addi $t6,$t6, -3
sw $t6,0($s2)
j appledown
BRight:
add $t6,$t6,$zero
lw $t6,0($s2)
addi $t6,$t6, +3
sw $t6,0($s2)
j appledown
changey:
add $t6,$t6,$zero
addi $t1, $t1, 1 	// y+1
addi $t5,$t1,-400	// if t5(400) < t1(y) return 1
bne $t5,$zero,swy
addi $t8,$t8,4	// add score
add $t1,$zero,$zero	// clear y
sw $t8,0($t9)	// store score
swy:
sw $t1, 0($s1)   // sw y
add $t3, $zero, $zero
j start
Left:
add $t6,$t6,$zero
addi $t0, $t0, -5 // x - 5
sw $t0, 0 ($s0)  // sw x
j END
Right:
add $t6,$t6,$zero
addi $t0, $t0, 5 // x + 5
sw $t0, 0($s0)  // sw x
j END
Up:
add $t6,$t6,$zero
addi $t1, $t1, 5 // y + 5
sw $t1, 0($s1) // sw y
j END
Down:
add $t6,$t6,$zero
addi $t1, $t1, -5 // y-5
sw $t1, 0($s1) // y+5
END:
j start
