GLOBAL  main
EXTERN  printf

SECTION .text
main:
	MOV ECX, 100000000
	XOR rax, rax
	XOR rbx, rbx

do:
	INC rax
	ADD rbx, rax

    LOOP do

	LEA     rdi, [format]
	MOV     rdi, format             ; 파라메타1
	MOV     rsi, rbx                ; 파라메타2
	CALL    printf

format: DB  "%ld", 10, 0