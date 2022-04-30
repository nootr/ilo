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
          ; 28 function definition
puts:     
          push rbp
          mov rbp, rsp
          ; 30 push integer
          mov rax, 1
          push rax
          ; 31 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 32 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 32 push string
          mov rax, s_8
          push rax
          ; 32 push integer
          mov rax, 32
          push rax
          ; 32 push string
          mov rax, s_9
          push rax
          ; 32 push boolean
          mov rax, 1
          push rax
          ; 32 call
          call strlen
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 33 push integer
          mov rax, 1
          push rax
          ; 34 syscall
          pop rax
          pop rdx
          pop rsi
          pop rdi
          syscall
          push rax
          ; 29 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 29 return
          ret
          ; 37 function definition
error:    
          push rbp
          mov rbp, rsp
          ; 39 push integer
          mov rax, 2
          push rax
          ; 40 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 41 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 41 push string
          mov rax, s_8
          push rax
          ; 41 push integer
          mov rax, 41
          push rax
          ; 41 push string
          mov rax, s_10
          push rax
          ; 41 push boolean
          mov rax, 1
          push rax
          ; 41 call
          call strlen
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 42 push integer
          mov rax, 1
          push rax
          ; 43 syscall
          pop rax
          pop rdx
          pop rsi
          pop rdi
          syscall
          push rax
          ; 38 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 38 return
          ret
          ; 46 function definition
exit:     
          push rbp
          mov rbp, rsp
          ; 48 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 48 push integer
          mov rax, 60
          push rax
          ; 48 syscall
          pop rax
          pop rdi
          syscall
          push rax
          ; 47 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 47 return
          ret
          ; 51 function definition
raise:    
          push rbp
          mov rbp, rsp
          ; 53 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 53 push string
          mov rax, s_8
          push rax
          ; 53 push integer
          mov rax, 53
          push rax
          ; 53 push string
          mov rax, s_11
          push rax
          ; 53 push boolean
          mov rax, 1
          push rax
          ; 53 call
          call traceback
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 52 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 52 return
          ret
          ; 56 function definition
assert:   
          push rbp
          mov rbp, rsp
          ; 58 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 58 push boolean
          mov rax, 0
          push rax
          ; 58 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 58 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000002
          ; 59 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 59 push string
          mov rax, s_8
          push rax
          ; 59 push integer
          mov rax, 59
          push rax
          ; 59 push string
          mov rax, s_12
          push rax
          ; 59 push boolean
          mov rax, 1
          push rax
          ; 59 call
          call traceback
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 59 jump
          jmp end_0x0000000000000002
          ; 59 label
if_0x0000000000000002: 
          ; 59 label
end_0x0000000000000002: 
          ; 57 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 57 return
          ret
          ; 62 function definition
open:     
          push rbp
          mov rbp, rsp
          ; 64 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 65 push integer
          mov rax, 0
          push rax
          ; 67 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 67 push character
          mov rax, `r`
          push rax
          ; 67 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 67 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000003
          ; 68 push integer
          mov rax, 0
          push rax
          ; 68 bitwise or
          pop rax
          pop rbx
          or rbx, rax
          push rbx
          ; 68 jump
          jmp end_0x0000000000000003
          ; 68 label
if_0x0000000000000003: 
          ; 68 label
end_0x0000000000000003: 
          ; 69 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 69 push character
          mov rax, `w`
          push rax
          ; 69 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 69 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000004
          ; 70 push integer
          mov rax, 1
          push rax
          ; 70 bitwise or
          pop rax
          pop rbx
          or rbx, rax
          push rbx
          ; 70 jump
          jmp end_0x0000000000000004
          ; 70 label
if_0x0000000000000004: 
          ; 70 label
end_0x0000000000000004: 
          ; 72 push integer
          mov rax, 0
          push rax
          ; 73 push integer
          mov rax, 2
          push rax
          ; 74 syscall
          pop rax
          pop rdx
          pop rsi
          pop rdi
          syscall
          push rax
          ; 76 duplicate
          pop rax
          push rax
          push rax
          ; 76 push integer
          mov rax, 0
          push rax
          ; 76 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 76 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000005
          ; 77 push string
          mov rax, s_13
          push rax
          ; 77 push string
          mov rax, s_8
          push rax
          ; 77 push integer
          mov rax, 77
          push rax
          ; 77 push string
          mov rax, s_14
          push rax
          ; 77 push boolean
          mov rax, 1
          push rax
          ; 77 call
          call raise
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 77 jump
          jmp end_0x0000000000000005
          ; 77 label
if_0x0000000000000005: 
          ; 77 label
end_0x0000000000000005: 
          ; 63 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 63 return
          ret
          ; 80 function definition
read:     
          push rbp
          mov rbp, rsp
          ; 82 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 82 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 82 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 82 push integer
          mov rax, 0
          push rax
          ; 82 syscall
          pop rax
          pop rdx
          pop rsi
          pop rdi
          syscall
          push rax
          ; 83 duplicate
          pop rax
          push rax
          push rax
          ; 83 push integer
          mov rax, 0
          push rax
          ; 83 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 83 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000006
          ; 84 push string
          mov rax, s_15
          push rax
          ; 84 push string
          mov rax, s_8
          push rax
          ; 84 push integer
          mov rax, 84
          push rax
          ; 84 push string
          mov rax, s_16
          push rax
          ; 84 push boolean
          mov rax, 1
          push rax
          ; 84 call
          call raise
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 84 jump
          jmp end_0x0000000000000006
          ; 84 label
if_0x0000000000000006: 
          ; 84 label
end_0x0000000000000006: 
          ; 81 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 81 return
          ret
          ; 87 function definition
rt_sigaction: 
          push rbp
          mov rbp, rsp
          ; 89 get argument
          mov rax, rbp
          add rax, 72
          mov rbx, [rax]
          push rbx
          ; 89 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 89 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 89 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 89 push integer
          mov rax, 13
          push rax
          ; 89 syscall
          pop rax
          pop r10
          pop rdx
          pop rsi
          pop rdi
          syscall
          push rax
          ; 90 duplicate
          pop rax
          push rax
          push rax
          ; 90 push integer
          mov rax, 0
          push rax
          ; 90 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 90 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000007
          ; 91 push string
          mov rax, s_17
          push rax
          ; 91 push string
          mov rax, s_8
          push rax
          ; 91 push integer
          mov rax, 91
          push rax
          ; 91 push string
          mov rax, s_18
          push rax
          ; 91 push boolean
          mov rax, 1
          push rax
          ; 91 call
          call raise
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 91 jump
          jmp end_0x0000000000000007
          ; 91 label
if_0x0000000000000007: 
          ; 91 label
end_0x0000000000000007: 
          ; 88 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 88 return
          ret
          ; 94 label
rt_sigreturn: 
          ; 96 push integer
          mov rax, 15
          push rax
          ; 96 syscall
          pop rax
          syscall
          push rax
          ; 97 push string
          mov rax, s_19
          push rax
          ; 97 push string
          mov rax, s_8
          push rax
          ; 97 push integer
          mov rax, 97
          push rax
          ; 97 push string
          mov rax, s_20
          push rax
          ; 97 push boolean
          mov rax, 1
          push rax
          ; 97 call
          call raise
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 95 return
          ret
          ; 107 function definition
setitimer: 
          push rbp
          mov rbp, rsp
          ; 109 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 109 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 109 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 109 push integer
          mov rax, 38
          push rax
          ; 109 syscall
          pop rax
          pop rdx
          pop rsi
          pop rdi
          syscall
          push rax
          ; 110 duplicate
          pop rax
          push rax
          push rax
          ; 110 push integer
          mov rax, 0
          push rax
          ; 110 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 110 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000008
          ; 111 push string
          mov rax, s_21
          push rax
          ; 111 push string
          mov rax, s_8
          push rax
          ; 111 push integer
          mov rax, 111
          push rax
          ; 111 push string
          mov rax, s_22
          push rax
          ; 111 push boolean
          mov rax, 1
          push rax
          ; 111 call
          call raise
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 111 jump
          jmp end_0x0000000000000008
          ; 111 label
if_0x0000000000000008: 
          ; 111 label
end_0x0000000000000008: 
          ; 108 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 108 return
          ret
          ; 123 create buffer
          ; 125 function definition
setup_signal_handler: 
          push rbp
          mov rbp, rsp
          ; 127 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 127 get pointer to buffer
          mov rax, _sigaction
          push rax
          ; 127 push integer
          mov rax, 0
          push rax
          ; 127 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 127 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 128 push integer
          mov rax, 0
          push rax
          ; 128 get pointer to buffer
          mov rax, _sigaction
          push rax
          ; 128 push integer
          mov rax, 24
          push rax
          ; 128 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 128 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 130 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 130 push integer
          mov rax, 0
          push rax
          ; 130 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 130 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000009
          ; 131 push integer
          mov rax, 0
          push rax
          ; 131 get pointer to buffer
          mov rax, _sigaction
          push rax
          ; 131 push integer
          mov rax, 8
          push rax
          ; 131 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 131 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 132 push integer
          mov rax, 0
          push rax
          ; 132 get pointer to buffer
          mov rax, _sigaction
          push rax
          ; 132 push integer
          mov rax, 16
          push rax
          ; 132 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 132 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 131 jump
          jmp end_0x0000000000000009
          ; 131 label
if_0x0000000000000009: 
          ; 134 push integer
          mov rax, 4
          push rax
          ; 134 push integer
          mov rax, 67108864
          push rax
          ; 134 bitwise or
          pop rax
          pop rbx
          or rbx, rax
          push rbx
          ; 135 get pointer to buffer
          mov rax, _sigaction
          push rax
          ; 135 push integer
          mov rax, 8
          push rax
          ; 135 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 135 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 136 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 136 get pointer to buffer
          mov rax, _sigaction
          push rax
          ; 136 push integer
          mov rax, 16
          push rax
          ; 136 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 136 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 134 label
end_0x0000000000000009: 
          ; 138 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 138 get pointer to buffer
          mov rax, _sigaction
          push rax
          ; 138 push integer
          mov rax, 0
          push rax
          ; 138 push integer
          mov rax, 8
          push rax
          ; 138 push string
          mov rax, s_8
          push rax
          ; 138 push integer
          mov rax, 138
          push rax
          ; 138 push string
          mov rax, s_23
          push rax
          ; 138 push boolean
          mov rax, 1
          push rax
          ; 138 call
          call rt_sigaction
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 126 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 126 return
          ret
          ; 141 create buffer
          ; 143 function definition
set_timer: 
          push rbp
          mov rbp, rsp
          ; 145 get argument
          mov rax, rbp
          add rax, 72
          mov rbx, [rax]
          push rbx
          ; 145 get pointer to buffer
          mov rax, _itimerval
          push rax
          ; 145 push integer
          mov rax, 0
          push rax
          ; 145 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 145 push integer
          mov rax, 0
          push rax
          ; 145 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 145 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 146 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 146 get pointer to buffer
          mov rax, _itimerval
          push rax
          ; 146 push integer
          mov rax, 0
          push rax
          ; 146 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 146 push integer
          mov rax, 8
          push rax
          ; 146 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 146 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 147 get argument
          mov rax, rbp
          add rax, 72
          mov rbx, [rax]
          push rbx
          ; 147 get pointer to buffer
          mov rax, _itimerval
          push rax
          ; 147 push integer
          mov rax, 16
          push rax
          ; 147 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 147 push integer
          mov rax, 0
          push rax
          ; 147 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 147 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 148 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 148 get pointer to buffer
          mov rax, _itimerval
          push rax
          ; 148 push integer
          mov rax, 16
          push rax
          ; 148 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 148 push integer
          mov rax, 8
          push rax
          ; 148 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 148 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 150 push integer
          mov rax, 0
          push rax
          ; 150 get pointer to buffer
          mov rax, _itimerval
          push rax
          ; 150 push integer
          mov rax, 0
          push rax
          ; 150 push string
          mov rax, s_8
          push rax
          ; 150 push integer
          mov rax, 150
          push rax
          ; 150 push string
          mov rax, s_24
          push rax
          ; 150 push boolean
          mov rax, 1
          push rax
          ; 150 call
          call setitimer
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 144 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 144 return
          ret
          ; 10 function definition
NULL:     
          push rbp
          mov rbp, rsp
          ; 12 push integer
          mov rax, 0
          push rax
          ; 11 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 11 return
          ret
          ; 15 function definition
itohex:   
          push rbp
          mov rbp, rsp
          ; 17 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 18 duplicate
          pop rax
          push rax
          push rax
          ; 18 push character
          mov rax, `0`
          push rax
          ; 18 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 18 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 18 push integer
          mov rax, 1
          push rax
          ; 18 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 19 duplicate
          pop rax
          push rax
          push rax
          ; 19 push character
          mov rax, `x`
          push rax
          ; 19 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 19 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 19 push integer
          mov rax, 1
          push rax
          ; 19 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 21 push integer
          mov rax, 60
          push rax
          ; 22 label
while_0x0000000000000004: 
          ; 22 duplicate
          pop rax
          push rax
          push rax
          ; 22 push integer
          mov rax, 0
          push rax
          ; 22 is greater or equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovge rax, rbx
          push rax
          ; 22 start of while-loop
          pop rax
          test rax, rax
          jz while_0x0000000000000004_end
          ; 23 duplicate
          pop rax
          push rax
          push rax
          ; 24 push integer
          mov rax, 15
          push rax
          ; 24 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 24 shift left
          pop rcx
          pop rax
          shl rax, cl
          push rax
          ; 25 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 25 bitwise and
          pop rax
          pop rbx
          and rbx, rax
          push rbx
          ; 26 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 26 duplicate
          pop rax
          push rax
          push rax
          ; 26 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 26 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 26 shift right
          pop rcx
          pop rax
          shr rax, cl
          push rax
          ; 28 duplicate
          pop rax
          push rax
          push rax
          ; 28 push integer
          mov rax, 0
          push rax
          ; 28 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 28 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000000a
          ; 29 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 29 duplicate
          pop rax
          push rax
          push rax
          ; 29 push character
          mov rax, `0`
          push rax
          ; 29 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 29 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 29 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 29 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 29 jump
          jmp end_0x000000000000000a
          ; 29 label
