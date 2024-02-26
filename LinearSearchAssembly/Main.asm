;Tanner Bebb
;Linear Search Practice

.386
include Irvine32.inc
.stack 4096
ExitProcess proto dwExitCode:dword

.data

myArray SDWORD 2, 9, 3, 4, 8, 1, 5
i SDWORD 0

.code
;EDX - OFFSET 32 bit int array
;ECX - 32 bit int size
;EBX - 32 bit int value
;EAX - return value


LinearSearch PROC				;This is the linearsearch function
	push edx					;Pushes edx on to the stack.
	mov i,0						;Storing 0 into the i variable

again:
	cmp	i, ecx					;Compares the value of i to what is stored in the ecx register.
	jge cantfind				;If the value is greater than or equal to it jumps to the cantfind tag.
	cmp DWORD PTR [edx], ebx	;This is going to compare the value pointed to in the array to the value in the ebx register.
	jne notfound				;If it is not equal to the compared value it will jump to the notfound tag.
	mov eax, i					;Move the value of i into the eax register.
	jmp done					;Jump to the done tag.

notfound:
	inc i						;Increment the value of i.
	add edx, 4					;Add 4 to the edx register to get to the next value in the array.
	jmp again					;Jump back to the again tag and continue running until the conditions are met.

cantfind:
	mov eax, -1					;Moving the value of -1 into the eax registers. This basically tells me that the value could not be found

done:
	pop edx						;Removes edx from the stack.
	ret							;Just a return statement, unsure as to what is does right now.

LinearSearch ENDP

main PROC
	mov edx, OFFSET myArray		;Move the OFFSET myArray into the edx register.
	mov ecx, 7					;Move the "size" of the array into ecx.
	mov ebx, 8					;Move the value I am searching for into ebx.
	call LinearSearch			;This calls the LinearSeach function.
	call WriteInt				;This calls the WriteInt function included in the irvine library.
	call Crlf					;This calls the Crlf function which will input a blank line.

	mov edx, OFFSET myArray	;Move the OFFSET myArray into the edx register.
	mov ecx, 7					;Move the "size" of the array into ecx.
	mov ebx, 1					;Move the value I am searching for into ebx.
	call LinearSearch			;This calls the LinearSeach function.
	call WriteInt				;This calls the WriteInt function included in the irvine library.
	call Crlf					;This calls the Crlf function which will input a blank line.

	call WaitMsg				;Calls the WaitMsg function in the Irvine library.
	exit						;Exits the program.

main ENDP
end main