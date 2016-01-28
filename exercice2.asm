.text
 	li $t5,8
	move $gp,$sp
	sub $sp,$sp,$t5
	li $t4,2
	sw $t4,0($gp)
	mul $t1,$t4,$t4
	sw $t1,-4($gp)
	lw $t2,-4($gp)
	move $a0,$t2
	jal print_int
	
	# quitter le pogramme
	li $v0,10
	syscall 
	
print_int:
      #affichage
      li $v0,1
      syscall
      jr $ra
      

	