if_0x000000000000000a: 
          ; 30 duplicate
          pop rax
          push rax
          push rax
          ; 30 push integer
          mov rax, 1
          push rax
          ; 30 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 30 start of if-block
          pop rax
          test rax, rax
          jz elif_0x000000000000000b
          ; 31 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 31 duplicate
          pop rax
          push rax
          push rax
          ; 31 push character
          mov rax, `1`
          push rax
          ; 31 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 31 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 31 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 31 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 30 jump
          jmp end_0x000000000000000a
          ; 30 label
elif_0x000000000000000b: 
          ; 32 duplicate
          pop rax
          push rax
          push rax
          ; 32 push integer
          mov rax, 2
          push rax
          ; 32 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 32 start of if-block
          pop rax
          test rax, rax
          jz elif_0x000000000000000c
          ; 33 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 33 duplicate
          pop rax
          push rax
          push rax
          ; 33 push character
          mov rax, `2`
          push rax
          ; 33 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 33 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 33 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 33 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 32 jump
          jmp end_0x000000000000000a
          ; 32 label
elif_0x000000000000000c: 
          ; 34 duplicate
          pop rax
          push rax
          push rax
          ; 34 push integer
          mov rax, 3
          push rax
          ; 34 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 34 start of if-block
          pop rax
          test rax, rax
          jz elif_0x000000000000000d
          ; 35 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 35 duplicate
          pop rax
          push rax
          push rax
          ; 35 push character
          mov rax, `3`
          push rax
          ; 35 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 35 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 35 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 35 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 34 jump
          jmp end_0x000000000000000a
          ; 34 label
elif_0x000000000000000d: 
          ; 36 duplicate
          pop rax
          push rax
          push rax
          ; 36 push integer
          mov rax, 4
          push rax
          ; 36 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 36 start of if-block
          pop rax
          test rax, rax
          jz elif_0x000000000000000e
          ; 37 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 37 duplicate
          pop rax
          push rax
          push rax
          ; 37 push character
          mov rax, `4`
          push rax
          ; 37 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 37 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 37 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 37 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 36 jump
          jmp end_0x000000000000000a
          ; 36 label
elif_0x000000000000000e: 
          ; 38 duplicate
          pop rax
          push rax
          push rax
          ; 38 push integer
          mov rax, 5
          push rax
          ; 38 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 38 start of if-block
          pop rax
          test rax, rax
          jz elif_0x000000000000000f
          ; 39 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 39 duplicate
          pop rax
          push rax
          push rax
          ; 39 push character
          mov rax, `5`
          push rax
          ; 39 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 39 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 39 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 39 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 38 jump
          jmp end_0x000000000000000a
          ; 38 label
elif_0x000000000000000f: 
          ; 40 duplicate
          pop rax
          push rax
          push rax
          ; 40 push integer
          mov rax, 6
          push rax
          ; 40 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 40 start of if-block
          pop rax
          test rax, rax
          jz elif_0x0000000000000010
          ; 41 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 41 duplicate
          pop rax
          push rax
          push rax
          ; 41 push character
          mov rax, `6`
          push rax
          ; 41 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 41 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 41 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 41 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 40 jump
          jmp end_0x000000000000000a
          ; 40 label
elif_0x0000000000000010: 
          ; 42 duplicate
          pop rax
          push rax
          push rax
          ; 42 push integer
          mov rax, 7
          push rax
          ; 42 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 42 start of if-block
          pop rax
          test rax, rax
          jz elif_0x0000000000000011
          ; 43 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 43 duplicate
          pop rax
          push rax
          push rax
          ; 43 push character
          mov rax, `7`
          push rax
          ; 43 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 43 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 43 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 43 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 42 jump
          jmp end_0x000000000000000a
          ; 42 label
elif_0x0000000000000011: 
          ; 44 duplicate
          pop rax
          push rax
          push rax
          ; 44 push integer
          mov rax, 8
          push rax
          ; 44 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 44 start of if-block
          pop rax
          test rax, rax
          jz elif_0x0000000000000012
          ; 45 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 45 duplicate
          pop rax
          push rax
          push rax
          ; 45 push character
          mov rax, `8`
          push rax
          ; 45 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 45 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 45 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 45 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 44 jump
          jmp end_0x000000000000000a
          ; 44 label
elif_0x0000000000000012: 
          ; 46 duplicate
          pop rax
          push rax
          push rax
          ; 46 push integer
          mov rax, 9
          push rax
          ; 46 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 46 start of if-block
          pop rax
          test rax, rax
          jz elif_0x0000000000000013
          ; 47 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 47 duplicate
          pop rax
          push rax
          push rax
          ; 47 push character
          mov rax, `9`
          push rax
          ; 47 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 47 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 47 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 47 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 46 jump
          jmp end_0x000000000000000a
          ; 46 label
elif_0x0000000000000013: 
          ; 48 duplicate
          pop rax
          push rax
          push rax
          ; 48 push integer
          mov rax, 10
          push rax
          ; 48 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 48 start of if-block
          pop rax
          test rax, rax
          jz elif_0x0000000000000014
          ; 49 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 49 duplicate
          pop rax
          push rax
          push rax
          ; 49 push character
          mov rax, `a`
          push rax
          ; 49 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 49 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 49 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 49 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 48 jump
          jmp end_0x000000000000000a
          ; 48 label
elif_0x0000000000000014: 
          ; 50 duplicate
          pop rax
          push rax
          push rax
          ; 50 push integer
          mov rax, 11
          push rax
          ; 50 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 50 start of if-block
          pop rax
          test rax, rax
          jz elif_0x0000000000000015
          ; 51 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 51 duplicate
          pop rax
          push rax
          push rax
          ; 51 push character
          mov rax, `b`
          push rax
          ; 51 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 51 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 51 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 51 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 50 jump
          jmp end_0x000000000000000a
          ; 50 label
elif_0x0000000000000015: 
          ; 52 duplicate
          pop rax
          push rax
          push rax
          ; 52 push integer
          mov rax, 12
          push rax
          ; 52 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 52 start of if-block
          pop rax
          test rax, rax
          jz elif_0x0000000000000016
          ; 53 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 53 duplicate
          pop rax
          push rax
          push rax
          ; 53 push character
          mov rax, `c`
          push rax
          ; 53 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 53 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 53 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 53 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 52 jump
          jmp end_0x000000000000000a
          ; 52 label
elif_0x0000000000000016: 
          ; 54 duplicate
          pop rax
          push rax
          push rax
          ; 54 push integer
          mov rax, 13
          push rax
          ; 54 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 54 start of if-block
          pop rax
          test rax, rax
          jz elif_0x0000000000000017
          ; 55 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 55 duplicate
          pop rax
          push rax
          push rax
          ; 55 push character
          mov rax, `d`
          push rax
          ; 55 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 55 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 55 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 55 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 54 jump
          jmp end_0x000000000000000a
          ; 54 label
elif_0x0000000000000017: 
          ; 56 duplicate
          pop rax
          push rax
          push rax
          ; 56 push integer
          mov rax, 14
          push rax
          ; 56 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 56 start of if-block
          pop rax
          test rax, rax
          jz elif_0x0000000000000018
          ; 57 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 57 duplicate
          pop rax
          push rax
          push rax
          ; 57 push character
          mov rax, `e`
          push rax
          ; 57 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 57 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 57 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 57 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 56 jump
          jmp end_0x000000000000000a
          ; 56 label
elif_0x0000000000000018: 
          ; 58 duplicate
          pop rax
          push rax
          push rax
          ; 58 push integer
          mov rax, 15
          push rax
          ; 58 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 58 start of if-block
          pop rax
          test rax, rax
          jz elif_0x0000000000000019
          ; 59 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 59 duplicate
          pop rax
          push rax
          push rax
          ; 59 push character
          mov rax, `f`
          push rax
          ; 59 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 59 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 59 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 59 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 58 jump
          jmp end_0x000000000000000a
          ; 58 label
elif_0x0000000000000019: 
          ; 58 label
end_0x000000000000000a: 
          ; 60 drop
          pop rax
          ; 60 push integer
          mov rax, 4
          push rax
          ; 60 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 60 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 60 push integer
          mov rax, 1
          push rax
          ; 60 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 60 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 22 end of while-loop
          jmp while_0x0000000000000004
while_0x0000000000000004_end: 
          ; 61 drop
          pop rax
          ; 61 push integer
          mov rax, 0
          push rax
          ; 61 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 61 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 16 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 16 return
          ret
          ; 64 function definition
max:      
          push rbp
          mov rbp, rsp
          ; 66 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 66 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 66 is greater?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovg rax, rbx
          push rax
          ; 66 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000001a
          ; 67 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 67 jump
          jmp end_0x000000000000001a
          ; 67 label
if_0x000000000000001a: 
          ; 69 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 69 label
end_0x000000000000001a: 
          ; 65 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 65 return
          ret
          ; 72 function definition
strcpy:   
          push rbp
          mov rbp, rsp
          ; 74 push integer
          mov rax, 0
          push rax
          ; 75 label
while_0x0000000000000005: 
          ; 75 duplicate
          pop rax
          push rax
          push rax
          ; 75 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 75 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 75 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 75 push integer
          mov rax, 0
          push rax
          ; 75 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 75 start of while-loop
          pop rax
          test rax, rax
          jz while_0x0000000000000005_end
          ; 76 duplicate
          pop rax
          push rax
          push rax
          ; 76 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 76 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 76 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 76 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 76 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 76 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 76 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 77 push integer
          mov rax, 1
          push rax
          ; 77 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 75 end of while-loop
          jmp while_0x0000000000000005
while_0x0000000000000005_end: 
          ; 78 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 78 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 78 push integer
          mov rax, 0
          push rax
          ; 78 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 78 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 79 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 73 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 73 return
          ret
          ; 82 function definition
replace:  
          push rbp
          mov rbp, rsp
          ; 84 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 85 label
while_0x0000000000000006: 
          ; 85 duplicate
          pop rax
          push rax
          push rax
          ; 85 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 85 push integer
          mov rax, 0
          push rax
          ; 85 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 85 start of while-loop
          pop rax
          test rax, rax
          jz while_0x0000000000000006_end
          ; 86 duplicate
          pop rax
          push rax
          push rax
          ; 86 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 86 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 86 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 86 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000001b
          ; 87 duplicate
          pop rax
          push rax
          push rax
          ; 87 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 87 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 87 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 87 jump
          jmp end_0x000000000000001b
          ; 87 label
if_0x000000000000001b: 
          ; 87 label
end_0x000000000000001b: 
          ; 88 push integer
          mov rax, 1
          push rax
          ; 88 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 85 end of while-loop
          jmp while_0x0000000000000006
while_0x0000000000000006_end: 
          ; 89 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 83 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 83 return
          ret
          ; 92 function definition
startswith: 
          push rbp
          mov rbp, rsp
          ; 94 push integer
          mov rax, 0
          push rax
          ; 95 label
while_0x0000000000000007: 
          ; 95 duplicate
          pop rax
          push rax
          push rax
          ; 95 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 95 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 95 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 95 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 95 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 95 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 95 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 95 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 95 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 95 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 95 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 95 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 95 push integer
          mov rax, 0
          push rax
          ; 95 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 95 bitwise and
          pop rax
          pop rbx
          and rbx, rax
          push rbx
          ; 95 start of while-loop
          pop rax
          test rax, rax
          jz while_0x0000000000000007_end
          ; 96 push integer
          mov rax, 1
          push rax
          ; 96 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 95 end of while-loop
          jmp while_0x0000000000000007
while_0x0000000000000007_end: 
          ; 97 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 97 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 97 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 97 push integer
          mov rax, 0
          push rax
          ; 97 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 93 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 93 return
          ret
          ; 100 function definition
streq:    
          push rbp
          mov rbp, rsp
          ; 102 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 102 push string
          mov rax, s_25
          push rax
          ; 102 push integer
          mov rax, 102
          push rax
          ; 102 push string
          mov rax, s_26
          push rax
          ; 102 push boolean
          mov rax, 1
          push rax
          ; 102 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 102 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 102 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 102 push string
          mov rax, s_25
          push rax
          ; 102 push integer
          mov rax, 102
          push rax
          ; 102 push string
          mov rax, s_26
          push rax
          ; 102 push boolean
          mov rax, 1
          push rax
          ; 102 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 102 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 102 bitwise and
          pop rax
          pop rbx
          and rbx, rax
          push rbx
          ; 102 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000001c
          ; 103 push boolean
          mov rax, 1
          push rax
          ; 103 jump
          jmp end_0x000000000000001c
          ; 103 label
if_0x000000000000001c: 
          ; 104 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 104 push string
          mov rax, s_25
          push rax
          ; 104 push integer
          mov rax, 104
          push rax
          ; 104 push string
          mov rax, s_26
          push rax
          ; 104 push boolean
          mov rax, 1
          push rax
          ; 104 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 104 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 104 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 104 push string
          mov rax, s_25
          push rax
          ; 104 push integer
          mov rax, 104
          push rax
          ; 104 push string
          mov rax, s_26
          push rax
          ; 104 push boolean
          mov rax, 1
          push rax
          ; 104 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 104 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 104 bitwise or
          pop rax
          pop rbx
          or rbx, rax
          push rbx
          ; 104 start of if-block
          pop rax
          test rax, rax
          jz elif_0x000000000000001d
          ; 105 push boolean
          mov rax, 0
          push rax
          ; 104 jump
          jmp end_0x000000000000001c
          ; 104 label
elif_0x000000000000001d: 
          ; 106 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 106 push string
          mov rax, s_25
          push rax
          ; 106 push integer
          mov rax, 106
          push rax
          ; 106 push string
          mov rax, s_26
          push rax
          ; 106 push boolean
          mov rax, 1
          push rax
          ; 106 call
          call strlen
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 106 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 106 push string
          mov rax, s_25
          push rax
          ; 106 push integer
          mov rax, 106
          push rax
          ; 106 push string
          mov rax, s_26
          push rax
          ; 106 push boolean
          mov rax, 1
          push rax
          ; 106 call
          call strlen
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 106 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 106 start of if-block
          pop rax
          test rax, rax
          jz elif_0x000000000000001e
          ; 107 push boolean
          mov rax, 0
          push rax
          ; 108 push integer
          mov rax, 0
          push rax
          ; 109 label
