.MODEL SMALL 
.STACK 100H 
.DATA


.CODE
MAIN PROC
    ;iniitialize DS
            MOV AX,@DATA
            MOV DS,AX

    ;enter your code here

    ;if AX contains a negative number, put -1 in BX
    ;if AX contains 0, put 0 In BX
    ;if AX contains a positive number, put 1 in BX.
    
            MOV AX,-2
            CMP AX,0
            JL  NEG_AX
            JE  ZERO_AX
            JG  POS_AX
            JMP END
    NEG_AX: 
            MOV BX,-1
            JMP END
    ZERO_AX:
            MOV BX,0
            JMP END
    POS_AX: 
            MOV BX,1
            JMP END

    
    END:    


    ;exit to DOS
            MOV AX,4C00H
            INT 21H

MAIN ENDP
END MAIN