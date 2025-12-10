section .data
    ; Define constants or initialized data here

section .text
    global _start

_start:
    ; Simulate a "secret number" (e.g., 42)
    mov rax, 42         ; Secret number in RAX

    ; Simulate a "guess" (e.g., 20)
    mov rbx, 20         ; Guessed number in RBX

    cmp rax, rbx        ; Compare secret number with guess
    je  _correct_guess  ; If equal, jump to correct_guess

_incorrect_guess:
    mov rdi, 1          ; Set exit code to 1 (incorrect)
    jmp _exit

_correct_guess:
    mov rdi, 0          ; Set exit code to 0 (correct)

_exit:
    mov rax, 60         ; syscall number for exit (60)
    syscall             ; Execute syscall
