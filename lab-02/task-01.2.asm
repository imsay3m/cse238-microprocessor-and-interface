.MODEL SMALL
.STACK 100H
.DATA

X dw 5       
Y dw 3


.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here   


;task-01.2: (X/Y)
mov ax, X ;X
mov bl, Y ;Y
div bl ;(X/Y)
 







;exit to DOS

MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN 