.MODEL SMALL
.STACK 100H
.DATA

NEWLINE db 0Dh, 0Ah, '$'
M1 db "Enter the initials: $"

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

    ;Write a program to: 
        ;a. Prompt the user 
        ;b. Read first, middle, and last initials of a person's name, and then  
        ;c. Display them down the left margin. 

    
    LEA DX, M1
    MOV AH, 9
    INT 21h
    
    MOV AH, 1
    INT 21h
    
    MOV BL, AL
    
    MOV AH, 1
    INT 21h

    MOV BH, AL
    
    MOV AH, 1
    INT 21h
    
    MOV CL, AL
    
    LEA DX, NEWLINE
    MOV AH, 9
    INT 21h
    
    ;PRINT
    
    MOV AH, 2
    MOV DL, BL         
    INT 21h
    
    LEA DX, NEWLINE
    MOV AH, 9
    INT 21h
    
    MOV DL, BH         
    MOV AH, 2
    INT 21h
    
    LEA DX, NEWLINE
    MOV AH, 9
    INT 21h
    
    MOV DL, CL         
    MOV AH, 2
    INT 21h
    
    LEA DX, NEWLINE
    MOV AH, 9
    INT 21h 
    



;exit to DOS

MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN
