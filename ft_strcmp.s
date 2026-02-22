; int strcmp(const char *s1, const char *s2);
;  ^                     ^                ^
; rax                   rdi              rsi
; 
%define return          rax
%define s1              rdi
%define s2              rsi
%define diff            cl

section .data

section .text
global ft_strcmp

ft_strcmp:
xor return, return

start_loop:
mov diff, [s1]
sub diff, [s2]
je equal
movsx return, diff
ret

equal:
cmp byte [s1], 0
je loop_exit
inc s1
inc s2
jmp start_loop

loop_exit:
ret