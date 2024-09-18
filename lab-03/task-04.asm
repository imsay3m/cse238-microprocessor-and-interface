.MODEL SMALL
.STACK 100H
.DATA

NEWLINE db 0Dh, 0Ah, '$'
;ANS db BL,BH,AL
M1 db "Enter a number: $"
M2 db "Enter another Number: $"
M3 db "The sum of $"
M4 db " and $"
M5 db " is $"

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

    ;Write a program to:
        ;a. Read two decimal digits whose sum is less than 10
        ;b. Display them and their sum on the next line, with an appropriate message.
    
    LEA DX, M1
    MOV AH, 9
    INT 21h
    
    MOV AH, 1
    INT 21h
    
    SUB AL, 30h
    MOV BL, AL
    
    LEA DX, NEWLINE
    MOV AH, 9
    INT 21h 
    
    LEA DX, M2
    MOV AH, 9
    INT 21h
    
    MOV AH, 1
    INT 21h
    
    SUB AL, 30h
    MOV BH, AL
    MOV CL, AL
    
    ADD CL,BL
    
    LEA DX, NEWLINE
    MOV AH, 9
    INT 21h
             
    LEA DX, M3
    MOV AH, 9
    INT 21h
    
    MOV AH, 2
    MOV DL, BL
    ADD DL, 30h
    INT 21h  
    
    LEA DX, M4
    MOV AH, 9
    INT 21h
    
    MOV AH, 2
    MOV DL, BH
    ADD DL, 30h
    INT 21h
    
    LEA DX, M5
    MOV AH, 9
    INT 21h
    
    MOV AH, 2
    MOV DL, CL
    ADD DL, 30h
    INT 21h
    



;exit to DOS

MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN
