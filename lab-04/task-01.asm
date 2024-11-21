.MODEL SMALL 

.STACK 100H 

.DATA


.CODE
MAIN PROC

    ;iniitialize DS

            MOV AX,@DATA
            MOV DS,AX

    ;enter your code here
            MOV AX,-6
            NEG AX
            CMP AX,0
            JL  REPLACE
            JMP END

    REPLACE:
            MOV AX,3
    END:    


    ;exit to DOS
                
            MOV AX,4C00H
            INT 21H

MAIN ENDP
END MAIN