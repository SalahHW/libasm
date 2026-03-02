; size_t ft_strlen(const char *s);
%define length          rax
%define current_char    rsi 
%define str             rdi

section .data

section .text
global ft_strlen

ft_strlen:
    xor length, length 


start_loop:
    movzx current_char, byte [str + length]
    cmp current_char, 0
    je loop_exit
    inc length
    jmp start_loop

loop_exit:
    ret
