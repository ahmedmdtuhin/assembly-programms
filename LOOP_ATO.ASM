;program to print a to z using loop

dosseg
.model small
.stack 100h
.data
.code

main proc

mov cx, 26
mov dx, 65; ascci for a

L1:
mov ah,2
int 21h

inc dx  ; same as 'add dx,1 '


loop L1
mov ah,4ch
int 21h

main endp
end main
