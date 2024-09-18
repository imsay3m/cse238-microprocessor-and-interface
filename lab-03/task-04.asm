.MODEL SMALL
.STACK 100H
.DATA

NEWLINE db 0Dh, 0Ah, '$'
;ANS db BL,BH,AL
M1 db "Enter a number: $"
M2 db "Enter another Number: $"
M3 db "The sum of $"
M4 db " is "

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here
    
    LEA DX, M1
    MOV AH, 9
    INT 21h
    
    MOV AH, 1
    INT 21h
    
    MOV AL, 30h
    MOV BL, AL
    
    LEA DX, M2
    MOV AH, 9
    INT 21h
    
    MOV AH, 1
    INT 21h
    
    MOV AL, 30h
    MOV BH, AL
    
    



;exit to DOS

MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN
