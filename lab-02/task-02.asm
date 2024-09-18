.MODEL SMALL  
.STACK 100H
.DATA

A dw 4       
B dw 2       
C dw 3       
D dw 1       
E dw 3       

.CODE
MAIN PROC

;iniitialize DS



MOV AX,@DATA
MOV DS,AX


;enter your code here

;task-02: (A+B)*(C-D)/E
MOV ax,A ;A
MOV bx,B ;B    
ADD ax,bx ;(A+B)    

MOV bx,C ;C
MOV cx,D ;D    
SUB bx,cx ;(C-D)   

MUL bx ;(A+B)*(C*D)        

MOV cx,E ;E     
DIV cx ;(A+B)*(C*D)/E        


 

;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN
