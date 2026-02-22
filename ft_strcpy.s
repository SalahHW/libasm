; char *strcpy(char *restrict dst, const char *restrict src);
%define return          rax
%define current_char    cl
%define dst             rdi
%define src             rsi

section .data

section .text
global ft_strcpy

ft_strcpy:
mov return, dst    ; copy dst for the return value

start_loop:
cmp byte [src], 0
je loop_exit
mov current_char, [src]
mov [dst], current_char
inc dst
inc src
jmp start_loop

loop_exit:
mov current_char, [src]
mov [dst], current_char
ret