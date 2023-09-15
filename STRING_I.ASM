;Program to take input and print a string

dosseg
.model small
.stack 100h
.data
array1 DB 100 dup('$')
.code

main proc

mov ax, @data
mov ds,ax

mov si, offset array1
L1:
mov ah,1
int 21h

cmp al, 13; 13 is ascii for enter key
je programend
mov [si],al
inc si
jmp L1

programend:
mov dx, offset array1
mov ah,9
int 21h
mov ah,4ch
int 21h




main endp
end main
