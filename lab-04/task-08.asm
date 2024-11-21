.MODEL SMALL 
.STACK 100H 
.DATA
  vowelo     db "VOWEL$"
  consonanto db "CONSONANT$"

.CODE
MAIN PROC
  ;iniitialize DS
        MOV AX,@DATA
        MOV DS,AX

  ;enter your code here
  ;Write a program to input any alphabet and check whether it is VOWEL or consonant.

        MOV AH,1
        INT 21H

        CMP AL,'a'
        JL  END
        CMP AL,'z'
        JG  END

        SUB AL,20H

        CMP AL, 'A'
        JE  VOWEL
        CMP AL, 'E'
        JE  VOWEL
        CMP AL, 'I'
        JE  VOWEL
        CMP AL, 'O'
        JE  VOWEL
        CMP AL, 'U'
        JE  VOWEL

        LEA DX, consonanto
        MOV AH, 9
        INT 21h
        JMP END

  VOWEL:
        LEA DX, vowelo
        MOV AH, 9
        INT 21h

  END:  


  ;exit to DOS
        MOV AX,4C00H
        INT 21H

MAIN ENDP
END MAIN