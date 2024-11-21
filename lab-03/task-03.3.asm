.MODEL SMALL
.STACK 100H
.DATA

M1 db "Enter an uppercase character: $"
NEWLINE db 0Dh, 0Ah, '$'

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

    ; c. Read an uppercase letter, and display it at the next position on the next line in lower case.
    
    LEA DX, M1
    MOV AH, 9
    INT 21h
    
    MOV AH, 1
    INT 21h
    
    ADD AL, 20h
    
    MOV BL, AL
    
    MOV DX, 0Ah
    MOV AH, 2
    INT 21h    
    
    MOV DL, BL
    MOV AH, 2
    INT 21h
    
    

;exit to DOS

MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN
