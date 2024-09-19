.MODEL SMALL
.STACK 100H
.DATA

M1 db "Please insert a character: $"
NEWLINE db 0Dh, 0Ah, '$'

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here
;Take a character input and display it. Display the message "Please insert a character: " when taking an input.
    
    LEA DX, M1
    MOV AH, 9
    INT 21h
    
    MOV AH, 1
    INT 21h
    
    ADD AL, 20h
    MOV BL, AL
    
    LEA DX, NEWLINE
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