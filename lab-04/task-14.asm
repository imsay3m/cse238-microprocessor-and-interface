.MODEL SMALL 
.STACK 100H 
.DATA
    day28o db "28 Days$"
    day30o db "30 Days$"
    day31o db "31 Days$"
.CODE
MAIN PROC
    ;iniitialize DS
           MOV AX,@DATA
           MOV DS,AX

    ;enter your code here
    ;Write a case to print the name of the day of the week. Consider the first day of the week is Saturday.

           MOV AH,1
           INT 21H
           SUB AL,30H

           MOV AH,9

           CMP AL,1
           JE  DAY_31

           CMP AL,2
           JE  DAY_28

           CMP AL,3
           JE  DAY_31

           CMP AL,4
           JE  DAY_30

           CMP AL,5
           JE  DAY_31

           CMP AL,6
           JE  DAY_30

           CMP AL,7
           JE  DAY_31

           CMP AL,8
           JE  DAY_31

           CMP AL,9
           JE  DAY_30

    DAY_28:
           LEA DX,day28o
           INT 21H
           JMP END
    DAY_30:
           LEA DX,day30o
           INT 21H
           JMP END
    DAY_31:
           LEA DX,day31o
           INT 21H
           JMP END


    END:   


    ;exit to DOS
           MOV AX,4C00H
           INT 21H

MAIN ENDP
END MAIN