.MODEL SMALL  

.STACK 100H

.DATA


.CODE
MAIN PROC

;iniitialize DS



MOV AX,@DATA
MOV DS,AX


;enter your code here

;task-03:(1+2)*(3-1)/5+3+2-(1*2)
MOV AL,1
ADD AL,2  
     
MOV AH,3
SUB AH,1 
     
MUL AH  
     
MOV BL,5
DIV BL
     
ADD AL,3
ADD AL,2
     
MOV CL,AL   
MOV BL,1
MOV BH,2
MUL BH
SUB CL,BH   

 

;exit to DOS



MOV AX,4C00H
INT 21H



MAIN ENDP
END MAIN