while_0x0000000000000008: 
          ; 109 duplicate
          pop rax
          push rax
          push rax
          ; 109 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 109 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 109 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 109 push integer
          mov rax, 0
          push rax
          ; 109 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 109 start of while-loop
          pop rax
          test rax, rax
          jz while_0x0000000000000008_end
          ; 110 duplicate
          pop rax
          push rax
          push rax
          ; 110 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 110 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 110 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 111 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 111 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 111 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 111 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 111 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 112 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 112 bitwise or
          pop rax
          pop rbx
          or rbx, rax
          push rbx
          ; 112 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 113 push integer
          mov rax, 1
          push rax
          ; 113 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 109 end of while-loop
          jmp while_0x0000000000000008
while_0x0000000000000008_end: 
          ; 114 drop
          pop rax
          ; 115 push boolean
          mov rax, 0
          push rax
          ; 115 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 106 jump
          jmp end_0x000000000000001c
          ; 106 label
elif_0x000000000000001e: 
          ; 117 push boolean
          mov rax, 0
          push rax
          ; 117 label
end_0x000000000000001c: 
          ; 101 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 101 return
          ret
          ; 135 create buffer
          ; 136 create buffer
          ; 139 create buffer
          ; 140 create buffer
          ; 142 create buffer
          ; 144 function definition
verify_memory: 
          push rbp
          mov rbp, rsp
          ; 146 get pointer to buffer
          mov rax, VERIFY_MEMORY
          push rax
          ; 146 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 146 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000001f
          ; 147 get pointer to buffer
          mov rax, DUMP_MEMORY
          push rax
          ; 147 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 147 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000020
          ; 148 push string
          mov rax, s_27
          push rax
          ; 148 push string
          mov rax, s_25
          push rax
          ; 148 push integer
          mov rax, 148
          push rax
          ; 148 push string
          mov rax, s_28
          push rax
          ; 148 push boolean
          mov rax, 1
          push rax
          ; 148 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 148 jump
          jmp end_0x0000000000000020
          ; 148 label
if_0x0000000000000020: 
          ; 148 label
end_0x0000000000000020: 
          ; 150 get pointer to buffer
          mov rax, root_page
          push rax
          ; 151 label
while_0x0000000000000009: 
          ; 151 duplicate
          pop rax
          push rax
          push rax
          ; 151 push integer
          mov rax, 0
          push rax
          ; 151 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 151 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 151 push string
          mov rax, s_25
          push rax
          ; 151 push integer
          mov rax, 151
          push rax
          ; 151 push string
          mov rax, s_28
          push rax
          ; 151 push boolean
          mov rax, 1
          push rax
          ; 151 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 151 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 151 start of while-loop
          pop rax
          test rax, rax
          jz while_0x0000000000000009_end
          ; 152 duplicate
          pop rax
          push rax
          push rax
          ; 152 push integer
          mov rax, 0
          push rax
          ; 152 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 152 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 154 get pointer to buffer
          mov rax, DUMP_MEMORY
          push rax
          ; 154 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 154 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000021
          ; 155 push string
          mov rax, s_29
          push rax
          ; 155 push string
          mov rax, s_25
          push rax
          ; 155 push integer
          mov rax, 155
          push rax
          ; 155 push string
          mov rax, s_28
          push rax
          ; 155 push boolean
          mov rax, 1
          push rax
          ; 155 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 156 duplicate
          pop rax
          push rax
          push rax
          ; 156 get pointer to buffer
          mov rax, _vm_buf
          push rax
          ; 156 push string
          mov rax, s_25
          push rax
          ; 156 push integer
          mov rax, 156
          push rax
          ; 156 push string
          mov rax, s_28
          push rax
          ; 156 push boolean
          mov rax, 1
          push rax
          ; 156 call
          call itohex
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 156 get pointer to buffer
          mov rax, _vm_buf
          push rax
          ; 156 push string
          mov rax, s_25
          push rax
          ; 156 push integer
          mov rax, 156
          push rax
          ; 156 push string
          mov rax, s_28
          push rax
          ; 156 push boolean
          mov rax, 1
          push rax
          ; 156 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 157 push string
          mov rax, s_7
          push rax
          ; 157 push string
          mov rax, s_25
          push rax
          ; 157 push integer
          mov rax, 157
          push rax
          ; 157 push string
          mov rax, s_28
          push rax
          ; 157 push boolean
          mov rax, 1
          push rax
          ; 157 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 159 push string
          mov rax, s_30
          push rax
          ; 159 push string
          mov rax, s_25
          push rax
          ; 159 push integer
          mov rax, 159
          push rax
          ; 159 push string
          mov rax, s_28
          push rax
          ; 159 push boolean
          mov rax, 1
          push rax
          ; 159 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 160 duplicate
          pop rax
          push rax
          push rax
          ; 160 push integer
          mov rax, 8
          push rax
          ; 160 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 160 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 160 get pointer to buffer
          mov rax, _vm_buf
          push rax
          ; 160 push string
          mov rax, s_25
          push rax
          ; 160 push integer
          mov rax, 160
          push rax
          ; 160 push string
          mov rax, s_28
          push rax
          ; 160 push boolean
          mov rax, 1
          push rax
          ; 160 call
          call itohex
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 160 get pointer to buffer
          mov rax, _vm_buf
          push rax
          ; 160 push string
          mov rax, s_25
          push rax
          ; 160 push integer
          mov rax, 160
          push rax
          ; 160 push string
          mov rax, s_28
          push rax
          ; 160 push boolean
          mov rax, 1
          push rax
          ; 160 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 161 push string
          mov rax, s_7
          push rax
          ; 161 push string
          mov rax, s_25
          push rax
          ; 161 push integer
          mov rax, 161
          push rax
          ; 161 push string
          mov rax, s_28
          push rax
          ; 161 push boolean
          mov rax, 1
          push rax
          ; 161 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 163 push string
          mov rax, s_31
          push rax
          ; 163 push string
          mov rax, s_25
          push rax
          ; 163 push integer
          mov rax, 163
          push rax
          ; 163 push string
          mov rax, s_28
          push rax
          ; 163 push boolean
          mov rax, 1
          push rax
          ; 163 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 164 duplicate
          pop rax
          push rax
          push rax
          ; 164 push integer
          mov rax, 0
          push rax
          ; 164 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 164 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 164 get pointer to buffer
          mov rax, _vm_buf
          push rax
          ; 164 push string
          mov rax, s_25
          push rax
          ; 164 push integer
          mov rax, 164
          push rax
          ; 164 push string
          mov rax, s_28
          push rax
          ; 164 push boolean
          mov rax, 1
          push rax
          ; 164 call
          call itohex
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 164 get pointer to buffer
          mov rax, _vm_buf
          push rax
          ; 164 push string
          mov rax, s_25
          push rax
          ; 164 push integer
          mov rax, 164
          push rax
          ; 164 push string
          mov rax, s_28
          push rax
          ; 164 push boolean
          mov rax, 1
          push rax
          ; 164 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 165 push string
          mov rax, s_7
          push rax
          ; 165 push string
          mov rax, s_25
          push rax
          ; 165 push integer
          mov rax, 165
          push rax
          ; 165 push string
          mov rax, s_28
          push rax
          ; 165 push boolean
          mov rax, 1
          push rax
          ; 165 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 167 push string
          mov rax, s_32
          push rax
          ; 167 push string
          mov rax, s_25
          push rax
          ; 167 push integer
          mov rax, 167
          push rax
          ; 167 push string
          mov rax, s_28
          push rax
          ; 167 push boolean
          mov rax, 1
          push rax
          ; 167 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 168 duplicate
          pop rax
          push rax
          push rax
          ; 168 push integer
          mov rax, 16
          push rax
          ; 168 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 168 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 168 get pointer to buffer
          mov rax, _vm_buf
          push rax
          ; 168 push string
          mov rax, s_25
          push rax
          ; 168 push integer
          mov rax, 168
          push rax
          ; 168 push string
          mov rax, s_28
          push rax
          ; 168 push boolean
          mov rax, 1
          push rax
          ; 168 call
          call itohex
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 168 get pointer to buffer
          mov rax, _vm_buf
          push rax
          ; 168 push string
          mov rax, s_25
          push rax
          ; 168 push integer
          mov rax, 168
          push rax
          ; 168 push string
          mov rax, s_28
          push rax
          ; 168 push boolean
          mov rax, 1
          push rax
          ; 168 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 169 push string
          mov rax, s_7
          push rax
          ; 169 push string
          mov rax, s_25
          push rax
          ; 169 push integer
          mov rax, 169
          push rax
          ; 169 push string
          mov rax, s_28
          push rax
          ; 169 push boolean
          mov rax, 1
          push rax
          ; 169 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 155 jump
          jmp end_0x0000000000000021
          ; 155 label
if_0x0000000000000021: 
          ; 155 label
end_0x0000000000000021: 
          ; 171 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 171 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 171 push integer
          mov rax, 8
          push rax
          ; 171 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 171 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 171 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 172 push string
          mov rax, s_33
          push rax
          ; 172 push string
          mov rax, s_25
          push rax
          ; 172 push integer
          mov rax, 172
          push rax
          ; 172 push string
          mov rax, s_28
          push rax
          ; 172 push boolean
          mov rax, 1
          push rax
          ; 172 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 173 duplicate
          pop rax
          push rax
          push rax
          ; 173 push integer
          mov rax, 16
          push rax
          ; 173 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 173 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 173 push integer
          mov rax, 4096
          push rax
          ; 173 is greater or equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovge rax, rbx
          push rax
          ; 174 push string
          mov rax, s_34
          push rax
          ; 174 push string
          mov rax, s_25
          push rax
          ; 174 push integer
          mov rax, 174
          push rax
          ; 174 push string
          mov rax, s_28
          push rax
          ; 174 push boolean
          mov rax, 1
          push rax
          ; 174 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 176 duplicate
          pop rax
          push rax
          push rax
          ; 176 push integer
          mov rax, 16
          push rax
          ; 176 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 176 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 176 push integer
          mov rax, 24
          push rax
          ; 176 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 177 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 177 push integer
          mov rax, 24
          push rax
          ; 177 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 179 duplicate
          pop rax
          push rax
          push rax
          ; 179 push integer
          mov rax, 0
          push rax
          ; 179 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 179 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 179 push string
          mov rax, s_25
          push rax
          ; 179 push integer
          mov rax, 179
          push rax
          ; 179 push string
          mov rax, s_28
          push rax
          ; 179 push boolean
          mov rax, 1
          push rax
          ; 179 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 179 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 180 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 180 push integer
          mov rax, 8
          push rax
          ; 180 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 180 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 180 push string
          mov rax, s_25
          push rax
          ; 180 push integer
          mov rax, 180
          push rax
          ; 180 push string
          mov rax, s_28
          push rax
          ; 180 push boolean
          mov rax, 1
          push rax
          ; 180 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 180 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 180 bitwise and
          pop rax
          pop rbx
          and rbx, rax
          push rbx
          ; 181 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 181 push integer
          mov rax, 24
          push rax
          ; 181 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 181 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 181 push boolean
          mov rax, 1
          push rax
          ; 181 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 181 bitwise and
          pop rax
          pop rbx
          and rbx, rax
          push rbx
          ; 181 push boolean
          mov rax, 0
          push rax
          ; 181 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 182 push string
          mov rax, s_35
          push rax
          ; 182 push string
          mov rax, s_25
          push rax
          ; 182 push integer
          mov rax, 182
          push rax
          ; 182 push string
          mov rax, s_28
          push rax
          ; 182 push boolean
          mov rax, 1
          push rax
          ; 182 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 184 label
