                  .MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here
;Take a character input and display it. Display the message "Please insert a character: " when taking an input.














;exit to DOS

MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN