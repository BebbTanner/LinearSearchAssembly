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


LinearSearch endp


main PROC
	mov edx, myArray
	mov ecx, 7
	LinearSearch



	call WaitMsg
	exit

main endp
end main