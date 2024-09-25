.MODEL SMALL
.STACK 100H
.DATA

NEWLINE db 0Dh, 0Ah, '$'
M1 db "Enter a Hex Digit: $"
M2 db "In Decimal it is: 1$"

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

    ;Write a program to read one of the hex digits A-F, and display it on the next line in decimal.
     
     LEA DX, M1
     MOV AH, 9
     INT 21h
     
     MOV AH, 1
     INT 21h
     
     SUB AL, 41h
     MOV BL, AL
     ADD BL, 30h
     
     LEA DX, NEWLINE
     MOV AH, 9
     INT 21h
     
     LEA DX, M2
     MOV AH, 9
     INT 21h
     
     MOV AH, 2
     MOV DL, BL
     INT 21h
     

;exit to DOS

MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN
