.MODEL SMALL 
.STACK 100H 
.DATA
    saturdayo  db "Saturday$"
    sundayo    db "Sunday$"
    mondayo    db "Monday$"
    tuesdayo   db "Tuesday$"
    wednesdayo db "Wednesday$"
    thursdayo  db "Thursday$"
    fridayo    db "Friday$"
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
         JE  SAT

         CMP AL,2
         JE  SUN

         CMP AL,3
         JE  MON

         CMP AL,4
         JE  TUE

         CMP AL,5
         JE  WED

         CMP AL,6
         JE  THU

         CMP AL,7
         JE  FRI

    SAT: 
         LEA DX,saturdayo
         INT 21H
         JMP END
    SUN: 
         LEA DX,sundayo
         INT 21H
         JMP END
    MON: 
         LEA DX,mondayo
         INT 21H
         JMP END
    TUE: 
         LEA DX,tuesdayo
         INT 21H
         JMP END
    WED: 
         LEA DX,wednesdayo
         INT 21H
         JMP END
    THU: 
         LEA DX,thursdayo
         INT 21H
         JMP END
    FRI: 
         LEA DX,fridayo
         INT 21H
         JMP END


    END: 


    ;exit to DOS
         MOV AX,4C00H
         INT 21H

MAIN ENDP
END MAIN