.MODEL SMALL 

.STACK 100H 

.DATA


.CODE
MAIN PROC

    ;iniitialize DS

               MOV AX,@DATA
               MOV DS,AX

    ;enter your code here

    ;Task 02:Suppose AL and BL contain extended ASCII characters. Display the one that comes first in the character sequence.
               MOV AL,'L'
               MOV BL,'C'
               CMP AL,BL

               MOV AH,2
          
               JL  DISPLAY_AL

               MOV DL,BL
               INT 21H

               JMP END




    DISPLAY_AL:
               MOV DL,AL
               INT 21H
    
    END:       



    ;exit to DOS
                
               MOV AX,4C00H
               INT 21H

MAIN ENDP
END MAIN