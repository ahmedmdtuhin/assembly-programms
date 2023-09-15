;Program to drwaw rectangle or square in graphics
; 06h is a function or routine to req scroll lines up
;al number of lines to be scrolled or line to be filled
;bh for color
;ch top row of window
;cl left most coloumn of window
;dh botom row of window
;dl right most comolmn of window

dosseg
.model small
.stack 100h
.data
.code
main proc
mov ah,6
mov al,10
mov bh,00010000b
mov ch,0
mov cl,0
mov dh,15
mov dl, 15
int 10h
mov ah, 4ch
int 21h
main endp
end main
