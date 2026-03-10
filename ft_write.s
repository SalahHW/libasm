; ssize_t write(int fd, const void buf[.count], size_t count);
; 
section .data
section .text
extern __errno_location
global ft_write

ft_write:
    mov rax, 1
    syscall
    cmp rax, 0
    jl error
    ret
    
error:
    neg rax
    push rax
    call __errno_location
    mov rcx, rax
    pop rax
    mov [rcx], eax
    mov rax, -1
    ret
    