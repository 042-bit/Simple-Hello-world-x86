section .data 

msg db "hello_world",10
msg_len equ $ - msg

section .text
global start_

start_:

  mov rax, 1
  mov rdi, 1 
  mov rsi, msg
  mov rdx, msg_len
  syscall 
  
  mov rax, 60 
  xor rdi, rdi
  syscall 
