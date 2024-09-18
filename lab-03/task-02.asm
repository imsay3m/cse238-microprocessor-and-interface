                  .MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here
;Perform addition/subtraction/division/multiplication by taking inputs from the user. Note: Display appropriate messages when taking input and showing the output.














;exit to DOS

MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN