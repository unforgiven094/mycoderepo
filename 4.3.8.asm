include irvine32.inc

.data
myBytes BYTE 10h,20h,30h,40h
myWords WORD 3 DUP(?),2000h
myString BYTE "ABCDE"

.code
main PROC
mov eax,TYPE myBytes 
call dumpregs
mov eax,LENGTHOF myBytes 
call dumpregs
mov eax,SIZEOF myBytes
call dumpregs
mov eax,TYPE myWords
call dumpregs
mov eax,LENGTHOF myWords
call dumpregs
mov eax,SIZEOF myWords
call dumpregs
mov eax,SIZEOF myString 
call dumpregs
call waitmsg

exit
main endp
end main