while_0x000000000000000a: 
          ; 184 duplicate
          pop rax
          push rax
          push rax
          ; 184 push string
          mov rax, s_25
          push rax
          ; 184 push integer
          mov rax, 184
          push rax
          ; 184 push string
          mov rax, s_28
          push rax
          ; 184 push boolean
          mov rax, 1
          push rax
          ; 184 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 184 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 184 start of while-loop
          pop rax
          test rax, rax
          jz while_0x000000000000000a_end
          ; 185 get pointer to buffer
          mov rax, DUMP_MEMORY
          push rax
          ; 185 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 185 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000022
          ; 186 push string
          mov rax, s_36
          push rax
          ; 186 push string
          mov rax, s_25
          push rax
          ; 186 push integer
          mov rax, 186
          push rax
          ; 186 push string
          mov rax, s_28
          push rax
          ; 186 push boolean
          mov rax, 1
          push rax
          ; 186 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 187 duplicate
          pop rax
          push rax
          push rax
          ; 187 get pointer to buffer
          mov rax, _vm_buf
          push rax
          ; 187 push string
          mov rax, s_25
          push rax
          ; 187 push integer
          mov rax, 187
          push rax
          ; 187 push string
          mov rax, s_28
          push rax
          ; 187 push boolean
          mov rax, 1
          push rax
          ; 187 call
          call itohex
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 187 get pointer to buffer
          mov rax, _vm_buf
          push rax
          ; 187 push string
          mov rax, s_25
          push rax
          ; 187 push integer
          mov rax, 187
          push rax
          ; 187 push string
          mov rax, s_28
          push rax
          ; 187 push boolean
          mov rax, 1
          push rax
          ; 187 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 188 push string
          mov rax, s_7
          push rax
          ; 188 push string
          mov rax, s_25
          push rax
          ; 188 push integer
          mov rax, 188
          push rax
          ; 188 push string
          mov rax, s_28
          push rax
          ; 188 push boolean
          mov rax, 1
          push rax
          ; 188 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 190 push string
          mov rax, s_37
          push rax
          ; 190 push string
          mov rax, s_25
          push rax
          ; 190 push integer
          mov rax, 190
          push rax
          ; 190 push string
          mov rax, s_28
          push rax
          ; 190 push boolean
          mov rax, 1
          push rax
          ; 190 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 191 duplicate
          pop rax
          push rax
          push rax
          ; 191 push integer
          mov rax, 16
          push rax
          ; 191 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 191 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 191 get pointer to buffer
          mov rax, _vm_buf
          push rax
          ; 191 push string
          mov rax, s_25
          push rax
          ; 191 push integer
          mov rax, 191
          push rax
          ; 191 push string
          mov rax, s_28
          push rax
          ; 191 push boolean
          mov rax, 1
          push rax
          ; 191 call
          call itohex
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 191 get pointer to buffer
          mov rax, _vm_buf
          push rax
          ; 191 push string
          mov rax, s_25
          push rax
          ; 191 push integer
          mov rax, 191
          push rax
          ; 191 push string
          mov rax, s_28
          push rax
          ; 191 push boolean
          mov rax, 1
          push rax
          ; 191 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 192 push string
          mov rax, s_7
          push rax
          ; 192 push string
          mov rax, s_25
          push rax
          ; 192 push integer
          mov rax, 192
          push rax
          ; 192 push string
          mov rax, s_28
          push rax
          ; 192 push boolean
          mov rax, 1
          push rax
          ; 192 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 194 push string
          mov rax, s_38
          push rax
          ; 194 push string
          mov rax, s_25
          push rax
          ; 194 push integer
          mov rax, 194
          push rax
          ; 194 push string
          mov rax, s_28
          push rax
          ; 194 push boolean
          mov rax, 1
          push rax
          ; 194 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 195 duplicate
          pop rax
          push rax
          push rax
          ; 195 push integer
          mov rax, 0
          push rax
          ; 195 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 195 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 195 get pointer to buffer
          mov rax, _vm_buf
          push rax
          ; 195 push string
          mov rax, s_25
          push rax
          ; 195 push integer
          mov rax, 195
          push rax
          ; 195 push string
          mov rax, s_28
          push rax
          ; 195 push boolean
          mov rax, 1
          push rax
          ; 195 call
          call itohex
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 195 get pointer to buffer
          mov rax, _vm_buf
          push rax
          ; 195 push string
          mov rax, s_25
          push rax
          ; 195 push integer
          mov rax, 195
          push rax
          ; 195 push string
          mov rax, s_28
          push rax
          ; 195 push boolean
          mov rax, 1
          push rax
          ; 195 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 196 push string
          mov rax, s_7
          push rax
          ; 196 push string
          mov rax, s_25
          push rax
          ; 196 push integer
          mov rax, 196
          push rax
          ; 196 push string
          mov rax, s_28
          push rax
          ; 196 push boolean
          mov rax, 1
          push rax
          ; 196 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 198 push string
          mov rax, s_39
          push rax
          ; 198 push string
          mov rax, s_25
          push rax
          ; 198 push integer
          mov rax, 198
          push rax
          ; 198 push string
          mov rax, s_28
          push rax
          ; 198 push boolean
          mov rax, 1
          push rax
          ; 198 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 199 duplicate
          pop rax
          push rax
          push rax
          ; 199 push integer
          mov rax, 8
          push rax
          ; 199 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 199 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 199 get pointer to buffer
          mov rax, _vm_buf
          push rax
          ; 199 push string
          mov rax, s_25
          push rax
          ; 199 push integer
          mov rax, 199
          push rax
          ; 199 push string
          mov rax, s_28
          push rax
          ; 199 push boolean
          mov rax, 1
          push rax
          ; 199 call
          call itohex
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 199 get pointer to buffer
          mov rax, _vm_buf
          push rax
          ; 199 push string
          mov rax, s_25
          push rax
          ; 199 push integer
          mov rax, 199
          push rax
          ; 199 push string
          mov rax, s_28
          push rax
          ; 199 push boolean
          mov rax, 1
          push rax
          ; 199 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 200 push string
          mov rax, s_7
          push rax
          ; 200 push string
          mov rax, s_25
          push rax
          ; 200 push integer
          mov rax, 200
          push rax
          ; 200 push string
          mov rax, s_28
          push rax
          ; 200 push boolean
          mov rax, 1
          push rax
          ; 200 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 202 push string
          mov rax, s_40
          push rax
          ; 202 push string
          mov rax, s_25
          push rax
          ; 202 push integer
          mov rax, 202
          push rax
          ; 202 push string
          mov rax, s_28
          push rax
          ; 202 push boolean
          mov rax, 1
          push rax
          ; 202 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 203 duplicate
          pop rax
          push rax
          push rax
          ; 203 push integer
          mov rax, 24
          push rax
          ; 203 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 203 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 203 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000023
          ; 204 push string
          mov rax, s_41
          push rax
          ; 204 push string
          mov rax, s_25
          push rax
          ; 204 push integer
          mov rax, 204
          push rax
          ; 204 push string
          mov rax, s_28
          push rax
          ; 204 push boolean
          mov rax, 1
          push rax
          ; 204 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 204 jump
          jmp end_0x0000000000000023
          ; 204 label
if_0x0000000000000023: 
          ; 206 push string
          mov rax, s_42
          push rax
          ; 206 push string
          mov rax, s_25
          push rax
          ; 206 push integer
          mov rax, 206
          push rax
          ; 206 push string
          mov rax, s_28
          push rax
          ; 206 push boolean
          mov rax, 1
          push rax
          ; 206 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 206 label
end_0x0000000000000023: 
          ; 186 jump
          jmp end_0x0000000000000022
          ; 186 label
if_0x0000000000000022: 
          ; 186 label
end_0x0000000000000022: 
          ; 208 duplicate
          pop rax
          push rax
          push rax
          ; 208 push integer
          mov rax, 16
          push rax
          ; 208 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 208 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 208 push integer
          mov rax, 25
          push rax
          ; 208 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 209 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 209 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 209 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 210 duplicate
          pop rax
          push rax
          push rax
          ; 210 push integer
          mov rax, 0
          push rax
          ; 210 is greater or equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovge rax, rbx
          push rax
          ; 210 push string
          mov rax, s_43
          push rax
          ; 210 push string
          mov rax, s_25
          push rax
          ; 210 push integer
          mov rax, 210
          push rax
          ; 210 push string
          mov rax, s_28
          push rax
          ; 210 push boolean
          mov rax, 1
          push rax
          ; 210 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 211 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 213 duplicate
          pop rax
          push rax
          push rax
          ; 213 push integer
          mov rax, 0
          push rax
          ; 213 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 213 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 213 push string
          mov rax, s_25
          push rax
          ; 213 push integer
          mov rax, 213
          push rax
          ; 213 push string
          mov rax, s_28
          push rax
          ; 213 push boolean
          mov rax, 1
          push rax
          ; 213 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 213 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 214 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 214 duplicate
          pop rax
          push rax
          push rax
          ; 214 push integer
          mov rax, 0
          push rax
          ; 214 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 214 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 214 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 214 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 214 push integer
          mov rax, 4096
          push rax
          ; 214 is less or equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovle rax, rbx
          push rax
          ; 214 bitwise or
          pop rax
          pop rbx
          or rbx, rax
          push rbx
          ; 215 push string
          mov rax, s_44
          push rax
          ; 215 push string
          mov rax, s_25
          push rax
          ; 215 push integer
          mov rax, 215
          push rax
          ; 215 push string
          mov rax, s_28
          push rax
          ; 215 push boolean
          mov rax, 1
          push rax
          ; 215 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 217 duplicate
          pop rax
          push rax
          push rax
          ; 217 push integer
          mov rax, 8
          push rax
          ; 217 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 217 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 217 push string
          mov rax, s_25
          push rax
          ; 217 push integer
          mov rax, 217
          push rax
          ; 217 push string
          mov rax, s_28
          push rax
          ; 217 push boolean
          mov rax, 1
          push rax
          ; 217 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 217 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 218 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 218 duplicate
          pop rax
          push rax
          push rax
          ; 218 push integer
          mov rax, 8
          push rax
          ; 218 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 218 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 218 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 218 push integer
          mov rax, 4096
          push rax
          ; 218 is less or equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovle rax, rbx
          push rax
          ; 218 bitwise or
          pop rax
          pop rbx
          or rbx, rax
          push rbx
          ; 219 push string
          mov rax, s_45
          push rax
          ; 219 push string
          mov rax, s_25
          push rax
          ; 219 push integer
          mov rax, 219
          push rax
          ; 219 push string
          mov rax, s_28
          push rax
          ; 219 push boolean
          mov rax, 1
          push rax
          ; 219 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 221 duplicate
          pop rax
          push rax
          push rax
          ; 221 push integer
          mov rax, 0
          push rax
          ; 221 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 221 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 221 push string
          mov rax, s_25
          push rax
          ; 221 push integer
          mov rax, 221
          push rax
          ; 221 push string
          mov rax, s_28
          push rax
          ; 221 push boolean
          mov rax, 1
          push rax
          ; 221 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 221 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 221 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000024
          ; 222 duplicate
          pop rax
          push rax
          push rax
          ; 222 push integer
          mov rax, 0
          push rax
          ; 222 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 222 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 223 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 223 push integer
          mov rax, 16
          push rax
          ; 223 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 223 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 223 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 224 push integer
          mov rax, 25
          push rax
          ; 224 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 225 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 225 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 225 push string
          mov rax, s_46
          push rax
          ; 225 push string
          mov rax, s_25
          push rax
          ; 225 push integer
          mov rax, 225
          push rax
          ; 225 push string
          mov rax, s_28
          push rax
          ; 225 push boolean
          mov rax, 1
          push rax
          ; 225 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 222 jump
          jmp end_0x0000000000000024
          ; 222 label
if_0x0000000000000024: 
          ; 222 label
end_0x0000000000000024: 
          ; 227 duplicate
          pop rax
          push rax
          push rax
          ; 227 push integer
          mov rax, 8
          push rax
          ; 227 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 227 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 227 push string
          mov rax, s_25
          push rax
          ; 227 push integer
          mov rax, 227
          push rax
          ; 227 push string
          mov rax, s_28
          push rax
          ; 227 push boolean
          mov rax, 1
          push rax
          ; 227 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 227 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 227 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000025
          ; 228 duplicate
          pop rax
          push rax
          push rax
          ; 228 push integer
          mov rax, 8
          push rax
          ; 228 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 228 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 229 duplicate
          pop rax
          push rax
          push rax
          ; 229 push integer
          mov rax, 16
          push rax
          ; 229 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 229 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 229 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 230 push integer
          mov rax, 25
          push rax
          ; 230 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 231 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 231 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 231 push string
          mov rax, s_47
          push rax
          ; 231 push string
          mov rax, s_25
          push rax
          ; 231 push integer
          mov rax, 231
          push rax
          ; 231 push string
          mov rax, s_28
          push rax
          ; 231 push boolean
          mov rax, 1
          push rax
          ; 231 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 228 jump
          jmp end_0x0000000000000025
          ; 228 label
if_0x0000000000000025: 
          ; 228 label
end_0x0000000000000025: 
          ; 233 push integer
          mov rax, 0
          push rax
          ; 233 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 233 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 184 end of while-loop
          jmp while_0x000000000000000a
while_0x000000000000000a_end: 
          ; 234 drop
          pop rax
          ; 236 duplicate
          pop rax
          push rax
          push rax
          ; 236 push integer
          mov rax, 0
          push rax
          ; 236 is greater?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovg rax, rbx
          push rax
          ; 236 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000026
          ; 237 get pointer to buffer
          mov rax, DUMP_MEMORY
          push rax
          ; 237 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 237 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000027
          ; 238 push string
          mov rax, s_48
          push rax
          ; 238 push string
          mov rax, s_25
          push rax
          ; 238 push integer
          mov rax, 238
          push rax
          ; 238 push string
          mov rax, s_28
          push rax
          ; 238 push boolean
          mov rax, 1
          push rax
          ; 238 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 239 duplicate
          pop rax
          push rax
          push rax
          ; 239 get pointer to buffer
          mov rax, _vm_buf
          push rax
          ; 239 push string
          mov rax, s_25
          push rax
          ; 239 push integer
          mov rax, 239
          push rax
          ; 239 push string
          mov rax, s_28
          push rax
          ; 239 push boolean
          mov rax, 1
          push rax
          ; 239 call
          call itohex
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 239 get pointer to buffer
          mov rax, _vm_buf
          push rax
          ; 239 push string
          mov rax, s_25
          push rax
          ; 239 push integer
          mov rax, 239
          push rax
          ; 239 push string
          mov rax, s_28
          push rax
          ; 239 push boolean
          mov rax, 1
          push rax
          ; 239 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 240 push string
          mov rax, s_7
          push rax
          ; 240 push string
          mov rax, s_25
          push rax
          ; 240 push integer
          mov rax, 240
          push rax
          ; 240 push string
          mov rax, s_28
          push rax
          ; 240 push boolean
          mov rax, 1
          push rax
          ; 240 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 238 jump
          jmp end_0x0000000000000027
          ; 238 label
if_0x0000000000000027: 
          ; 238 label
end_0x0000000000000027: 
          ; 241 push boolean
          mov rax, 0
          push rax
          ; 241 push string
          mov rax, s_49
          push rax
          ; 241 push string
          mov rax, s_25
          push rax
          ; 241 push integer
          mov rax, 241
          push rax
          ; 241 push string
          mov rax, s_28
          push rax
          ; 241 push boolean
          mov rax, 1
          push rax
          ; 241 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 237 jump
          jmp end_0x0000000000000026
          ; 237 label
if_0x0000000000000026: 
          ; 237 label
end_0x0000000000000026: 
          ; 242 drop
          pop rax
          ; 151 end of while-loop
          jmp while_0x0000000000000009
while_0x0000000000000009_end: 
          ; 244 drop
          pop rax
          ; 245 get pointer to buffer
          mov rax, DUMP_MEMORY
          push rax
          ; 245 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 245 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000028
          ; 246 push string
          mov rax, s_50
          push rax
          ; 246 push string
          mov rax, s_25
          push rax
          ; 246 push integer
          mov rax, 246
          push rax
          ; 246 push string
          mov rax, s_28
          push rax
          ; 246 push boolean
          mov rax, 1
          push rax
          ; 246 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 246 jump
          jmp end_0x0000000000000028
          ; 246 label
if_0x0000000000000028: 
          ; 246 label
end_0x0000000000000028: 
          ; 147 jump
          jmp end_0x000000000000001f
          ; 147 label
