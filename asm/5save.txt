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
addi $s4,$zero,0			// s4 is random num
sw $t8,0($t9)	// store score
start:					// set seed of random 
add $t6,$t6,$zero
addi $s4,$s4,7
addi $t6,$s4,-490
bne $t6,$zero,next
addi $s4,$zero,0
next:
lw $t7, 0($s7)		        // t7 = ps2 value
lw $t0, 0($s0)		        // t0  = x value
lw $t1, 0($s1) 			// t1 = y value
lw $t2, 0($s2)			// t2 = x backet
addi $t6,$t3, -10									// clock
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
addi $t3, $t3, 1									// count clock
addi $t6, $t3, -30	// every 30 cycle, y + 3
beq $t6, $zero, changey	// when t3 = 30
j start
BLeft:
add $t6,$t6,$zero
lw $t6,0($s2)
addi $t6,$t6, -1
sw $t6,0($s2)
j appledown
BRight:
add $t6,$t6,$zero
lw $t6,0($s2)
addi $t6,$t6, +1
sw $t6,0($s2)
j appledown
changey:
add $t6,$t6,$zero
add $t3, $zero, $zero	// clear clock
addi $t1, $t1, 1 		// y+1
addi $t5,$t1,-400		// if t1 == 400
bne $t5,$zero,swy		// y != 400, j swy
addi $t5,$t2,-30
slt   $t5,$t5,$t0		// t2(bx) > ax t0
beq $t5,$zero,swy
addi $t5,$t2,110
slt    $t5,$t0,$t5		// bx + 150 > ax + 100
beq $t5,$zero,swy
add $t6,$t6,$zero
lw $t8,0($t9)
addi $t8,$t8,4			// add score
add $t1,$zero,$zero		// clear y
random:
add $t0 ,$t0, $s4			// set random x
addi	$t6,$zero,540
slt	$t6,$t6,$t0
bne $t6,$zero,randomnext
addi $t0,$t0,-350
randomnext:
sw $t1, 0($s1) // sw y
sw $t0, 0 ($s0)  // sw x
add $t6,$t6,$zero
sw $t8,0($t9)			// store score
swy:
add $t6,$t6,$zero
sw $t1, 0($s1)   // sw y
j start
Left:
add $t6,$t6,$zero
addi $t0, $t0, -5 // x - 5
sw $t0, 0 ($s0)  // sw x
j start
Right:
add $t6,$t6,$zero
addi $t0, $t0, 5 // x + 5
sw $t0, 0($s0)  // sw x
j changey
Up:
add $t6,$t6,$zero
addi $t1, $t1, 5 // y + 5
sw $t1, 0($s1) // sw y
j appledown
Down:
add $t6,$t6,$zero
addi $t1, $t1, -5 // y-5
sw $t1, 0($s1) // y+5
END:
j appledown
