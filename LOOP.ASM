;program for loop

dosseg
.model small
.stack 100h
.data
.code

main proc

mov cx,10 ;assigning value tp counter register
mov dx,48

L1:
mov ah,2
int 21h

add dx,1

loop L1 ; calling loop
mov ah,4ch
int 21h



main endp
end main
