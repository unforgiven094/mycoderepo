include irvine32.inc

.data
	msg BYTE "The value of EAX is zero(0)..."
	msg2 BYTE "The value of EAX is not equal to zero(0)..."

.code
main proc
	mov eax, 0Ah
	cmp eax,0
	jz L1
	jnz notZero

L1:
	mov edx, offset msg
	call writestring
	call crlf
	jmp quit

notZero:
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
