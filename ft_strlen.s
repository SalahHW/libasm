section .data

section .text
global ft_strlen

ft_strlen:
mov rax, 0


start_loop:
movzx rsi, byte [rdi + rax]
cmp rsi, 0
je loop_exit
inc rax
jmp start_loop

loop_exit:
ret
