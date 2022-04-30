          global _start
          section .text
          ; 5 function definition
strlen:   
          push rbp
          mov rbp, rsp
          ; 7 push integer
          mov rax, 0
          push rax
          ; 8 label
while_0x0000000000000001: 
          ; 8 duplicate
          pop rax
          push rax
          push rax
          ; 8 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 8 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 8 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 8 push integer
          mov rax, 0
          push rax
          ; 8 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 8 start of while-loop
          pop rax
          test rax, rax
          jz while_0x0000000000000001_end
          ; 9 push integer
          mov rax, 1
          push rax
          ; 9 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 8 end of while-loop
          jmp while_0x0000000000000001
while_0x0000000000000001_end: 
          ; 6 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 6 return
          ret
          ; 12 create buffer
          ; 14 function definition
itos:     
          push rbp
          mov rbp, rsp
          ; 20 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 20 push integer
          mov rax, 0
          push rax
          ; 20 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 20 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000001
          ; 21 push string
          mov rax, s_1
          push rax
          ; 21 jump
          jmp end_0x0000000000000001
          ; 21 label
if_0x0000000000000001: 
          ; 23 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 24 get pointer to buffer
          mov rax, _itos
          push rax
          ; 24 push integer
          mov rax, 19
          push rax
          ; 24 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 25 label
while_0x0000000000000002: 
          ; 25 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 25 push integer
          mov rax, 0
          push rax
          ; 25 is greater?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovg rax, rbx
          push rax
          ; 25 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 25 get pointer to buffer
          mov rax, _itos
          push rax
          ; 25 is greater or equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovge rax, rbx
          push rax
          ; 25 bitwise and
          pop rax
          pop rbx
          and rbx, rax
          push rbx
          ; 25 start of while-loop
          pop rax
          test rax, rax
          jz while_0x0000000000000002_end
          ; 27 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 27 push integer
          mov rax, 10
          push rax
          ; 27 mod
          xor rdx, rdx
          pop rbx
          pop rax
          div rbx
          push rdx
          ; 30 push character
          mov rax, `0`
          push rax
          ; 30 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 33 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 33 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 36 push integer
          mov rax, 1
          push rax
          ; 36 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 36 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 36 push integer
          mov rax, 10
          push rax
          ; 36 divide
          xor rdx, rdx
          pop rbx
          pop rax
          div rbx
          push rax
          ; 36 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 25 end of while-loop
          jmp while_0x0000000000000002
while_0x0000000000000002_end: 
          ; 38 push integer
          mov rax, 1
          push rax
          ; 38 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 41 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 41 drop
          pop rax
          ; 23 label
end_0x0000000000000001: 
          ; 15 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 15 return
          ret
          ; 44 function definition
traceback: 
          push rbp
          mov rbp, rsp
          ; 46 push integer
          mov rax, 2
          push rax
          ; 47 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 48 duplicate
          pop rax
          push rax
          push rax
          ; 48 push string
          mov rax, s_2
          push rax
          ; 48 push integer
          mov rax, 48
          push rax
          ; 48 push string
          mov rax, s_3
          push rax
          ; 48 push boolean
          mov rax, 1
          push rax
          ; 48 call
          call strlen
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 49 push integer
          mov rax, 1
          push rax
          ; 50 syscall
          pop rax
          pop rdx
          pop rsi
          pop rdi
          syscall
          push rax
          ; 52 push integer
          mov rax, 2
          push rax
          ; 53 push string
          mov rax, s_4
          push rax
          ; 54 duplicate
          pop rax
          push rax
          push rax
          ; 54 push string
          mov rax, s_2
          push rax
          ; 54 push integer
          mov rax, 54
          push rax
          ; 54 push string
          mov rax, s_3
          push rax
          ; 54 push boolean
          mov rax, 1
          push rax
          ; 54 call
          call strlen
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 55 push integer
          mov rax, 1
          push rax
          ; 56 syscall
          pop rax
          pop rdx
          pop rsi
          pop rdi
          syscall
          push rax
          ; 58 label
