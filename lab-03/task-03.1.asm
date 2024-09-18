.MODEL SMALL
.STACK 100H
.DATA

M1 db "Enter a character: $"

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

    ; a. Read a character, and display it at the next position on the same line.
    LEA DX, M1
    MOV AH, 9
    INT 21h
    
    MOV AH, 1
    INT 21h

    MOV DL, AL
    MOV AH, 2
    INT 21h

;exit to DOS

MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN
