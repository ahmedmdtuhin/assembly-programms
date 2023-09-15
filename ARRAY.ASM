;array
dosseg
.model small
.stack 100h
.data
arr1 db '1','2','3','4'
.code
main proc
mov ax, @data
mov ds,ax
mov si, offset arr1 ; SI source index reg, used as pointer to access array's 1st element
mov dx, [si]
mov ah,2
int 21h
mov dx, [si+1]; or inc si then mov dx,[si]
mov ah,2
int 21h
mov ah,4ch
int 21h
main endp
end main