if_0x000000000000001f: 
          ; 147 label
end_0x000000000000001f: 
          ; 145 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 145 return
          ret
          ; 249 function definition
_malloc_get_next_page: 
          push rbp
          mov rbp, rsp
          ; 251 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 251 push integer
          mov rax, 4096
          push rax
          ; 251 is greater or equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovge rax, rbx
          push rax
          ; 251 push string
          mov rax, s_51
          push rax
          ; 251 push string
          mov rax, s_25
          push rax
          ; 251 push integer
          mov rax, 251
          push rax
          ; 251 push string
          mov rax, s_52
          push rax
          ; 251 push boolean
          mov rax, 1
          push rax
          ; 251 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 253 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 253 push integer
          mov rax, 0
          push rax
          ; 253 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 253 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 253 push string
          mov rax, s_25
          push rax
          ; 253 push integer
          mov rax, 253
          push rax
          ; 253 push string
          mov rax, s_52
          push rax
          ; 253 push boolean
          mov rax, 1
          push rax
          ; 253 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 253 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 253 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000029
          ; 254 push string
          mov rax, s_25
          push rax
          ; 254 push integer
          mov rax, 254
          push rax
          ; 254 push string
          mov rax, s_52
          push rax
          ; 254 push boolean
          mov rax, 1
          push rax
          ; 254 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 255 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 256 push integer
          mov rax, 1
          push rax
          ; 256 push integer
          mov rax, 2
          push rax
          ; 256 bitwise or
          pop rax
          pop rbx
          or rbx, rax
          push rbx
          ; 257 push integer
          mov rax, 2
          push rax
          ; 257 push integer
          mov rax, 32
          push rax
          ; 257 bitwise or
          pop rax
          pop rbx
          or rbx, rax
          push rbx
          ; 258 push integer
          mov rax, 0
          push rax
          ; 258 push integer
          mov rax, 1
          push rax
          ; 258 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 259 push integer
          mov rax, 0
          push rax
          ; 260 push integer
          mov rax, 9
          push rax
          ; 261 syscall
          pop rax
          pop r9
          pop r8
          pop r10
          pop rdx
          pop rsi
          pop rdi
          syscall
          push rax
          ; 263 duplicate
          pop rax
          push rax
          push rax
          ; 263 push integer
          mov rax, 0
          push rax
          ; 263 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 263 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000002a
          ; 264 push string
          mov rax, s_53
          push rax
          ; 264 push string
          mov rax, s_25
          push rax
          ; 264 push integer
          mov rax, 264
          push rax
          ; 264 push string
          mov rax, s_52
          push rax
          ; 264 push boolean
          mov rax, 1
          push rax
          ; 264 call
          call raise
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 264 jump
          jmp end_0x000000000000002a
          ; 264 label
if_0x000000000000002a: 
          ; 264 label
end_0x000000000000002a: 
          ; 269 duplicate
          pop rax
          push rax
          push rax
          ; 269 push integer
          mov rax, 0
          push rax
          ; 269 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 269 push string
          mov rax, s_25
          push rax
          ; 269 push integer
          mov rax, 269
          push rax
          ; 269 push string
          mov rax, s_52
          push rax
          ; 269 push boolean
          mov rax, 1
          push rax
          ; 269 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 269 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 269 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 270 duplicate
          pop rax
          push rax
          push rax
          ; 270 push integer
          mov rax, 8
          push rax
          ; 270 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 270 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 270 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 270 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 271 duplicate
          pop rax
          push rax
          push rax
          ; 271 push integer
          mov rax, 16
          push rax
          ; 271 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 271 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 271 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 271 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 274 duplicate
          pop rax
          push rax
          push rax
          ; 274 push integer
          mov rax, 24
          push rax
          ; 274 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 275 duplicate
          pop rax
          push rax
          push rax
          ; 275 push integer
          mov rax, 24
          push rax
          ; 275 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 275 push boolean
          mov rax, 1
          push rax
          ; 275 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 275 set boolean value
          pop rax
          pop rbx
          mov [rax], bl
          ; 276 duplicate
          pop rax
          push rax
          push rax
          ; 276 push integer
          mov rax, 0
          push rax
          ; 276 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 276 push string
          mov rax, s_25
          push rax
          ; 276 push integer
          mov rax, 276
          push rax
          ; 276 push string
          mov rax, s_52
          push rax
          ; 276 push boolean
          mov rax, 1
          push rax
          ; 276 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 276 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 276 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 277 duplicate
          pop rax
          push rax
          push rax
          ; 277 push integer
          mov rax, 8
          push rax
          ; 277 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 277 push string
          mov rax, s_25
          push rax
          ; 277 push integer
          mov rax, 277
          push rax
          ; 277 push string
          mov rax, s_52
          push rax
          ; 277 push boolean
          mov rax, 1
          push rax
          ; 277 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 277 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 277 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 278 duplicate
          pop rax
          push rax
          push rax
          ; 278 push integer
          mov rax, 16
          push rax
          ; 278 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 278 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 278 push integer
          mov rax, 24
          push rax
          ; 278 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 279 push integer
          mov rax, 25
          push rax
          ; 279 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 279 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 279 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 280 drop
          pop rax
          ; 282 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 282 push integer
          mov rax, 0
          push rax
          ; 282 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 282 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 254 jump
          jmp end_0x0000000000000029
          ; 254 label
if_0x0000000000000029: 
          ; 254 label
end_0x0000000000000029: 
          ; 285 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 285 push integer
          mov rax, 0
          push rax
          ; 285 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 285 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 287 duplicate
          pop rax
          push rax
          push rax
          ; 287 push string
          mov rax, s_25
          push rax
          ; 287 push integer
          mov rax, 287
          push rax
          ; 287 push string
          mov rax, s_52
          push rax
          ; 287 push boolean
          mov rax, 1
          push rax
          ; 287 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 287 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 287 push string
          mov rax, s_54
          push rax
          ; 287 push string
          mov rax, s_25
          push rax
          ; 287 push integer
          mov rax, 287
          push rax
          ; 287 push string
          mov rax, s_52
          push rax
          ; 287 push boolean
          mov rax, 1
          push rax
          ; 287 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 250 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 250 return
          ret
          ; 290 function definition
_malloc_split_block: 
          push rbp
          mov rbp, rsp
          ; 293 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 293 push integer
          mov rax, 24
          push rax
          ; 293 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 293 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 293 push string
          mov rax, s_55
          push rax
          ; 293 push string
          mov rax, s_25
          push rax
          ; 293 push integer
          mov rax, 293
          push rax
          ; 293 push string
          mov rax, s_56
          push rax
          ; 293 push boolean
          mov rax, 1
          push rax
          ; 293 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 295 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 295 push integer
          mov rax, 0
          push rax
          ; 295 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 295 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 297 push boolean
          mov rax, 0
          push rax
          ; 297 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 297 push integer
          mov rax, 24
          push rax
          ; 297 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 297 set boolean value
          pop rax
          pop rbx
          mov [rax], bl
          ; 300 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 300 push integer
          mov rax, 25
          push rax
          ; 300 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 300 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 300 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 302 duplicate
          pop rax
          push rax
          push rax
          ; 302 push integer
          mov rax, 0
          push rax
          ; 302 is greater?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovg rax, rbx
          push rax
          ; 302 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000002b
          ; 304 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 304 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 304 push integer
          mov rax, 16
          push rax
          ; 304 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 304 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 306 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 306 push integer
          mov rax, 25
          push rax
          ; 306 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 306 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 306 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 306 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 306 push integer
          mov rax, 0
          push rax
          ; 306 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 306 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 308 push boolean
          mov rax, 1
          push rax
          ; 308 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 308 push integer
          mov rax, 0
          push rax
          ; 308 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 308 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 308 push integer
          mov rax, 24
          push rax
          ; 308 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 308 set boolean value
          pop rax
          pop rbx
          mov [rax], bl
          ; 309 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 309 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 309 push integer
          mov rax, 0
          push rax
          ; 309 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 309 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 309 push integer
          mov rax, 8
          push rax
          ; 309 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 309 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 310 duplicate
          pop rax
          push rax
          push rax
          ; 310 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 310 push integer
          mov rax, 0
          push rax
          ; 310 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 310 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 310 push integer
          mov rax, 16
          push rax
          ; 310 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 310 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 311 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 311 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 311 push integer
          mov rax, 0
          push rax
          ; 311 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 311 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 311 push integer
          mov rax, 0
          push rax
          ; 311 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 311 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 313 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 313 push integer
          mov rax, 0
          push rax
          ; 313 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 313 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 313 push integer
          mov rax, 0
          push rax
          ; 313 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 313 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 313 push string
          mov rax, s_25
          push rax
          ; 313 push integer
          mov rax, 313
          push rax
          ; 313 push string
          mov rax, s_56
          push rax
          ; 313 push boolean
          mov rax, 1
          push rax
          ; 313 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 313 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 313 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000002c
          ; 314 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 314 push integer
          mov rax, 0
          push rax
          ; 314 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 314 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 314 duplicate
          pop rax
          push rax
          push rax
          ; 314 push integer
          mov rax, 0
          push rax
          ; 314 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 314 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 314 push integer
          mov rax, 8
          push rax
          ; 314 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 314 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 314 jump
          jmp end_0x000000000000002c
          ; 314 label
if_0x000000000000002c: 
          ; 314 label
end_0x000000000000002c: 
          ; 303 jump
          jmp end_0x000000000000002b
          ; 303 label
if_0x000000000000002b: 
          ; 303 label
end_0x000000000000002b: 
          ; 316 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 291 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 291 return
          ret
          ; 319 function definition
_malloc_block_is_available_or_NULL: 
          push rbp
          mov rbp, rsp
          ; 321 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 321 push string
          mov rax, s_25
          push rax
          ; 321 push integer
          mov rax, 321
          push rax
          ; 321 push string
          mov rax, s_57
          push rax
          ; 321 push boolean
          mov rax, 1
          push rax
          ; 321 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 321 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 321 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000002d
          ; 322 push boolean
          mov rax, 1
          push rax
          ; 322 jump
          jmp end_0x000000000000002d
          ; 322 label
if_0x000000000000002d: 
          ; 324 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 324 push integer
          mov rax, 24
          push rax
          ; 324 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 324 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 325 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 325 push integer
          mov rax, 16
          push rax
          ; 325 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 325 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 325 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 325 is greater or equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovge rax, rbx
          push rax
          ; 325 bitwise and
          pop rax
          pop rbx
          and rbx, rax
          push rbx
          ; 324 label
end_0x000000000000002d: 
          ; 320 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 320 return
          ret
          ; 328 function definition
malloc:   
          push rbp
          mov rbp, rsp
          ; 332 get pointer to buffer
          mov rax, current_page
          push rax
          ; 332 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 332 push string
          mov rax, s_25
          push rax
          ; 332 push integer
          mov rax, 332
          push rax
          ; 332 push string
          mov rax, s_58
          push rax
          ; 332 push boolean
          mov rax, 1
          push rax
          ; 332 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 332 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 332 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000002e
          ; 333 get pointer to buffer
          mov rax, root_page
          push rax
          ; 333 get pointer to buffer
          mov rax, current_page
          push rax
          ; 333 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 333 jump
          jmp end_0x000000000000002e
          ; 333 label
if_0x000000000000002e: 
          ; 333 label
end_0x000000000000002e: 
          ; 335 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 335 push integer
          mov rax, 0
          push rax
          ; 335 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 335 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000002f
          ; 336 push string
          mov rax, s_59
          push rax
          ; 336 push string
          mov rax, s_25
          push rax
          ; 336 push integer
          mov rax, 336
          push rax
          ; 336 push string
          mov rax, s_58
          push rax
          ; 336 push boolean
          mov rax, 1
          push rax
          ; 336 call
          call raise
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 336 jump
          jmp end_0x000000000000002f
          ; 336 label
if_0x000000000000002f: 
          ; 336 label
end_0x000000000000002f: 
          ; 339 push string
          mov rax, s_25
          push rax
          ; 339 push integer
          mov rax, 339
          push rax
          ; 339 push string
          mov rax, s_58
          push rax
          ; 339 push boolean
          mov rax, 1
          push rax
          ; 339 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 340 label
while_0x000000000000000b: 
          ; 340 duplicate
          pop rax
          push rax
          push rax
          ; 340 push string
          mov rax, s_25
          push rax
          ; 340 push integer
          mov rax, 340
          push rax
          ; 340 push string
          mov rax, s_58
          push rax
          ; 340 push boolean
          mov rax, 1
          push rax
          ; 340 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 340 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 340 start of while-loop
          pop rax
          test rax, rax
          jz while_0x000000000000000b_end
          ; 341 drop
          pop rax
          ; 344 get pointer to buffer
          mov rax, current_page
          push rax
          ; 344 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 345 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 345 push integer
          mov rax, 24
          push rax
          ; 345 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 345 push integer
          mov rax, 25
          push rax
          ; 345 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 346 push integer
          mov rax, 4096
          push rax
          ; 346 push string
          mov rax, s_25
          push rax
          ; 346 push integer
          mov rax, 346
          push rax
          ; 346 push string
          mov rax, s_58
          push rax
          ; 346 push boolean
          mov rax, 1
          push rax
          ; 346 call
          call max
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 346 push string
          mov rax, s_25
          push rax
          ; 346 push integer
          mov rax, 346
          push rax
          ; 346 push string
          mov rax, s_58
          push rax
          ; 346 push boolean
          mov rax, 1
          push rax
          ; 346 call
          call _malloc_get_next_page
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 347 duplicate
          pop rax
          push rax
          push rax
          ; 347 get pointer to buffer
          mov rax, current_page
          push rax
          ; 347 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 349 get pointer to buffer
          mov rax, root_page
          push rax
          ; 349 push integer
          mov rax, 0
          push rax
          ; 349 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 349 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 349 push string
          mov rax, s_25
          push rax
          ; 349 push integer
          mov rax, 349
          push rax
          ; 349 push string
          mov rax, s_58
          push rax
          ; 349 push boolean
          mov rax, 1
          push rax
          ; 349 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 349 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 349 push string
          mov rax, s_60
          push rax
          ; 349 push string
          mov rax, s_25
          push rax
          ; 349 push integer
          mov rax, 349
          push rax
          ; 349 push string
          mov rax, s_58
          push rax
          ; 349 push boolean
          mov rax, 1
          push rax
          ; 349 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 350 duplicate
          pop rax
          push rax
          push rax
          ; 350 get pointer to buffer
          mov rax, root_page
          push rax
          ; 350 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 350 push string
          mov rax, s_61
          push rax
          ; 350 push string
          mov rax, s_25
          push rax
          ; 350 push integer
          mov rax, 350
          push rax
          ; 350 push string
          mov rax, s_58
          push rax
          ; 350 push boolean
          mov rax, 1
          push rax
          ; 350 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 351 duplicate
          pop rax
          push rax
          push rax
          ; 351 push string
          mov rax, s_25
          push rax
          ; 351 push integer
          mov rax, 351
          push rax
          ; 351 push string
          mov rax, s_58
          push rax
          ; 351 push boolean
          mov rax, 1
          push rax
          ; 351 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 351 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 351 push string
          mov rax, s_62
          push rax
          ; 351 push string
          mov rax, s_25
          push rax
          ; 351 push integer
          mov rax, 351
          push rax
          ; 351 push string
          mov rax, s_58
          push rax
          ; 351 push boolean
          mov rax, 1
          push rax
          ; 351 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 354 push integer
          mov rax, 24
          push rax
          ; 354 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 356 duplicate
          pop rax
          push rax
          push rax
          ; 356 push integer
          mov rax, 16
          push rax
          ; 356 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 356 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 356 push integer
          mov rax, 0
          push rax
          ; 356 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 356 push string
          mov rax, s_63
          push rax
          ; 356 push string
          mov rax, s_25
          push rax
          ; 356 push integer
          mov rax, 356
          push rax
          ; 356 push string
          mov rax, s_58
          push rax
          ; 356 push boolean
          mov rax, 1
          push rax
          ; 356 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 359 label
while_0x000000000000000c: 
          ; 359 duplicate
          pop rax
          push rax
          push rax
          ; 359 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 359 push string
          mov rax, s_25
          push rax
          ; 359 push integer
          mov rax, 359
          push rax
          ; 359 push string
          mov rax, s_58
          push rax
          ; 359 push boolean
          mov rax, 1
          push rax
          ; 359 call
          call _malloc_block_is_available_or_NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 359 push boolean
          mov rax, 0
          push rax
          ; 359 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 359 start of while-loop
          pop rax
          test rax, rax
          jz while_0x000000000000000c_end
          ; 360 push integer
          mov rax, 0
          push rax
          ; 360 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 360 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 359 end of while-loop
          jmp while_0x000000000000000c
while_0x000000000000000c_end: 
          ; 340 end of while-loop
          jmp while_0x000000000000000b
while_0x000000000000000b_end: 
          ; 362 duplicate
          pop rax
          push rax
          push rax
          ; 362 push string
          mov rax, s_25
          push rax
          ; 362 push integer
          mov rax, 362
          push rax
          ; 362 push string
          mov rax, s_58
          push rax
          ; 362 push boolean
          mov rax, 1
          push rax
          ; 362 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 362 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 362 push string
          mov rax, s_64
          push rax
          ; 362 push string
          mov rax, s_25
          push rax
          ; 362 push integer
          mov rax, 362
          push rax
          ; 362 push string
          mov rax, s_58
          push rax
          ; 362 push boolean
          mov rax, 1
          push rax
          ; 362 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 363 duplicate
          pop rax
          push rax
          push rax
          ; 363 push integer
          mov rax, 24
          push rax
          ; 363 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 363 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 363 push string
          mov rax, s_65
          push rax
          ; 363 push string
          mov rax, s_25
          push rax
          ; 363 push integer
          mov rax, 363
          push rax
          ; 363 push string
          mov rax, s_58
          push rax
          ; 363 push boolean
          mov rax, 1
          push rax
          ; 363 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 365 duplicate
          pop rax
          push rax
          push rax
          ; 365 push integer
          mov rax, 16
          push rax
          ; 365 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 365 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 365 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 365 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 365 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000030
          ; 367 duplicate
          pop rax
          push rax
          push rax
          ; 367 push integer
          mov rax, 24
          push rax
          ; 367 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 367 push boolean
          mov rax, 0
          push rax
          ; 367 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 367 set boolean value
          pop rax
          pop rbx
          mov [rax], bl
          ; 366 jump
          jmp end_0x0000000000000030
          ; 366 label
if_0x0000000000000030: 
          ; 370 duplicate
          pop rax
          push rax
          push rax
          ; 370 push integer
          mov rax, 16
          push rax
          ; 370 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 370 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 370 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 370 push string
          mov rax, s_25
          push rax
          ; 370 push integer
          mov rax, 370
          push rax
          ; 370 push string
          mov rax, s_58
          push rax
          ; 370 push boolean
          mov rax, 1
          push rax
          ; 370 call
          call _malloc_split_block
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 369 label
end_0x0000000000000030: 
          ; 373 get pointer to buffer
          mov rax, current_page
          push rax
          ; 373 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 373 push integer
          mov rax, 0
          push rax
          ; 373 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 373 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 373 push string
          mov rax, s_25
          push rax
          ; 373 push integer
          mov rax, 373
          push rax
          ; 373 push string
          mov rax, s_58
          push rax
          ; 373 push boolean
          mov rax, 1
          push rax
          ; 373 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 373 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 373 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000031
          ; 374 get pointer to buffer
          mov rax, root_page
          push rax
          ; 374 get pointer to buffer
          mov rax, current_page
          push rax
          ; 374 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 374 jump
          jmp end_0x0000000000000031
          ; 374 label
if_0x0000000000000031: 
          ; 376 get pointer to buffer
          mov rax, current_page
          push rax
          ; 376 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 376 push integer
          mov rax, 8
          push rax
          ; 376 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 376 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 376 get pointer to buffer
          mov rax, current_page
          push rax
          ; 376 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 376 label
end_0x0000000000000031: 
          ; 378 push integer
          mov rax, 25
          push rax
          ; 378 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 379 push string
          mov rax, s_25
          push rax
          ; 379 push integer
          mov rax, 379
          push rax
          ; 379 push string
          mov rax, s_58
          push rax
          ; 379 push boolean
          mov rax, 1
          push rax
          ; 379 call
          call verify_memory
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 329 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 329 return
          ret
          ; 382 function definition
zalloc:   
          push rbp
          mov rbp, rsp
          ; 384 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 384 push string
          mov rax, s_25
          push rax
          ; 384 push integer
          mov rax, 384
          push rax
          ; 384 push string
          mov rax, s_66
          push rax
          ; 384 push boolean
          mov rax, 1
          push rax
          ; 384 call
          call malloc
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 385 push integer
          mov rax, 0
          push rax
          ; 386 label
while_0x000000000000000d: 
          ; 386 duplicate
          pop rax
          push rax
          push rax
          ; 386 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 386 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 386 start of while-loop
          pop rax
          test rax, rax
          jz while_0x000000000000000d_end
          ; 387 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 387 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 387 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 387 push integer
          mov rax, 0
          push rax
          ; 387 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 387 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 388 push integer
          mov rax, 1
          push rax
          ; 388 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 386 end of while-loop
          jmp while_0x000000000000000d
while_0x000000000000000d_end: 
          ; 389 drop
          pop rax
          ; 383 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 383 return
          ret
          ; 392 function definition
memcpy:   
          push rbp
          mov rbp, rsp
          ; 394 push integer
          mov rax, 0
          push rax
          ; 395 label
while_0x000000000000000e: 
          ; 395 duplicate
          pop rax
          push rax
          push rax
          ; 395 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 395 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 395 start of while-loop
          pop rax
          test rax, rax
          jz while_0x000000000000000e_end
          ; 396 duplicate
          pop rax
          push rax
          push rax
          ; 396 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 396 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 396 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 397 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 397 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 397 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 397 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 398 push integer
          mov rax, 1
          push rax
          ; 398 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 395 end of while-loop
          jmp while_0x000000000000000e
while_0x000000000000000e_end: 
          ; 399 push string
          mov rax, s_25
          push rax
          ; 399 push integer
          mov rax, 399
          push rax
          ; 399 push string
          mov rax, s_67
          push rax
          ; 399 push boolean
          mov rax, 1
          push rax
          ; 399 call
          call verify_memory
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 393 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 393 return
          ret
          ; 402 function definition
merge_blocks: 
          push rbp
          mov rbp, rsp
          ; 405 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 405 push integer
          mov rax, 24
          push rax
          ; 405 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 405 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 405 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 405 push integer
          mov rax, 24
          push rax
          ; 405 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 405 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 405 bitwise and
          pop rax
          pop rbx
          and rbx, rax
          push rbx
          ; 405 push string
          mov rax, s_68
          push rax
          ; 405 push string
          mov rax, s_25
          push rax
          ; 405 push integer
          mov rax, 405
          push rax
          ; 405 push string
          mov rax, s_69
          push rax
          ; 405 push boolean
          mov rax, 1
          push rax
          ; 405 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 408 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 408 push integer
          mov rax, 16
          push rax
          ; 408 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 408 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 409 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 409 push integer
          mov rax, 16
          push rax
          ; 409 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 409 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 409 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 410 push integer
          mov rax, 25
          push rax
          ; 410 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 411 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 411 push integer
          mov rax, 16
          push rax
          ; 411 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 411 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 414 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 414 push integer
          mov rax, 0
          push rax
          ; 414 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 414 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 414 push string
          mov rax, s_25
          push rax
          ; 414 push integer
          mov rax, 414
          push rax
          ; 414 push string
          mov rax, s_69
          push rax
          ; 414 push boolean
          mov rax, 1
          push rax
          ; 414 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 414 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 414 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000032
          ; 415 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 416 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 416 push integer
          mov rax, 0
          push rax
          ; 416 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 416 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 416 push integer
          mov rax, 8
          push rax
          ; 416 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 416 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 415 jump
          jmp end_0x0000000000000032
          ; 415 label
if_0x0000000000000032: 
          ; 415 label
end_0x0000000000000032: 
          ; 419 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 419 push integer
          mov rax, 0
          push rax
          ; 419 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 419 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 420 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 420 push integer
          mov rax, 0
          push rax
          ; 420 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 420 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 403 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 403 return
          ret
          ; 423 function definition
free:     
          push rbp
          mov rbp, rsp
          ; 426 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 426 push integer
          mov rax, 25
          push rax
          ; 426 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 428 duplicate
          pop rax
          push rax
          push rax
          ; 428 push integer
          mov rax, 24
          push rax
          ; 428 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 428 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 428 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000033
          ; 429 push string
          mov rax, s_70
          push rax
          ; 429 push string
          mov rax, s_25
          push rax
          ; 429 push integer
          mov rax, 429
          push rax
          ; 429 push string
          mov rax, s_71
          push rax
          ; 429 push boolean
          mov rax, 1
          push rax
          ; 429 call
          call raise
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 429 jump
          jmp end_0x0000000000000033
          ; 429 label
if_0x0000000000000033: 
          ; 429 label
end_0x0000000000000033: 
          ; 431 duplicate
          pop rax
          push rax
          push rax
          ; 431 push integer
          mov rax, 24
          push rax
          ; 431 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 431 push boolean
          mov rax, 1
          push rax
          ; 431 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 431 set boolean value
          pop rax
          pop rbx
          mov [rax], bl
          ; 433 duplicate
          pop rax
          push rax
          push rax
          ; 433 push integer
          mov rax, 0
          push rax
          ; 433 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 433 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 433 push string
          mov rax, s_25
          push rax
          ; 433 push integer
          mov rax, 433
          push rax
          ; 433 push string
          mov rax, s_71
          push rax
          ; 433 push boolean
          mov rax, 1
          push rax
          ; 433 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 433 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 433 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000034
          ; 434 duplicate
          pop rax
          push rax
          push rax
          ; 434 push integer
          mov rax, 0
          push rax
          ; 434 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 434 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 434 push integer
          mov rax, 24
          push rax
          ; 434 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 434 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 434 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000035
          ; 436 duplicate
          pop rax
          push rax
          push rax
          ; 436 duplicate
          pop rax
          push rax
          push rax
          ; 436 push integer
          mov rax, 0
          push rax
          ; 436 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 436 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 436 push string
          mov rax, s_25
          push rax
          ; 436 push integer
          mov rax, 436
          push rax
          ; 436 push string
          mov rax, s_71
          push rax
          ; 436 push boolean
          mov rax, 1
          push rax
          ; 436 call
          call merge_blocks
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 435 jump
          jmp end_0x0000000000000035
          ; 435 label
if_0x0000000000000035: 
          ; 435 label
end_0x0000000000000035: 
          ; 434 jump
          jmp end_0x0000000000000034
          ; 434 label
if_0x0000000000000034: 
          ; 434 label
end_0x0000000000000034: 
          ; 438 duplicate
          pop rax
          push rax
          push rax
          ; 438 push integer
          mov rax, 8
          push rax
          ; 438 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 438 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 438 push string
          mov rax, s_25
          push rax
          ; 438 push integer
          mov rax, 438
          push rax
          ; 438 push string
          mov rax, s_71
          push rax
          ; 438 push boolean
          mov rax, 1
          push rax
          ; 438 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 438 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 438 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000036
          ; 439 duplicate
          pop rax
          push rax
          push rax
          ; 439 push integer
          mov rax, 8
          push rax
          ; 439 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 439 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 439 push integer
          mov rax, 24
          push rax
          ; 439 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 439 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 439 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000037
          ; 441 duplicate
          pop rax
          push rax
          push rax
          ; 441 push integer
          mov rax, 8
          push rax
          ; 441 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 441 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 441 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 441 push string
          mov rax, s_25
          push rax
          ; 441 push integer
          mov rax, 441
          push rax
          ; 441 push string
          mov rax, s_71
          push rax
          ; 441 push boolean
          mov rax, 1
          push rax
          ; 441 call
          call merge_blocks
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 440 jump
          jmp end_0x0000000000000037
          ; 440 label
if_0x0000000000000037: 
          ; 440 label
