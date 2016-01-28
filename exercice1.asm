.text 
      li $t0,4
      addi $t0,$t0,6
      
      li $t1,2
      li $t2,21
      mul $t1,$t1,$t2
      
      li $t2, 7
      srl $t2,$t2,1
      addi $t2,$t2,4
      
      
      li $t3,10
      li $t4,5
      div $t4,$t3,$t4
      li $t3,6
      mul $t3,$t3,$t4
      li $t4,3
      sub $t3,$t4,$t3
      
      # deplace les valeus dans un autre registre
      move $a0,$t3
      #jal print_int
      
      #les booleen
      li $s0,0
      li $s1,1
      
      and $t5, $s0,$s1
        
      li $t4,3
      li $t5,4
      bne $t4,$t3,saut
      li $t5,10
      sll $t5,$t5,1
      
      
      li $t1,2
      li $t2,3
      beq $t1,$t2,fin
      
      mul $t4,$t1,$t1
      mul $t1,$t1,$t2
      ble $t4,$t1,fin
      li $a0,0
      b final
     
     

      
saut: 
    li $t5,14 
    b final 
           
fin : 
    li $t5,1
    b final
   
    
final:
    b thug_life
    li $t1,2
    li $t2,3
    li $t3,6
    
    
    li $t5,4
    #jal print_int 
    #retour
    sw $t1,0($sp)
    sub $sp,$sp,4
    sw $t2,0($sp)
    sub $sp,$sp,4
    sw $t3,0($sp)
    
    lw $t4,0($sp)
    addi $sp,$sp,4
    lw $t5,0($sp)
    add $t4,$t4,$t5
    sw $t4,0($sp)
    
    
   
    
thug_life:
     li $t5,4
     sub $sp,$sp,4 
     move $gp,$sp
     
   
   #modifier ao pour stocker la valeur à afficher avec le print
        
    
    
    
    
    
    li $v0,10
    syscall       
    
print_int:
      li $v0,1
      syscall
      jr $ra
      
