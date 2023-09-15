;program to print an array using loop

dosseg
.model small
.stack 100h
.data
arr1 db 'a','b','c','d','e'

.code

main proc

mov ax, @data
mov ds,ax
mov si, offset arr1
mov cx,5 ; counter reg for the number of itteration

L1:
mov dx,[si]
mov ah,2
int 21h
inc si

loop L1
mov ah,4ch
int 21h

main endp
end main
