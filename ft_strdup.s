; char *strdup(const char *s);
;  ^                       ^
; rax                     rdi
;
%define return              rax
%define str                 rdi
%define length              rbx
%define saved_str           r12

section .data
section .text
extern malloc
global ft_strdup
ft_strdup:
    push rbx                    ; preserve rbx
    push r12                    ; preserve r12
    mov saved_str, str         ; save original string address
    
; step 1: calculate length (including \0)
    xor length, length
.len_loop:
    cmp byte [saved_str + length], 0
    je .len_exit
    inc length
    jmp .len_loop
.len_exit:
    inc length
    
; step 2: malloc
    mov str, length             ; malloc argument = length
    call malloc                 ; result in rax
    test return, return         ; check if malloc failed
    je .error
    
; step 3: copy string
    xor length, length
.dup_loop:
    mov cl, [saved_str + length]    ; read byte from source
    mov [return + length], cl       ; write byte to destination
    cmp cl, 0
    je .dup_exit
    inc length
    jmp .dup_loop
    
.dup_exit:
    pop r12
    pop rbx
    ret
    
.error:
    pop r12
    pop rbx
    ret