.MODEL SMALL 
.STACK 100H 
.DATA
   msg  DB "Enter a single digit (0-9): $"
   io   DB "i$"
   ko   DB "k$"
   lo   DB "l$"
.CODE
MAIN PROC
   ;iniitialize DS
           MOV AX,@DATA
           MOV DS,AX

   ;enter your code here
   ;Write a program that takes a digit as an input and outputs the following.
   ;If the digit is within 0-3, it prints "i", If it"s within 4-6, it prints "k", If it's within 7-9, it prints "l" and if it"s 10, it prints "m".


           LEA DX, msg
           MOV AH, 9
           INT 21H

           MOV AH, 01H
           INT 21H
           SUB AL, 30H

           CMP AL, 3
           JLE PRINT_I
           CMP AL, 6
           JLE PRINT_K
           JMP PRINT_L

   PRINT_I:
           LEA DX, io
           MOV AH, 9
           INT 21H
           JMP END

   PRINT_K:
           LEA DX, ko
           MOV AH, 9
           INT 21H
           JMP END

   PRINT_L:
           LEA DX, lo
           MOV AH, 9
           INT 21H
   END:    


   ;exit to DOS
           MOV AX,4C00H
           INT 21H

MAIN ENDP
END MAIN