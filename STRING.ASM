;program to print strings
dosseg
.model small
.stack 100h
.data


 string1 db 'hello$'
 string2 db 'earth$'


.code

main proc
mov ax, @data ; sending address of data segment to the code segment
mov ds, ax  ; this will creat hip memory to access variables
mov dx, offset string1
mov ah,9
int 21h

mov dx,10
mov ah, 2
int 21h

mov dx,13
mov ah,2
int 21h

mov dx, offset string2
mov ah,9
int 21h
mov ah, 4ch
int 21h

main endp

end main
