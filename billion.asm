.section .text
.globl _start

_start:
    xor %rdi, %rdi

loop:
    cmp $1000000000, %rdi
    jge end_loop

    inc %rdi
    jmp loop

end_loop:
    mov $60, %rax
    xor %rdi, %rdi
    syscall