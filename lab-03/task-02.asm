.MODEL SMALL
.STACK 100H
.DATA

NEWLINE db 0Dh, 0Ah, '$'

M1 db "Enter a number: $"
M2 db "Enter another Number: $"

A db "Addition: $"
S db "Subtraction: $"
M db "Multiplication: $"
D db "Division: $"


.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
    ;enter your code here
    ;Perform addition/subtraction/division/multiplication by taking inputs from the user. Note: Display appropriate messages when taking input and showing the output.

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
    
    ;ADDITION
    
    MOV CL, BL
    MOV AL, BL
    
    MOV CH, BH
    MOV AH, BH
    
    ADD AL, CH
    ADD AL, 30h
    MOV CL, AL
    
    LEA DX, NEWLINE
    MOV AH, 9
    INT 21h
    
    LEA DX, A
    MOV AH, 9
    INT 21h
    
    MOV AH, 2
    MOV DL, CL
    INT 21h
    
    ;SUBTRACTION
    
    MOV CL, BL
    MOV AL, BL
    
    MOV CH, BH
    MOV AH, BH
    
    SUB AL, CH
    ADD AL, 30h
    MOV CL, AL
    
    LEA DX, NEWLINE
    MOV AH, 9
    INT 21h
    
    LEA DX, S
    MOV AH, 9
    INT 21h
    
    MOV AH, 2
    MOV DL, CL
    INT 21h
    
    LEA DX, NEWLINE
    MOV AH, 9
    INT 21h
    
    ;MULTIPLICATION
    MOV AL, BL
    MOV AH, 00h
    MUL BH
    
    ADD AL, 30h
    MOV CL, AL
    
    LEA DX, M
    MOV AH, 9
    INT 21h
    
    MOV AH, 2
    MOV DL, CL
    INT 21h
    
    LEA DX, NEWLINE
    MOV AH, 9
    INT 21h
        
    ;DIVISION
    
    MOV AL, BL
    MOV AH,00h
    DIV BH
    
    ADD AL,30h
    MOV CH, AL
    
    LEA DX, D
    MOV AH, 9
    INT 21h
    
    MOV AH, 2
    MOV DL, CH
    INT 21h
    
    LEA DX, NEWLINE
    MOV AH, 9
    INT 21h
    
    
    
    
        












;exit to DOS

MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN