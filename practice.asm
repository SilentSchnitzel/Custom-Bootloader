; block starting symbol
section .bss
        ; variables
section .data
        ; constants
        ; 10 represents the new line character
        hello: db "Hello World", 10
        ; dollar signe subtracts current position from the hello label providing the length
        helloLen: equ $-hello ; len of string
; the text section contains the logic for the program
section .text
        global _start

        _start:
                mov rax, 1; sys_write
                mov rdi, 1; stdout
                mov rsi, hello; mesage
                mov rdx, helloLen ;mesage length
                syscall ; call kernal

                ; end program
                mov rax, 60; sys exit
                mov rdi, 0 ;error code 0 (success)