end_0x0000000000000037: 
          ; 439 jump
          jmp end_0x0000000000000036
          ; 439 label
if_0x0000000000000036: 
          ; 439 label
end_0x0000000000000036: 
          ; 444 label
while_0x000000000000000f: 
          ; 444 duplicate
          pop rax
          push rax
          push rax
          ; 444 push integer
          mov rax, 8
          push rax
          ; 444 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 444 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 444 push string
          mov rax, s_25
          push rax
          ; 444 push integer
          mov rax, 444
          push rax
          ; 444 push string
          mov rax, s_71
          push rax
          ; 444 push boolean
          mov rax, 1
          push rax
          ; 444 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 444 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 444 start of while-loop
          pop rax
          test rax, rax
          jz while_0x000000000000000f_end
          ; 445 duplicate
          pop rax
          push rax
          push rax
          ; 445 push integer
          mov rax, 8
          push rax
          ; 445 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 445 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 445 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 445 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 445 push string
          mov rax, s_72
          push rax
          ; 445 push string
          mov rax, s_25
          push rax
          ; 445 push integer
          mov rax, 445
          push rax
          ; 445 push string
          mov rax, s_71
          push rax
          ; 445 push boolean
          mov rax, 1
          push rax
          ; 445 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 446 duplicate
          pop rax
          push rax
          push rax
          ; 446 duplicate
          pop rax
          push rax
          push rax
          ; 446 push integer
          mov rax, 8
          push rax
          ; 446 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 446 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 446 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 446 push integer
          mov rax, 4096
          push rax
          ; 446 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 447 push string
          mov rax, s_73
          push rax
          ; 447 push string
          mov rax, s_25
          push rax
          ; 447 push integer
          mov rax, 447
          push rax
          ; 447 push string
          mov rax, s_71
          push rax
          ; 447 push boolean
          mov rax, 1
          push rax
          ; 447 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 449 push integer
          mov rax, 8
          push rax
          ; 449 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 449 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 444 end of while-loop
          jmp while_0x000000000000000f
while_0x000000000000000f_end: 
          ; 451 duplicate
          pop rax
          push rax
          push rax
          ; 451 push integer
          mov rax, 0
          push rax
          ; 451 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 451 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 451 push string
          mov rax, s_25
          push rax
          ; 451 push integer
          mov rax, 451
          push rax
          ; 451 push string
          mov rax, s_71
          push rax
          ; 451 push boolean
          mov rax, 1
          push rax
          ; 451 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 451 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 451 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000038
          ; 453 push integer
          mov rax, 24
          push rax
          ; 453 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 454 duplicate
          pop rax
          push rax
          push rax
          ; 454 push integer
          mov rax, 0
          push rax
          ; 454 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 454 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 455 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 455 duplicate
          pop rax
          push rax
          push rax
          ; 455 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 455 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 455 push integer
          mov rax, 8
          push rax
          ; 455 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 455 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 455 push integer
          mov rax, 0
          push rax
          ; 455 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 455 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 457 duplicate
          pop rax
          push rax
          push rax
          ; 457 push integer
          mov rax, 0
          push rax
          ; 457 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 457 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 457 push string
          mov rax, s_25
          push rax
          ; 457 push integer
          mov rax, 457
          push rax
          ; 457 push string
          mov rax, s_71
          push rax
          ; 457 push boolean
          mov rax, 1
          push rax
          ; 457 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 457 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 457 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000039
          ; 458 duplicate
          pop rax
          push rax
          push rax
          ; 458 push integer
          mov rax, 8
          push rax
          ; 458 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 458 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 459 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 459 duplicate
          pop rax
          push rax
          push rax
          ; 459 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 459 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 459 push integer
          mov rax, 0
          push rax
          ; 459 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 459 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 459 push integer
          mov rax, 8
          push rax
          ; 459 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 459 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 458 jump
          jmp end_0x0000000000000039
          ; 458 label
if_0x0000000000000039: 
          ; 458 label
end_0x0000000000000039: 
          ; 461 duplicate
          pop rax
          push rax
          push rax
          ; 462 duplicate
          pop rax
          push rax
          push rax
          ; 462 push integer
          mov rax, 16
          push rax
          ; 462 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 462 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 463 push integer
          mov rax, 11
          push rax
          ; 464 syscall
          pop rax
          pop rsi
          pop rdi
          syscall
          push rax
          ; 466 push integer
          mov rax, 0
          push rax
          ; 466 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 466 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000003a
          ; 467 push string
          mov rax, s_74
          push rax
          ; 467 push string
          mov rax, s_25
          push rax
          ; 467 push integer
          mov rax, 467
          push rax
          ; 467 push string
          mov rax, s_71
          push rax
          ; 467 push boolean
          mov rax, 1
          push rax
          ; 467 call
          call raise
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 467 jump
          jmp end_0x000000000000003a
          ; 467 label
if_0x000000000000003a: 
          ; 467 label
end_0x000000000000003a: 
          ; 452 jump
          jmp end_0x0000000000000038
          ; 452 label
if_0x0000000000000038: 
          ; 452 label
end_0x0000000000000038: 
          ; 469 push string
          mov rax, s_25
          push rax
          ; 469 push integer
          mov rax, 469
          push rax
          ; 469 push string
          mov rax, s_71
          push rax
          ; 469 push boolean
          mov rax, 1
          push rax
          ; 469 call
          call verify_memory
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 424 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 424 return
          ret
          ; 472 function definition
puti:     
          push rbp
          mov rbp, rsp
          ; 474 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 474 push string
          mov rax, s_25
          push rax
          ; 474 push integer
          mov rax, 474
          push rax
          ; 474 push string
          mov rax, s_75
          push rax
          ; 474 push boolean
          mov rax, 1
          push rax
          ; 474 call
          call itos
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 474 push string
          mov rax, s_25
          push rax
          ; 474 push integer
          mov rax, 474
          push rax
          ; 474 push string
          mov rax, s_75
          push rax
          ; 474 push boolean
          mov rax, 1
          push rax
          ; 474 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 473 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 473 return
          ret
          ; 477 function definition
errori:   
          push rbp
          mov rbp, rsp
          ; 479 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 479 push string
          mov rax, s_25
          push rax
          ; 479 push integer
          mov rax, 479
          push rax
          ; 479 push string
          mov rax, s_76
          push rax
          ; 479 push boolean
          mov rax, 1
          push rax
          ; 479 call
          call itos
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 479 push string
          mov rax, s_25
          push rax
          ; 479 push integer
          mov rax, 479
          push rax
          ; 479 push string
          mov rax, s_76
          push rax
          ; 479 push boolean
          mov rax, 1
          push rax
          ; 479 call
          call error
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 478 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 478 return
          ret
          ; 482 function definition
_concat:  
          push rbp
          mov rbp, rsp
          ; 485 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 485 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 485 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 485 push integer
          mov rax, 1
          push rax
          ; 485 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 485 push string
          mov rax, s_25
          push rax
          ; 485 push integer
          mov rax, 485
          push rax
          ; 485 push string
          mov rax, s_77
          push rax
          ; 485 push boolean
          mov rax, 1
          push rax
          ; 485 call
          call malloc
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 486 get argument
          mov rax, rbp
          add rax, 72
          mov rbx, [rax]
          push rbx
          ; 486 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 486 push string
          mov rax, s_25
          push rax
          ; 486 push integer
          mov rax, 486
          push rax
          ; 486 push string
          mov rax, s_77
          push rax
          ; 486 push boolean
          mov rax, 1
          push rax
          ; 486 call
          call strcpy
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 487 duplicate
          pop rax
          push rax
          push rax
          ; 487 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 487 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 487 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 487 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 487 push string
          mov rax, s_25
          push rax
          ; 487 push integer
          mov rax, 487
          push rax
          ; 487 push string
          mov rax, s_77
          push rax
          ; 487 push boolean
          mov rax, 1
          push rax
          ; 487 call
          call strcpy
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 487 drop
          pop rax
          ; 483 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 483 return
          ret
          ; 490 function definition
concat:   
          push rbp
          mov rbp, rsp
          ; 492 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 492 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 492 push string
          mov rax, s_25
          push rax
          ; 492 push integer
          mov rax, 492
          push rax
          ; 492 push string
          mov rax, s_78
          push rax
          ; 492 push boolean
          mov rax, 1
          push rax
          ; 492 call
          call strlen
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 492 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 492 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 492 push string
          mov rax, s_25
          push rax
          ; 492 push integer
          mov rax, 492
          push rax
          ; 492 push string
          mov rax, s_78
          push rax
          ; 492 push boolean
          mov rax, 1
          push rax
          ; 492 call
          call strlen
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 492 push string
          mov rax, s_25
          push rax
          ; 492 push integer
          mov rax, 492
          push rax
          ; 492 push string
          mov rax, s_78
          push rax
          ; 492 push boolean
          mov rax, 1
          push rax
          ; 492 call
          call _concat
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 491 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 491 return
          ret
          ; 495 function definition
concatfl: 
          push rbp
          mov rbp, rsp
          ; 497 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 497 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 497 push string
          mov rax, s_25
          push rax
          ; 497 push integer
          mov rax, 497
          push rax
          ; 497 push string
          mov rax, s_79
          push rax
          ; 497 push boolean
          mov rax, 1
          push rax
          ; 497 call
          call concat
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 498 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 498 push string
          mov rax, s_25
          push rax
          ; 498 push integer
          mov rax, 498
          push rax
          ; 498 push string
          mov rax, s_79
          push rax
          ; 498 push boolean
          mov rax, 1
          push rax
          ; 498 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 496 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 496 return
          ret
          ; 501 function definition
concatfr: 
          push rbp
          mov rbp, rsp
          ; 503 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 503 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 503 push string
          mov rax, s_25
          push rax
          ; 503 push integer
          mov rax, 503
          push rax
          ; 503 push string
          mov rax, s_80
          push rax
          ; 503 push boolean
          mov rax, 1
          push rax
          ; 503 call
          call concat
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 504 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 504 push string
          mov rax, s_25
          push rax
          ; 504 push integer
          mov rax, 504
          push rax
          ; 504 push string
          mov rax, s_80
          push rax
          ; 504 push boolean
          mov rax, 1
          push rax
          ; 504 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 502 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 502 return
          ret
          ; 507 function definition
concatf:  
          push rbp
          mov rbp, rsp
          ; 509 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 509 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 509 push string
          mov rax, s_25
          push rax
          ; 509 push integer
          mov rax, 509
          push rax
          ; 509 push string
          mov rax, s_81
          push rax
          ; 509 push boolean
          mov rax, 1
          push rax
          ; 509 call
          call concat
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 510 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 510 push string
          mov rax, s_25
          push rax
          ; 510 push integer
          mov rax, 510
          push rax
          ; 510 push string
          mov rax, s_81
          push rax
          ; 510 push boolean
          mov rax, 1
          push rax
          ; 510 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 511 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 511 push string
          mov rax, s_25
          push rax
          ; 511 push integer
          mov rax, 511
          push rax
          ; 511 push string
          mov rax, s_81
          push rax
          ; 511 push boolean
          mov rax, 1
          push rax
          ; 511 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 508 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 508 return
          ret
          ; 514 function definition
stoi:     
          push rbp
          mov rbp, rsp
          ; 516 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 516 push integer
          mov rax, 0
          push rax
          ; 517 label
while_0x0000000000000010: 
          ; 517 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 517 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 517 push integer
          mov rax, 0
          push rax
          ; 517 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 517 start of while-loop
          pop rax
          test rax, rax
          jz while_0x0000000000000010_end
          ; 518 push integer
          mov rax, 10
          push rax
          ; 518 multiply
          pop rax
          pop rbx
          imul rbx, rax
          push rbx
          ; 519 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 519 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 521 duplicate
          pop rax
          push rax
          push rax
          ; 521 push character
          mov rax, `0`
          push rax
          ; 521 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 521 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 521 push character
          mov rax, `9`
          push rax
          ; 521 is greater?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovg rax, rbx
          push rax
          ; 521 bitwise or
          pop rax
          pop rbx
          or rbx, rax
          push rbx
          ; 521 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000003b
          ; 522 push string
          mov rax, s_82
          push rax
          ; 522 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 522 push string
          mov rax, s_25
          push rax
          ; 522 push integer
          mov rax, 522
          push rax
          ; 522 push string
          mov rax, s_83
          push rax
          ; 522 push boolean
          mov rax, 1
          push rax
          ; 522 call
          call concat
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 522 push string
          mov rax, s_7
          push rax
          ; 522 push string
          mov rax, s_25
          push rax
          ; 522 push integer
          mov rax, 522
          push rax
          ; 522 push string
          mov rax, s_83
          push rax
          ; 522 push boolean
          mov rax, 1
          push rax
          ; 522 call
          call concat
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 522 push string
          mov rax, s_25
          push rax
          ; 522 push integer
          mov rax, 522
          push rax
          ; 522 push string
          mov rax, s_83
          push rax
          ; 522 push boolean
          mov rax, 1
          push rax
          ; 522 call
          call raise
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 522 jump
          jmp end_0x000000000000003b
          ; 522 label
if_0x000000000000003b: 
          ; 522 label
end_0x000000000000003b: 
          ; 524 push character
          mov rax, `0`
          push rax
          ; 524 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 524 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 525 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 525 push integer
          mov rax, 1
          push rax
          ; 525 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 525 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 517 end of while-loop
          jmp while_0x0000000000000010
while_0x0000000000000010_end: 
          ; 515 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 515 return
          ret
          ; 528 create buffer
          ; 530 function definition
read_file: 
          push rbp
          mov rbp, rsp
          ; 532 push integer
          mov rax, 1
          push rax
          ; 532 push string
          mov rax, s_25
          push rax
          ; 532 push integer
          mov rax, 532
          push rax
          ; 532 push string
          mov rax, s_84
          push rax
          ; 532 push boolean
          mov rax, 1
          push rax
          ; 532 call
          call malloc
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 533 duplicate
          pop rax
          push rax
          push rax
          ; 533 push integer
          mov rax, 0
          push rax
          ; 533 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 533 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 534 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 534 push character
          mov rax, `r`
          push rax
          ; 534 push string
          mov rax, s_25
          push rax
          ; 534 push integer
          mov rax, 534
          push rax
          ; 534 push string
          mov rax, s_84
          push rax
          ; 534 push boolean
          mov rax, 1
          push rax
          ; 534 call
          call open
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 536 push integer
          mov rax, 1
          push rax
          ; 536 label
