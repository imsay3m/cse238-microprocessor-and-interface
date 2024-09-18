.MODEL SMALL
.STACK 100H
.DATA


X dw 5       
Y dw 3       
Z dw 2


.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here   


;task-01.3: X*Y/Z
mov ax,X ;X
mov bl,Y ;Y
mul bl ;X*Y

mov bl,Z ;Z 
div bl ;X*Y/Z
 







;exit to DOS

MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN 