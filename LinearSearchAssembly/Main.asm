;Tanner Bebb
;Linear Search Practice

.386
include Irvine32.inc
.model flat, stdcall
.stack 4096
ExitProcess proto dwExitCode:dword

.data

myArray SWORD 2, 9, 3, 4, 8, 1, 5

.code
;EDX - OFFSET 32 bit int array
;ECX - 32 bit int size
;EBX - 32 bit int value
;EAX - return value


LinearSeach PROC			;This is the linearsearch function
	mov eax,0				;Storing 0 into the eax register for testing purposes
	ret						;Return the values stored in eax?

LinearSearch ENDP


main PROC
	mov edx, myArray
	mov ecx, 7
	call LinearSearch
	call WriteInt
	call Crlf


	call WaitMsg
	exit

main ENDP
end main