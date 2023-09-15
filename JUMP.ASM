;program to jump
dosseg
.model small
.stack 100h
.data
.code

main proc

L1:
mov ah,1
int 21h

mov dl, 4
cmp al,dl
je L1

mov ah,4ch
int 21h

main endp
end main
