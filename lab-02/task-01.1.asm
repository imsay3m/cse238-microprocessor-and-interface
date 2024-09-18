.MODEL SMALL
.STACK 100H
.DATA


X dw 5       
Y dw 2


.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here  
       

;task-01.1: X*Y
mov ax, X ;X
mov bx, Y ;Y
mul bx ;(X*Y)



;exit to DOS

MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN  