;program to input a character from user and print it

dosseg
.model small
.stack 100h
.data
.code

main proc
mov ah,1 ; service routine for taking inputs and accumulator store the value to 'al'
int 21h

mov dl,al ; as accumulator stored the vale to al so to print the data we must move the data to data degiter first , here it is 'dl'
mov ah,2
int 21h

mov ah, 4ch
int 21h

main endp
end main
