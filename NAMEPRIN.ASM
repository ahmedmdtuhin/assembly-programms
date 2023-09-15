;program to print a name using single characters

dosseg
.model small
.stack 100h
.data
.code
main proc
mov dl, 't'
mov ah, 2 ; 2 is output service routine
int 21h ; Interrupt routine for text to display

mov dl, 'u'
mov ah, 2
int 21h

mov dl, 'h'
mov ah, 2
int 21h

mov dl, 'i'
mov ah, 2
int 21h

mov dl, 'n'
mov ah, 2
int 21h
mov ah, 4ch ; for exiting the register or resource
int 21h


main endp
end main
