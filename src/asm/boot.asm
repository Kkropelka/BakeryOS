bits 32

section .multiboot
    align 4
    dd 0x1BADB002
    dd 0x00
    dd -(0x1BADB002 + 0x00)

section .text

global _start
extern main

_start:
    cli
    call main
    hlt