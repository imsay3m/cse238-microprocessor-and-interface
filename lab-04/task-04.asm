.MODEL SMALL 
.STACK 100H 
.DATA


.CODE
MAIN PROC
    ;iniitialize DS
              MOV AX,@DATA
              MOV DS,AX

    ;enter your code here

    ;If AL contains 1 or 3, display "o"
    ;If AL contains 2 or 4 display "e".
    
              MOV AL,0
              CMP AL,1
              JE  DISPLAY_O

              CMP AL,3
              JE  DISPLAY_O

              CMP AL,2
              JE  DISPLAY_E

              CMP AL,4
              JE  DISPLAY_E

              JMP END

    DISPLAY_O:
              MOV AH,2
              MOV DL,'o'
              INT 21H
              JMP END


    DISPLAY_E:
              MOV AH,2
              MOV DL,'e'
              INT 21H
              JMP END


    
    END:      


    ;exit to DOS
              MOV AX,4C00H
              INT 21H

MAIN ENDP
END MAIN