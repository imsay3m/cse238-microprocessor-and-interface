.MODEL SMALL 
.STACK 100H 
.DATA
    divisibleo    db "DIVISIBLE $"
    notDivisibleo db "NOT DIVISIBLE $"
.CODE
MAIN PROC
    ;iniitialize DS
              MOV AX,@DATA
              MOV DS,AX

    ;enter your code here
    ;Write a program to check whether a number is divisible by 5 and 11 or not.
              MOV CX,42H
              MOV AX,CX


              MOV BL,5H
              DIV BL

              CMP AH,0
              JE  DIVISIBLE

              MOV AX,CX

              MOV BL,11H
              DIV BL

              CMP AH,0
              JE  DIVISIBLE

              LEA DX,notDivisibleo
              MOV AH,9
              INT 21H
              JMP END

    DIVISIBLE:
              LEA DX,divisibleo
              MOV AH,9
              INT 21H
              JMP END





    END:      


    ;exit to DOS
              MOV AX,4C00H
              INT 21H

MAIN ENDP
END MAIN