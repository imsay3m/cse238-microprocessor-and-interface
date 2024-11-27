.MODEL SMALL 
.STACK 100H 
.DATA
        yeso db "Y$"
        noo  db "N$"
.CODE
MAIN PROC
        ;iniitialize DS
                MOV AX,@DATA
                MOV DS,AX

        ;enter your code here
        ;Write a program that takes as input all sides of a triangle and check whether triangle is valid or not.
        ;If the sides form a triangle, print "Y", otherwise print "N".
                MOV AL,3
                MOV BL,4
                MOV CL,5

                CMP AL,BL           ;AL>BL
                JG  AL_BIG

        AL_BIG: 
                CMP AL,CL
                JG  AL_BIG2         ;AL>CL
                JMP CL_BIG

        AL_BIG2:
                ADD BL,CL
                CMP BL, AL          ;BL+CL>AL
                JG  PRINT_Y
                JMP PRINT_N

        BL_BIG: 
                CMP BL,CL           ; BL>CL
                JG  BL_BIG2
                JMP CL_BIG
   
        BL_BIG2:
                ADD AL,CL
                CMP AL,BL           ;AL+CL>BL
                JG  PRINT_Y
                JMP PRINT_N
   
        CL_BIG: 
                ADD AL,BL
                CMP AL,CL           ;AL+BL>CL
                JG  PRINT_Y
                JMP PRINT_N
   
        PRINT_Y:
                MOV AH,9
                LEA DX,yeso
                INT 21H
                JMP END

        PRINT_N:
                MOV AH,9
                LEA DX,noo
                INT 21H

        END:    


        ;exit to DOS
                MOV AX,4C00H
                INT 21H

MAIN ENDP
END MAIN