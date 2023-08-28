.section .text
.globl _start

_start:
    # Initialize i to 0 (use rdi register to store i)
    xor %rdi, %rdi

loop:
    # Check if i < 1000000000
    cmp $1000000000, %rdi
    jge end_loop

    # Increment i by 1
    inc %rdi
    jmp loop

end_loop:
    # Exit syscall
    mov $60, %rax
    xor %rdi, %rdi
    syscall