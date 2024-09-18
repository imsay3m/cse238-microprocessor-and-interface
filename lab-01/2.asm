.MODEL SMALL  
.STACK 100H  
.DATA 
.CODE
MAIN PROC  
    
;iniitialize DS  

MOV AH,10
MOV AL,5
MOV BL,AL
MOV AL,AH
MOV AH,BL 

;enter your code here  



;exit to DOS  
MOV AX,4C00H
INT 21H     

MAIN ENDP
END MAIN      