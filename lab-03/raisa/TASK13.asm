.MODEL SMALL
.STACK 100H
.DATA
   saturday db "Saturday$"
    sunday db "Sunday$"
    monday db "Monday$"
    tuesday db "Tuesday$"
    wednesday db "Wednesday$"
    thursday db "Thursday$"
    friday db "Friday$"
.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX 
;Task 13
;Write a case to print the name of the day of the week. Consider the first
;day of the week is Saturday.
;Sample execution: Input: 3

;Output: Monday
 
    mov ah, 1
    int 21h
    sub al, 30h
    
    cmp al, 1
    je saturday2
    
    cmp al, 2
    je sunday2
    
    cmp al, 3
    je monday2
    
    cmp al, 4
    je tuesday2
    
    cmp al, 5
    je wednesday2
    
    cmp al, 6
    je thursday2
    
    cmp al, 7
    je friday2
    
    
    saturday2:
    mov ah, 9
    lea dx, saturday
    int 21h
    jmp exit
    
    sunday2:
    mov ah, 9
    lea dx, sunday
    int 21h
    jmp exit
    
    monday2:
    mov ah, 9
    lea dx, monday
    int 21h
    jmp exit
    
    tuesday2:
    mov ah, 9
    lea dx, tuesday
    int 21h
    jmp exit
     
    wednesday2:
    mov ah, 9
    lea dx, wednesday
    int 21h
    jmp exit
    
    thursday2:
    mov ah, 9
    lea dx, thursday
    int 21h
    jmp exit
    
    friday2:
    mov ah, 9
    lea dx, friday
    int 21h
    
    
   
   
    exit:
   
   
    
   

;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN