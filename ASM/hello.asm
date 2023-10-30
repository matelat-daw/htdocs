section .data
	aviso:     db '¡Me convertiré en un Gran Programador!', 10    ; 'Me convertiré...' Con Retorno de Carro.
	avisoLen:  equ $-aviso             ; Length of the 'Me convertiré...' string

section .text
	global _start

_start:
	mov eax, 4            ; The system call for write (sys_write)
	mov ebx, 1            ; File descriptor 1 - standard output
	mov ecx, aviso        ; Put the offset of hello in ecx
	mov edx, avisoLen     ; helloLen is a constant, so we don't need to say
	                     ;  mov edx,[helloLen] to get it's actual value
	int 80h              ; Call the kernel
	mov eax, 1            ; The system call for exit (sys_exit)
	mov ebx, 0            ; Exit with return "code" of 0 (no error)
	int 80h;