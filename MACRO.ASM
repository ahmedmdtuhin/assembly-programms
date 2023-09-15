; Program for macro
; macro is a block of code that can be used with input parameters anywhere in the program with name, it is a perfect function
;in procedure we dont have input parameters but in macro we have input parameters fascility


print macro p1
mov dx, offset p1
mov ah,9
int 21h
endm


dosseg
.model small
.stack 100h
.data
str1 db 'hello$'
str2 db 'earth$'
.code
main proc
mov ax, @data
mov ds,ax
print str1
call enterkey
print str2

mov ah,4ch
int 21h


enterkey proc
mov dx,10
mov ah,2
int 21h
mov dx,13
mov ah,2
int 21h
ret

enterkey endp

 main endp
 end main
