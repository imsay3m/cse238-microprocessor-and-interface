.MODEL SMALL 
.STACK 100H 
.DATA


.CODE
MAIN PROC
    ;iniitialize DS
              MOV AX,@DATA
              MOV DS,AX

    ;enter your code here
    ;Read a character. If it's "y" or "Y", display it
    ;otherwise, terminate the program

              MOV AH,1
              INT 21H

              CMP AL,'Y'
              JE  DISPLAY_Y

              CMP AL,'y'
              JE  DISPLAY_Y

              JMP END
    
    DISPLAY_Y:
              MOV AH,2
              MOV DL,AL
              INT 21H
              JMP END

    END:      


    ;exit to DOS
              MOV AX,4C00H
              INT 21H

MAIN ENDP
END MAIN