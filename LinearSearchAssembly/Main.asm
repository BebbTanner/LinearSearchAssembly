;Tanner Bebb
;Linear Search Practice

.386
include Irvine32.inc
.model flat, stdcall
.stack 4096
ExitProcess proto dwExitCode:dword

.data



.code
;EDX - OFFSET 32 bit int array
;ECX - 32 bit int size
;EBX - 32 bit int value
;EAX - return value

main PROC




call WaitMsg
exit

main endp
end main