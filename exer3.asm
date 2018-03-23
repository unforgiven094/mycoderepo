include irvine32.inc

.data
	msg BYTE "The value of AX is less..."
	msg2 BYTE "The value of AX is equal..."

.code
main proc
	;mov ax,0
	mov ax, 5
	cmp ax, 5
	jne itsLess
	je itsEqual

itsLess:
	mov edx, offset msg
	call writestring
	call crlf
	jmp quit

itsEqual:
	mov edx, offset msg2
	call writestring
	call crlf
	jmp quit

quit:
	call dumpregs
	call waitmsg

	exit
main endp
end main