while_0x0000000000000011: 
          ; 536 duplicate
          pop rax
          push rax
          push rax
          ; 536 push integer
          mov rax, 0
          push rax
          ; 536 is greater?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovg rax, rbx
          push rax
          ; 536 start of while-loop
          pop rax
          test rax, rax
          jz while_0x0000000000000011_end
          ; 537 drop
          pop rax
          ; 538 duplicate
          pop rax
          push rax
          push rax
          ; 538 get pointer to buffer
          mov rax, _read_file_buffer
          push rax
          ; 538 push integer
          mov rax, 512
          push rax
          ; 538 push string
          mov rax, s_25
          push rax
          ; 538 push integer
          mov rax, 538
          push rax
          ; 538 push string
          mov rax, s_84
          push rax
          ; 538 push boolean
          mov rax, 1
          push rax
          ; 538 call
          call read
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 539 duplicate
          pop rax
          push rax
          push rax
          ; 539 get pointer to buffer
          mov rax, _read_file_buffer
          push rax
          ; 539 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 539 push integer
          mov rax, 0
          push rax
          ; 539 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 539 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 540 duplicate
          pop rax
          push rax
          push rax
          ; 540 push integer
          mov rax, 0
          push rax
          ; 540 is greater?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovg rax, rbx
          push rax
          ; 540 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000003c
          ; 541 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 541 duplicate
          pop rax
          push rax
          push rax
          ; 541 get pointer to buffer
          mov rax, _read_file_buffer
          push rax
          ; 541 push string
          mov rax, s_25
          push rax
          ; 541 push integer
          mov rax, 541
          push rax
          ; 541 push string
          mov rax, s_84
          push rax
          ; 541 push boolean
          mov rax, 1
          push rax
          ; 541 call
          call concat
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 542 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 542 push string
          mov rax, s_25
          push rax
          ; 542 push integer
          mov rax, 542
          push rax
          ; 542 push string
          mov rax, s_84
          push rax
          ; 542 push boolean
          mov rax, 1
          push rax
          ; 542 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 543 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 543 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 541 jump
          jmp end_0x000000000000003c
          ; 541 label
if_0x000000000000003c: 
          ; 541 label
end_0x000000000000003c: 
          ; 536 end of while-loop
          jmp while_0x0000000000000011
while_0x0000000000000011_end: 
          ; 544 drop
          pop rax
          ; 544 drop
          pop rax
          ; 531 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 531 return
          ret
          ; 547 function definition
substring: 
          push rbp
          mov rbp, rsp
          ; 550 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 550 push integer
          mov rax, 1
          push rax
          ; 550 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 550 push string
          mov rax, s_25
          push rax
          ; 550 push integer
          mov rax, 550
          push rax
          ; 550 push string
          mov rax, s_85
          push rax
          ; 550 push boolean
          mov rax, 1
          push rax
          ; 550 call
          call malloc
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 551 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 551 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 551 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 551 push string
          mov rax, s_25
          push rax
          ; 551 push integer
          mov rax, 551
          push rax
          ; 551 push string
          mov rax, s_85
          push rax
          ; 551 push boolean
          mov rax, 1
          push rax
          ; 551 call
          call memcpy
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 552 duplicate
          pop rax
          push rax
          push rax
          ; 552 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 552 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 552 push integer
          mov rax, 0
          push rax
          ; 552 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 552 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 548 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 548 return
          ret
          ; 8 function definition
draw_pixel: 
          push rbp
          mov rbp, rsp
          ; 10 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 10 push string
          mov rax, s_86
          push rax
          ; 10 push integer
          mov rax, 10
          push rax
          ; 10 push string
          mov rax, s_87
          push rax
          ; 10 push boolean
          mov rax, 1
          push rax
          ; 10 call
          call itos
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 10 push string
          mov rax, s_86
          push rax
          ; 10 push integer
          mov rax, 10
          push rax
          ; 10 push string
          mov rax, s_87
          push rax
          ; 10 push boolean
          mov rax, 1
          push rax
          ; 10 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 10 push string
          mov rax, s_88
          push rax
          ; 10 push string
          mov rax, s_86
          push rax
          ; 10 push integer
          mov rax, 10
          push rax
          ; 10 push string
          mov rax, s_87
          push rax
          ; 10 push boolean
          mov rax, 1
          push rax
          ; 10 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 13 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 13 push string
          mov rax, s_86
          push rax
          ; 13 push integer
          mov rax, 13
          push rax
          ; 13 push string
          mov rax, s_87
          push rax
          ; 13 push boolean
          mov rax, 1
          push rax
          ; 13 call
          call itos
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 13 push string
          mov rax, s_86
          push rax
          ; 13 push integer
          mov rax, 13
          push rax
          ; 13 push string
          mov rax, s_87
          push rax
          ; 13 push boolean
          mov rax, 1
          push rax
          ; 13 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 13 push string
          mov rax, s_88
          push rax
          ; 13 push string
          mov rax, s_86
          push rax
          ; 13 push integer
          mov rax, 13
          push rax
          ; 13 push string
          mov rax, s_87
          push rax
          ; 13 push boolean
          mov rax, 1
          push rax
          ; 13 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 16 push string
          mov rax, s_89
          push rax
          ; 16 push string
          mov rax, s_86
          push rax
          ; 16 push integer
          mov rax, 16
          push rax
          ; 16 push string
          mov rax, s_87
          push rax
          ; 16 push boolean
          mov rax, 1
          push rax
          ; 16 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 9 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 9 return
          ret
          ; 19 function definition
main:     
          push rbp
          mov rbp, rsp
          ; 21 push string
          mov rax, s_90
          push rax
          ; 21 push string
          mov rax, s_86
          push rax
          ; 21 push integer
          mov rax, 21
          push rax
          ; 21 push string
          mov rax, s_91
          push rax
          ; 21 push boolean
          mov rax, 1
          push rax
          ; 21 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 22 push integer
          mov rax, 256
          push rax
          ; 22 push string
          mov rax, s_86
          push rax
          ; 22 push integer
          mov rax, 22
          push rax
          ; 22 push string
          mov rax, s_91
          push rax
          ; 22 push boolean
          mov rax, 1
          push rax
          ; 22 call
          call itos
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 22 push string
          mov rax, s_86
          push rax
          ; 22 push integer
          mov rax, 22
          push rax
          ; 22 push string
          mov rax, s_91
          push rax
          ; 22 push boolean
          mov rax, 1
          push rax
          ; 22 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 22 push string
          mov rax, s_88
          push rax
          ; 22 push string
          mov rax, s_86
          push rax
          ; 22 push integer
          mov rax, 22
          push rax
          ; 22 push string
          mov rax, s_91
          push rax
          ; 22 push boolean
          mov rax, 1
          push rax
          ; 22 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 23 push integer
          mov rax, 256
          push rax
          ; 23 push string
          mov rax, s_86
          push rax
          ; 23 push integer
          mov rax, 23
          push rax
          ; 23 push string
          mov rax, s_91
          push rax
          ; 23 push boolean
          mov rax, 1
          push rax
          ; 23 call
          call itos
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 23 push string
          mov rax, s_86
          push rax
          ; 23 push integer
          mov rax, 23
          push rax
          ; 23 push string
          mov rax, s_91
          push rax
          ; 23 push boolean
          mov rax, 1
          push rax
          ; 23 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 23 push string
          mov rax, s_88
          push rax
          ; 23 push string
          mov rax, s_86
          push rax
          ; 23 push integer
          mov rax, 23
          push rax
          ; 23 push string
          mov rax, s_91
          push rax
          ; 23 push boolean
          mov rax, 1
          push rax
          ; 23 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 24 push string
          mov rax, s_92
          push rax
          ; 24 push string
          mov rax, s_86
          push rax
          ; 24 push integer
          mov rax, 24
          push rax
          ; 24 push string
          mov rax, s_91
          push rax
          ; 24 push boolean
          mov rax, 1
          push rax
          ; 24 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 27 push integer
          mov rax, 0
          push rax
          ; 28 label
while_0x0000000000000012: 
          ; 28 duplicate
          pop rax
          push rax
          push rax
          ; 28 push integer
          mov rax, 256
          push rax
          ; 28 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 28 start of while-loop
          pop rax
          test rax, rax
          jz while_0x0000000000000012_end
          ; 29 push integer
          mov rax, 0
          push rax
          ; 30 label
while_0x0000000000000013: 
          ; 30 duplicate
          pop rax
          push rax
          push rax
          ; 30 push integer
          mov rax, 256
          push rax
          ; 30 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 30 start of while-loop
          pop rax
          test rax, rax
          jz while_0x0000000000000013_end
          ; 31 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 31 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 31 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 31 push string
          mov rax, s_86
          push rax
          ; 31 push integer
          mov rax, 31
          push rax
          ; 31 push string
          mov rax, s_91
          push rax
          ; 31 push boolean
          mov rax, 1
          push rax
          ; 31 call
          call draw_pixel
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 32 push integer
          mov rax, 1
          push rax
          ; 32 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 30 end of while-loop
          jmp while_0x0000000000000013
while_0x0000000000000013_end: 
          ; 33 drop
          pop rax
          ; 34 push integer
          mov rax, 1
          push rax
          ; 34 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 36 push string
          mov rax, s_7
          push rax
          ; 36 push string
          mov rax, s_86
          push rax
          ; 36 push integer
          mov rax, 36
          push rax
          ; 36 push string
          mov rax, s_91
          push rax
          ; 36 push boolean
          mov rax, 1
          push rax
          ; 36 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 28 end of while-loop
          jmp while_0x0000000000000012
while_0x0000000000000012_end: 
          ; 37 push integer
          mov rax, 0
          push rax
          ; 20 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 20 return
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
s_8: db `lib/std/linux.ilo`, 0 
s_9: db `puts`, 0 
s_10: db `error`, 0 
s_11: db `raise`, 0 
s_12: db `assert`, 0 
s_13: db `Could not open file\n`, 0 
s_14: db `open`, 0 
s_15: db `Could not read file\n`, 0 
s_16: db `read`, 0 
s_17: db `Could not change signal action\n`, 0 
s_18: db `rt_sigaction`, 0 
s_19: db `RT_SIGRETURN should not return\n`, 0 
s_20: db `rt_sigreturn`, 0 
s_21: db `Could not set the timer\n`, 0 
s_22: db `setitimer`, 0 
s_23: db `setup_signal_handler`, 0 
s_24: db `set_timer`, 0 
s_25: db `lib/std.ilo`, 0 
s_26: db `streq`, 0 
s_27: db `Verifying memory..\n`, 0 
s_28: db `verify_memory`, 0 
s_29: db `* Page: `, 0 
s_30: db `  * prev: `, 0 
s_31: db `  * next: `, 0 
s_32: db `  * size: `, 0 
s_33: db `Pointer to previous page should be valid\n`, 0 
s_34: db `Page size should be at least the default value\n`, 0 
s_35: db `Page without blocks should be unmapped`, 0 
s_36: db `  * block: `, 0 
s_37: db `    * size: `, 0 
s_38: db `    * next: `, 0 
s_39: db `    * prev: `, 0 
s_40: db `    * free: `, 0 
s_41: db `True\n`, 0 
s_42: db `False\n`, 0 
s_43: db `Blocks should not overflow page memory\n`, 0 
s_44: db `Next block should be in the same page\n`, 0 
s_45: db `Previous block should be in the same page\n`, 0 
s_46: db `Next block should be directly after this one\n`, 0 
s_47: db `Previous block should be directly before this one\n`, 0 
s_48: db `  * unused bytes: `, 0 
s_49: db `Block sizes should sum up to page size\n`, 0 
s_50: db `Memory OK\n`, 0 
s_51: db `Page size should be at least the default size\n`, 0 
s_52: db `_malloc_get_next_page`, 0 
s_53: db `Unable to allocate memory page\n`, 0 
s_54: db `Next page should not be NULL\n`, 0 
s_55: db `Splitted block should be free\n`, 0 
s_56: db `_malloc_split_block`, 0 
s_57: db `_malloc_block_is_available_or_NULL`, 0 
s_58: db `malloc`, 0 
s_59: db `Size should be greater than zero\n`, 0 
s_60: db `First page should be set\n`, 0 
s_61: db `Page should not be root page\n`, 0 
s_62: db `Next page should be set\n`, 0 
s_63: db `Block size should be greater than zero\n`, 0 
s_64: db `Pointer to found block should be non-NULL\n`, 0 
s_65: db `Found block should be free\n`, 0 
s_66: db `zalloc`, 0 
s_67: db `memcpy`, 0 
s_68: db `Blocks should be free`, 0 
s_69: db `merge_blocks`, 0 
s_70: db `Trying to free already freed data\n`, 0 
s_71: db `free`, 0 
s_72: db `Previous block should be earlier\n`, 0 
s_73: db `Previous block should be within the same page\n`, 0 
s_74: db `Unable to free memory page\n`, 0 
s_75: db `puti`, 0 
s_76: db `errori`, 0 
s_77: db `_concat`, 0 
s_78: db `concat`, 0 
s_79: db `concatfl`, 0 
s_80: db `concatfr`, 0 
s_81: db `concatf`, 0 
s_82: db `Unable to convert string to integer: `, 0 
s_83: db `stoi`, 0 
s_84: db `read_file`, 0 
s_85: db `substring`, 0 
s_86: db `examples/pathtracer.ilo`, 0 
s_87: db `draw_pixel`, 0 
s_88: db ` `, 0 
s_89: db `64 `, 0 
s_90: db `P3 `, 0 
s_91: db `main`, 0 
s_92: db `256\n`, 0 
          section .bss
_itos: resb 21 
_sigaction: resb 32 
_itimerval: resb 32 
current_page: resb 8 
root_page: resb 8 
VERIFY_MEMORY: resb 1 
DUMP_MEMORY: resb 1 
_vm_buf: resb 19 
_read_file_buffer: resb 513 
