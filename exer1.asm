include irvine32.inc

.data
	msg BYTE "The value of DL is zero(0)..."
	msg2 BYTE "The value of DL is not equal to zero(0)..."

.code
main proc
	mov al, 0FFh
	and al, 011h
	jz itsZero
	jnz notZero



notZero:
	mov edx, offset msg2
	call writestring
	call crlf
	jmp quit

itsZero:
	mov edx, offset msg
	call writestring
	call crlf
	jmp quit



quit:
	call dumpregs
	call waitmsg

	exit
main endp
end main
