TITLE Scanning an Array

INCLUDE Irvine32.inc
.data
	intArray SWORD 0,0,0,0,1,20,35,-12,66,4,0
	;intArray SWORD 1,0,0,0 ; alternate test data
	;intArray SWORD 0,0,0,0 ; alternate test data
	;intArray SWORD 0,0,0,1 ; alternate test data
	noneMsg BYTE "A non-zero value was not found",0

.code
main PROC
	mov ebx,OFFSET intArray 
	mov ecx,LENGTHOF intArray


L1: 
	cmp WORD PTR [ebx],0 
	jnz found 
	add ebx,2 
	loop L1 
	jmp notFound 

found: 
	movsx eax,WORD PTR[ebx] 
	call WriteInt
	jmp quit


notFound:
	mov edx,OFFSET noneMsg
	call WriteString


quit:
	call Crlf
	call waitmsg

	exit
main ENDP
END main