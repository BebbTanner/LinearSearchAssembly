;Tanner Bebb
;Linear Search Practice

.386
include Irvine32.inc
.model flat, stdcall
.stack 4096
ExitProcess proto dwExitCode:dword

.data

myArray SWORD 2, 9, 3, 4, 8, 1, 5
i SDWORD 0

.code
;EDX - OFFSET 32 bit int array
;ECX - 32 bit int size
;EBX - 32 bit int value
;EAX - return value


LinearSeach PROC				;This is the linearsearch function
	mov i,0						;Storing 0 into the i variable
	mov eax, edx				;eax is the pointer for the myArray

LinearSearch ENDP

again:
	cmp	i, ecx					;Compares the value of i to what is stored in the ecx register.
	jge cantfind				;If the value is greater than or equal to it jumps to the cantfind tag.


	inc i						;Increments the value stored in i.
	jmp again					;Jumps back to the again tag, Keeps running until the conditions are met.

cantfind:
	mov eax, -1					;Moving the value of -1 into the eax registers. This basically tells me that the value could not be found

done:
	ret							;Just a return statement, unsure as to what I am doing with this.

main PROC
	mov edx, OFFSET myArray		;Move the OFFSET myArray into the edx register.
	mov ecx, 7					;Move the "size" of the array into ecx.
	mov ebx, 1					;Move the value I am searching for into ebx.
	call LinearSearch			;This calls the LinearSeach function.
	call WriteInt				;This calls the WriteInt function included in the irvine library.
	call Crlf					;This calls the Crlf function which will input a blank line.

	mov edx, OFFSET myArray		;Move the OFFSET myArray into the edx register.
	mov ecx, 7					;Move the "size" of the array into ecx.
	mov ebx, 11					;Move the value I am searching for into ebx.
	call LinearSearch			;This calls the LinearSeach function.
	call WriteInt				;This calls the WriteInt function included in the irvine library.
	call Crlf					;This calls the Crlf function which will input a blank line.

	call WaitMsg
	exit

main ENDP
end main