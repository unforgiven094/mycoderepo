TITLE Addition and Subtraction 

INCLUDE Irvine32.inc
.data
	Rval SDWORD ?
	Xval SDWORD 26
	Yval SDWORD 30
	Zval SDWORD 40
.code
main PROC
	mov ax,1000h
	inc ax 
	dec ax 
	call dumpregs

	mov eax,Xval
	neg eax 
	mov ebx,Yval
	sub ebx,Zval 
	add eax,ebx
	mov Rval,eax 
	call dumpregs

	mov cx,1
	sub cx,1 
	mov ax,0FFFFh
	inc ax 
	call dumpregs

	mov cx,0
	sub cx,1 
	mov ax,7FFFh
	add ax,2 
	call dumpregs

	mov al,0FFh
	add al,1 
	call dumpregs

	mov al,+127
	add al,1
	mov al,-128
	sub al,1 
	
	call dumpregs
	call waitmsg

	exit
main ENDP
END main