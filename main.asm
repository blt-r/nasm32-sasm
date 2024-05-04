%include "io.inc"

section .text

global main

main:
    PRINT_STRING "Hello, World!"
    NEWLINE

    xor eax, eax
    ret
