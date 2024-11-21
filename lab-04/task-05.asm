.MODEL SMALL 
.STACK 100H 
.DATA


.CODE
MAIN PROC
    ;iniitialize DS
                  MOV AX,@DATA
                  MOV DS,AX

    ;enter your code here
    ;Read a character, and if it's an uppercase letter, display it.
                  MOV AH,1
                  INT 21H

                  CMP AL,41H
                  JL  END
                  CMP AL,5AH
                  JG  END
    
    DISPLAY_UPPER:
                  MOV AH,2
                  MOV DL,AL
                  INT 21H
    END:          


    ;exit to DOS
                  MOV AX,4C00H
                  INT 21H

MAIN ENDP
END MAIN