.MODEL SMALL 
.STACK 100H 
.DATA
      maximumo   db "MAXIMUM NUMBER IS $"
      minimumo   db "MINIMUM NUMBER IS $"
      newlineo   db 0DH,0AH,"$"
      max_result db ?
      min_result db ?
.CODE
MAIN PROC
      ;iniitialize DS
            MOV AX,@DATA
            MOV DS,AX

      ;enter your code here
      ;Write a program to find the maximum and minimum between three numbers.
      ;Input: 2 3 4
      ;Output:
      ;Maximum number is 4
      ;Minimum number is 1

            MOV AH,1
            INT 21H
            SUB AL, 30H
            MOV DL,AL

            MOV AH,1
            INT 21H
            SUB AL, 30H
            MOV BL,AL

            MOV AH,1
            INT 21H
            SUB AL, 30H
            MOV CL,AL

            MOV AL,DL

      ;FINDING MAXIMUM NUMBER
            MOV AH,AL
            CMP AH,BL
            JGE SKIP1               ; IF AH >= BL, skip
            MOV AH,BL               ; ELSE AH = BL

      SKIP1:
            CMP AH,CL
            JGE SKIP2               ; IF AH >= CL, skip
            MOV AH,CL               ; ELSE AH = CL
      SKIP2:
            MOV max_result,AH

            MOV AH,AL
            CMP AH,BL
            JLE SKIP3               ;If AH <= BL, skip
            MOV AH, BL              ; Else, AH = BL

      SKIP3:
            MOV AH,AL
            CMP AH,CL
            JLE SKIP4               ;If AH <= CL, skip
            MOV AH,CL               ; Else, AH = CL

      SKIP4:
            MOV min_result,AH

            LEA DX, newlineo
            MOV AH, 9
            INT 21H

            LEA DX, maximumo
            MOV AH, 09H
            INT 21H

            MOV AL, max_result
            ADD AL, 30H
            MOV DL, AL
            MOV AH, 2
            INT 21H

            LEA DX, newlineo
            MOV AH, 9
            INT 21H






            LEA DX, minimumo
            MOV AH, 09H
            INT 21H

            MOV AL, min_result
            ADD AL, 30H
            MOV DL, AL
            MOV AH, 2
            INT 21H

      ;exit to DOS
            MOV AX,4C00H
            INT 21H

MAIN ENDP
END MAIN