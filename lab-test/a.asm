.MODEL SMALL
.STACK 100H
.DATA
NEWLINE db 0Dh, 0Ah, '$'

M1 db "Enter first number: $"
M2 db "Enter second Number: $"
M3 db "Enter third Number: $"
RESULT db "Result: $"

.CODE
MAIN PROC
    ; Initialize DS
    MOV AX,@DATA
    MOV DS,AX

    ; 1ST INPUT SAVING IN BL
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

    ; 2ND INPUT SAVING IN BH
    LEA DX, M2
    MOV AH, 9
    INT 21h

    MOV AH, 1
    INT 21h

    SUB AL, 30h
    MOV BH, AL

    ; 3RD INPUT SAVING IN CL
    LEA DX, NEWLINE
    MOV AH, 9
    INT 21h

    LEA DX, M3
    MOV AH, 9
    INT 21h

    MOV AH, 1
    INT 21h

    SUB AL, 30h
    MOV CL, AL

    ; PERFORMING OPERATION 1 (B + C * A) STORING IN CH
    MOV AL, CL
    MUL BL
    MOV DL, AH
    ADD AL, BH
    MOV CH, AL

    ; PERFORMING OPERATION 2 (A - C + B), storing result in DL
    MOV AL, BL
    SUB AL, CL
    ADD AL, BH
    MOV DL, AL

    ; DIVISION: CH / DL

    MOV AL, CH
    DIV DL

    ; Display Result
    LEA DX, RESULT
    MOV AH, 9
    INT 21h

    ADD AL, 30h
    MOV DL, AL
    MOV AH, 2
    INT 21h

    ; Exit to DOS
    MOV AX, 4C00H
    INT 21H


MAIN ENDP
END MAIN
