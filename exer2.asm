include irvine32.inc

.data
	msg BYTE "The value of AX is less..."
	msg2 BYTE "The value of AX is greater..."

.code
main proc
	;mov ax,0
	mov ax, 7
	cmp ax,6
	jl itsLess
	jg itsGreater

itsLess:
	mov edx, offset msg
	call writestring
	call crlf
	jmp quit

itsGreater:
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
