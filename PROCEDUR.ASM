;program for procedure
dosseg
.model small
.stack 100h
.data
str1 db 'mohammad$'
str2 db 'tuhin$'
str3 db 'ahmed$'

.code

main proc
mov ax, @data
mov ds,ax
mov dx, offset str1
mov ah,9
int 21h
call enterkey

mov dx, offset str2
mov ah,9
int 21h
call enterkey

mov dx, offset str3
mov ah,9
int 21h
mov ah,4ch
int 21h

main endp

enterkey proc
mov dx, 10
mov ah,2
int 21h
mov dx,13
mov ah,2
int 21h

ret
enterkey endp

end main
