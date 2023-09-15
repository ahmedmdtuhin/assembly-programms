;program to add two numbers

dosseg
.model small
.stack 100h
.data
.code
main proc

mov bl,1
mov cl,2
add bl,cl
add bl, 48; ascii code for 0 is 48
mov dl, bl
mov ah,2
int 21h
mov ah,4ch
int 21h

main endp
end main
