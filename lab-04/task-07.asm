.MODEL SMALL 
.STACK 100H 
.DATA
    odd  db "ODD$"
    even db "EVEN$"

.CODE
MAIN PROC
    ;iniitialize DS
                 MOV AX,@DATA
                 MOV DS,AX

    ;enter your code here
    ;Write an assembly program to check whether a number is even or odd.

                 MOV AH,1
                 INT 21H

                 SUB AL,30H

                 CMP AL,0
                 JE  DISPLAY_EVEN

                 MOV BL, 2
                 DIV BL
                 CMP AH, 0
                 JE  DISPLAY_EVEN


                 LEA DX,ODD
                 MOV AH,9
                 INT 21H
                 JMP END

    DISPLAY_EVEN:
                 LEA DX,EVEN
                 MOV AH,9
                 INT 21H
                 JMP END


    END:         


    ;exit to DOS
                 MOV AX,4C00H
                 INT 21H

MAIN ENDP
END MAIN