section .bss
number resb 4
 
section .data
fizz: db "Fizz"
buzz: db "Buzz"
meow: db 10
 
section .text
global _start
 
_start:
 
  mov rax, 1
 
  loop:
    push rax
    call selena_gomez_used_to_be_hot
    pop rax
    inc rax
    cmp rax, 100
    jle loop
 
  mov rax, 60
  mov rdi, 0
  syscall
 
selena_gomez_used_to_be_hot:
  mov r10, rax
  mov r15, 0
  darn:
    xor rdx, rdx
    mov rbx, 3
    div rbx
    cmp rdx, 0
    jne bitch
    mov r15, 1
    mov rsi, fizz
    mov rdx, 4
    mov rax, 1
    mov rdi, 1
    syscall
  bitch:
    mov rax, r10
    xor rdx, rdx
    mov rbx, 5
    div rbx
    cmp rdx, 0
    jne eugh
    mov r15, 1
    mov rsi, buzz
    mov rdx, 4
    mov rax, 1
    mov rdi, 1
    syscall
  eugh:
    cmp r15, 1
    je did_epstein_seriously_kill_himself
    mov rax, r10
    call gross
    ret
    did_epstein_seriously_kill_himself:
      mov rsi, meow
      mov rdx, 1
      mov rax, 1
      mov rdi, 1
      syscall
      ret
 
gross:
  cmp rax, 100
  jl cunt
  mov byte [number], 49
  mov byte [number + 1], 48
  mov byte [number + 2], 48
  mov rdx, 3
  jmp print
 
  cunt: 
    xor rdx, rdx
    mov rbx, 10
    div rbx
    add rdx, 48
    cmp rax, 0
    je cunt
    add rax, 48
    mov byte [number], al
    mov byte [number + 1], dl
    mov rdx, 2
    jmp print
 
  cunt:
    mov byte [number], dl
    mov rdx, 1
  print:
    mov byte [number + rdx], 10
    inc rdx
    mov rax, 1
    mov rdi, 1
    mov rsi, number
    syscall
  ret