while_0x0000000000000003: 
          ; 58 get argument
          mov rax, rbp
          add rax, 16
          mov rbx, [rax]
          push rbx
          ; 58 start of while-loop
          pop rax
          test rax, rax
          jz while_0x0000000000000003_end
          ; 60 push integer
          mov rax, 2
          push rax
          ; 61 get argument
          mov rax, rbp
          add rax, 40
          mov rbx, [rax]
          push rbx
          ; 62 duplicate
          pop rax
          push rax
          push rax
          ; 62 push string
          mov rax, s_2
          push rax
          ; 62 push integer
          mov rax, 62
          push rax
          ; 62 push string
          mov rax, s_3
          push rax
          ; 62 push boolean
          mov rax, 1
          push rax
          ; 62 call
          call strlen
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 63 push integer
          mov rax, 1
          push rax
          ; 64 syscall
          pop rax
          pop rdx
          pop rsi
          pop rdi
          syscall
          push rax
          ; 65 drop
          pop rax
          ; 67 push integer
          mov rax, 2
          push rax
          ; 68 push string
          mov rax, s_5
          push rax
          ; 69 push integer
          mov rax, 7
          push rax
          ; 70 push integer
          mov rax, 1
          push rax
          ; 71 syscall
          pop rax
          pop rdx
          pop rsi
          pop rdi
          syscall
          push rax
          ; 72 drop
          pop rax
          ; 74 push integer
          mov rax, 2
          push rax
          ; 75 get argument
          mov rax, rbp
          add rax, 32
          mov rbx, [rax]
          push rbx
          ; 75 push string
          mov rax, s_2
          push rax
          ; 75 push integer
          mov rax, 75
          push rax
          ; 75 push string
          mov rax, s_3
          push rax
          ; 75 push boolean
          mov rax, 1
          push rax
          ; 75 call
          call itos
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 76 duplicate
          pop rax
          push rax
          push rax
          ; 76 push string
          mov rax, s_2
          push rax
          ; 76 push integer
          mov rax, 76
          push rax
          ; 76 push string
          mov rax, s_3
          push rax
          ; 76 push boolean
          mov rax, 1
          push rax
          ; 76 call
          call strlen
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 77 push integer
          mov rax, 1
          push rax
          ; 78 syscall
          pop rax
          pop rdx
          pop rsi
          pop rdi
          syscall
          push rax
          ; 79 drop
          pop rax
          ; 81 push integer
          mov rax, 2
          push rax
          ; 82 push string
          mov rax, s_6
          push rax
          ; 83 push integer
          mov rax, 4
          push rax
          ; 84 push integer
          mov rax, 1
          push rax
          ; 85 syscall
          pop rax
          pop rdx
          pop rsi
          pop rdi
          syscall
          push rax
          ; 86 drop
          pop rax
          ; 88 push integer
          mov rax, 2
          push rax
          ; 89 get argument
          mov rax, rbp
          add rax, 24
          mov rbx, [rax]
          push rbx
          ; 90 duplicate
          pop rax
          push rax
          push rax
          ; 90 push string
          mov rax, s_2
          push rax
          ; 90 push integer
          mov rax, 90
          push rax
          ; 90 push string
          mov rax, s_3
          push rax
          ; 90 push boolean
          mov rax, 1
          push rax
          ; 90 call
          call strlen
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 91 push integer
          mov rax, 1
          push rax
          ; 92 syscall
          pop rax
          pop rdx
          pop rsi
          pop rdi
          syscall
          push rax
          ; 93 drop
          pop rax
          ; 95 push integer
          mov rax, 2
          push rax
          ; 96 push string
          mov rax, s_7
          push rax
          ; 97 push integer
          mov rax, 1
          push rax
          ; 98 push integer
          mov rax, 1
          push rax
          ; 99 syscall
          pop rax
          pop rdx
          pop rsi
          pop rdi
          syscall
          push rax
          ; 100 drop
          pop rax
          ; 103 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 58 end of while-loop
          jmp while_0x0000000000000003
while_0x0000000000000003_end: 
          ; 105 push integer
          mov rax, 1
          push rax
          ; 105 push integer
          mov rax, 60
          push rax
          ; 105 syscall
          pop rax
          pop rdi
          syscall
          push rax
          ; 45 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 45 return
          ret
          ; 6 create buffer
          ; 8 function definition
main:     
          push rbp
          mov rbp, rsp
          ; 9 get pointer to buffer
          mov rax, foo
          push rax
          ; 9 push integer
          mov rax, 0
          push rax
          ; 9 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 9 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000002
          ; 10 push integer
          mov rax, 1
          push rax
          ; 10 jump
          jmp end_0x0000000000000002
          ; 10 label
if_0x0000000000000002: 
          ; 12 push integer
          mov rax, 2
          push rax
          ; 12 label
end_0x0000000000000002: 
          ; 9 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 9 return
          ret
_start:   
          xor rax, rax
          push rax
          push rax
          push rax
          push rax
          call main
_end:     
          mov rdi, rax
          mov rax, 60
          syscall
          section .data
s_1: db `0`, 0 
s_2: db `lib/ilo/core.ilo`, 0 
s_3: db `traceback`, 0 
s_4: db `\nTraceback:\n`, 0 
s_5: db `, line `, 0 
s_6: db ` in `, 0 
s_7: db `\n`, 0 
          section .bss
_itos: resb 21 
foo: resb 8 
