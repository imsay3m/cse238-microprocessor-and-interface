.MODEL SMALL  
.STACK 100H  
.DATA 
.CODE
MAIN PROC  
    
;iniitialize DS  

MOV AX,@DATA
MOV DS,AX    

;enter your code here  

MOV AL,10
MOV AH,5
ADD AL,AH

;exit to DOS  

MOV AX,4C00H
INT 21H     

MAIN ENDP
END MAIN      