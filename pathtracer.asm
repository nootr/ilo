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
sqrt:     
          push rbp
          mov rbp, rsp
          ; 17 push integer
          mov rax, 0
          push rax
          ; 17 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 18 label
while_0x0000000000000004: 
          ; 18 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 18 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 18 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 18 duplicate
          pop rax
          push rax
          push rax
          ; 18 push integer
          mov rax, 1
          push rax
          ; 18 is greater?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovg rax, rbx
          push rax
          ; 18 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 18 push integer
          mov rax, 0
          push rax
          ; 18 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 18 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 18 push integer
          mov rax, 1
          push rax
          ; 18 is greater?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovg rax, rbx
          push rax
          ; 18 bitwise or
          pop rax
          pop rbx
          or rbx, rax
          push rbx
          ; 18 start of while-loop
          pop rax
          test rax, rax
          jz while_0x0000000000000004_end
          ; 19 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 19 drop
          pop rax
          ; 19 duplicate
          pop rax
          push rax
          push rax
          ; 20 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 20 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 20 divide
          xor rdx, rdx
          pop rbx
          pop rax
          div rbx
          push rax
          ; 20 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 20 push integer
          mov rax, 2
          push rax
          ; 20 divide
          xor rdx, rdx
          pop rbx
          pop rax
          div rbx
          push rax
          ; 18 end of while-loop
          jmp while_0x0000000000000004
while_0x0000000000000004_end: 
          ; 16 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 16 return
          ret
          ; 23 function definition
itohex:   
          push rbp
          mov rbp, rsp
          ; 25 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 26 duplicate
          pop rax
          push rax
          push rax
          ; 26 push character
          mov rax, `0`
          push rax
          ; 26 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 26 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 26 push integer
          mov rax, 1
          push rax
          ; 26 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 27 duplicate
          pop rax
          push rax
          push rax
          ; 27 push character
          mov rax, `x`
          push rax
          ; 27 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 27 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 27 push integer
          mov rax, 1
          push rax
          ; 27 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 29 push integer
          mov rax, 60
          push rax
          ; 30 label
while_0x0000000000000005: 
          ; 30 duplicate
          pop rax
          push rax
          push rax
          ; 30 push integer
          mov rax, 0
          push rax
          ; 30 is greater or equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovge rax, rbx
          push rax
          ; 30 start of while-loop
          pop rax
          test rax, rax
          jz while_0x0000000000000005_end
          ; 31 duplicate
          pop rax
          push rax
          push rax
          ; 32 push integer
          mov rax, 15
          push rax
          ; 32 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 32 shift left
          pop rcx
          pop rax
          shl rax, cl
          push rax
          ; 33 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 33 bitwise and
          pop rax
          pop rbx
          and rbx, rax
          push rbx
          ; 34 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 34 duplicate
          pop rax
          push rax
          push rax
          ; 34 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 34 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 34 shift right
          pop rcx
          pop rax
          shr rax, cl
          push rax
          ; 36 duplicate
          pop rax
          push rax
          push rax
          ; 36 push integer
          mov rax, 0
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
          jz if_0x000000000000000a
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
          mov rax, `0`
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
          ; 37 jump
          jmp end_0x000000000000000a
          ; 37 label
if_0x000000000000000a: 
          ; 38 duplicate
          pop rax
          push rax
          push rax
          ; 38 push integer
          mov rax, 1
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
          jz elif_0x000000000000000b
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
          mov rax, `1`
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
elif_0x000000000000000b: 
          ; 40 duplicate
          pop rax
          push rax
          push rax
          ; 40 push integer
          mov rax, 2
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
          jz elif_0x000000000000000c
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
          mov rax, `2`
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
elif_0x000000000000000c: 
          ; 42 duplicate
          pop rax
          push rax
          push rax
          ; 42 push integer
          mov rax, 3
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
          jz elif_0x000000000000000d
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
          mov rax, `3`
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
elif_0x000000000000000d: 
          ; 44 duplicate
          pop rax
          push rax
          push rax
          ; 44 push integer
          mov rax, 4
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
          jz elif_0x000000000000000e
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
          mov rax, `4`
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
elif_0x000000000000000e: 
          ; 46 duplicate
          pop rax
          push rax
          push rax
          ; 46 push integer
          mov rax, 5
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
          jz elif_0x000000000000000f
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
          mov rax, `5`
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
elif_0x000000000000000f: 
          ; 48 duplicate
          pop rax
          push rax
          push rax
          ; 48 push integer
          mov rax, 6
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
          jz elif_0x0000000000000010
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
          mov rax, `6`
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
elif_0x0000000000000010: 
          ; 50 duplicate
          pop rax
          push rax
          push rax
          ; 50 push integer
          mov rax, 7
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
          jz elif_0x0000000000000011
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
          mov rax, `7`
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
elif_0x0000000000000011: 
          ; 52 duplicate
          pop rax
          push rax
          push rax
          ; 52 push integer
          mov rax, 8
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
          jz elif_0x0000000000000012
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
          mov rax, `8`
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
elif_0x0000000000000012: 
          ; 54 duplicate
          pop rax
          push rax
          push rax
          ; 54 push integer
          mov rax, 9
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
          jz elif_0x0000000000000013
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
          mov rax, `9`
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
elif_0x0000000000000013: 
          ; 56 duplicate
          pop rax
          push rax
          push rax
          ; 56 push integer
          mov rax, 10
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
          jz elif_0x0000000000000014
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
          mov rax, `a`
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
elif_0x0000000000000014: 
          ; 58 duplicate
          pop rax
          push rax
          push rax
          ; 58 push integer
          mov rax, 11
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
          jz elif_0x0000000000000015
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
          mov rax, `b`
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
elif_0x0000000000000015: 
          ; 60 duplicate
          pop rax
          push rax
          push rax
          ; 60 push integer
          mov rax, 12
          push rax
          ; 60 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 60 start of if-block
          pop rax
          test rax, rax
          jz elif_0x0000000000000016
          ; 61 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 61 duplicate
          pop rax
          push rax
          push rax
          ; 61 push character
          mov rax, `c`
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
          ; 61 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 61 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 60 jump
          jmp end_0x000000000000000a
          ; 60 label
elif_0x0000000000000016: 
          ; 62 duplicate
          pop rax
          push rax
          push rax
          ; 62 push integer
          mov rax, 13
          push rax
          ; 62 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 62 start of if-block
          pop rax
          test rax, rax
          jz elif_0x0000000000000017
          ; 63 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 63 duplicate
          pop rax
          push rax
          push rax
          ; 63 push character
          mov rax, `d`
          push rax
          ; 63 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 63 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 63 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 63 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 62 jump
          jmp end_0x000000000000000a
          ; 62 label
elif_0x0000000000000017: 
          ; 64 duplicate
          pop rax
          push rax
          push rax
          ; 64 push integer
          mov rax, 14
          push rax
          ; 64 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 64 start of if-block
          pop rax
          test rax, rax
          jz elif_0x0000000000000018
          ; 65 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 65 duplicate
          pop rax
          push rax
          push rax
          ; 65 push character
          mov rax, `e`
          push rax
          ; 65 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 65 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 65 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 65 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 64 jump
          jmp end_0x000000000000000a
          ; 64 label
elif_0x0000000000000018: 
          ; 66 duplicate
          pop rax
          push rax
          push rax
          ; 66 push integer
          mov rax, 15
          push rax
          ; 66 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 66 start of if-block
          pop rax
          test rax, rax
          jz elif_0x0000000000000019
          ; 67 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 67 duplicate
          pop rax
          push rax
          push rax
          ; 67 push character
          mov rax, `f`
          push rax
          ; 67 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 67 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 67 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 67 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 66 jump
          jmp end_0x000000000000000a
          ; 66 label
elif_0x0000000000000019: 
          ; 66 label
end_0x000000000000000a: 
          ; 68 drop
          pop rax
          ; 68 push integer
          mov rax, 4
          push rax
          ; 68 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 68 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 68 push integer
          mov rax, 1
          push rax
          ; 68 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 68 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 30 end of while-loop
          jmp while_0x0000000000000005
while_0x0000000000000005_end: 
          ; 69 drop
          pop rax
          ; 69 push integer
          mov rax, 0
          push rax
          ; 69 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 69 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 24 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 24 return
          ret
          ; 72 function definition
max:      
          push rbp
          mov rbp, rsp
          ; 74 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 74 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 74 is greater?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovg rax, rbx
          push rax
          ; 74 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000001a
          ; 75 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 75 jump
          jmp end_0x000000000000001a
          ; 75 label
if_0x000000000000001a: 
          ; 77 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 77 label
end_0x000000000000001a: 
          ; 73 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 73 return
          ret
          ; 80 function definition
strcpy:   
          push rbp
          mov rbp, rsp
          ; 82 push integer
          mov rax, 0
          push rax
          ; 83 label
while_0x0000000000000006: 
          ; 83 duplicate
          pop rax
          push rax
          push rax
          ; 83 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 83 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 83 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 83 push integer
          mov rax, 0
          push rax
          ; 83 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 83 start of while-loop
          pop rax
          test rax, rax
          jz while_0x0000000000000006_end
          ; 84 duplicate
          pop rax
          push rax
          push rax
          ; 84 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 84 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 84 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 84 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 84 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 84 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 84 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 85 push integer
          mov rax, 1
          push rax
          ; 85 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 83 end of while-loop
          jmp while_0x0000000000000006
while_0x0000000000000006_end: 
          ; 86 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 86 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 86 push integer
          mov rax, 0
          push rax
          ; 86 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 86 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 87 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 81 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 81 return
          ret
          ; 90 function definition
replace:  
          push rbp
          mov rbp, rsp
          ; 92 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 93 label
while_0x0000000000000007: 
          ; 93 duplicate
          pop rax
          push rax
          push rax
          ; 93 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 93 push integer
          mov rax, 0
          push rax
          ; 93 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 93 start of while-loop
          pop rax
          test rax, rax
          jz while_0x0000000000000007_end
          ; 94 duplicate
          pop rax
          push rax
          push rax
          ; 94 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 94 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 94 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 94 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000001b
          ; 95 duplicate
          pop rax
          push rax
          push rax
          ; 95 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 95 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 95 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 95 jump
          jmp end_0x000000000000001b
          ; 95 label
if_0x000000000000001b: 
          ; 95 label
end_0x000000000000001b: 
          ; 96 push integer
          mov rax, 1
          push rax
          ; 96 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 93 end of while-loop
          jmp while_0x0000000000000007
while_0x0000000000000007_end: 
          ; 97 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 91 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 91 return
          ret
          ; 100 function definition
startswith: 
          push rbp
          mov rbp, rsp
          ; 102 push integer
          mov rax, 0
          push rax
          ; 103 label
while_0x0000000000000008: 
          ; 103 duplicate
          pop rax
          push rax
          push rax
          ; 103 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 103 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 103 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 103 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 103 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 103 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 103 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 103 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 103 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 103 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 103 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 103 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 103 push integer
          mov rax, 0
          push rax
          ; 103 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 103 bitwise and
          pop rax
          pop rbx
          and rbx, rax
          push rbx
          ; 103 start of while-loop
          pop rax
          test rax, rax
          jz while_0x0000000000000008_end
          ; 104 push integer
          mov rax, 1
          push rax
          ; 104 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 103 end of while-loop
          jmp while_0x0000000000000008
while_0x0000000000000008_end: 
          ; 105 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 105 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 105 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 105 push integer
          mov rax, 0
          push rax
          ; 105 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 101 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 101 return
          ret
          ; 108 function definition
streq:    
          push rbp
          mov rbp, rsp
          ; 110 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 110 push string
          mov rax, s_25
          push rax
          ; 110 push integer
          mov rax, 110
          push rax
          ; 110 push string
          mov rax, s_26
          push rax
          ; 110 push boolean
          mov rax, 1
          push rax
          ; 110 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 110 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 110 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 110 push string
          mov rax, s_25
          push rax
          ; 110 push integer
          mov rax, 110
          push rax
          ; 110 push string
          mov rax, s_26
          push rax
          ; 110 push boolean
          mov rax, 1
          push rax
          ; 110 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 110 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 110 bitwise and
          pop rax
          pop rbx
          and rbx, rax
          push rbx
          ; 110 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000001c
          ; 111 push boolean
          mov rax, 1
          push rax
          ; 111 jump
          jmp end_0x000000000000001c
          ; 111 label
if_0x000000000000001c: 
          ; 112 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 112 push string
          mov rax, s_25
          push rax
          ; 112 push integer
          mov rax, 112
          push rax
          ; 112 push string
          mov rax, s_26
          push rax
          ; 112 push boolean
          mov rax, 1
          push rax
          ; 112 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 112 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 112 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 112 push string
          mov rax, s_25
          push rax
          ; 112 push integer
          mov rax, 112
          push rax
          ; 112 push string
          mov rax, s_26
          push rax
          ; 112 push boolean
          mov rax, 1
          push rax
          ; 112 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 112 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 112 bitwise or
          pop rax
          pop rbx
          or rbx, rax
          push rbx
          ; 112 start of if-block
          pop rax
          test rax, rax
          jz elif_0x000000000000001d
          ; 113 push boolean
          mov rax, 0
          push rax
          ; 112 jump
          jmp end_0x000000000000001c
          ; 112 label
elif_0x000000000000001d: 
          ; 114 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 114 push string
          mov rax, s_25
          push rax
          ; 114 push integer
          mov rax, 114
          push rax
          ; 114 push string
          mov rax, s_26
          push rax
          ; 114 push boolean
          mov rax, 1
          push rax
          ; 114 call
          call strlen
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 114 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 114 push string
          mov rax, s_25
          push rax
          ; 114 push integer
          mov rax, 114
          push rax
          ; 114 push string
          mov rax, s_26
          push rax
          ; 114 push boolean
          mov rax, 1
          push rax
          ; 114 call
          call strlen
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 114 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 114 start of if-block
          pop rax
          test rax, rax
          jz elif_0x000000000000001e
          ; 115 push boolean
          mov rax, 0
          push rax
          ; 116 push integer
          mov rax, 0
          push rax
          ; 117 label
while_0x0000000000000009: 
          ; 117 duplicate
          pop rax
          push rax
          push rax
          ; 117 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 117 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 117 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 117 push integer
          mov rax, 0
          push rax
          ; 117 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 117 start of while-loop
          pop rax
          test rax, rax
          jz while_0x0000000000000009_end
          ; 118 duplicate
          pop rax
          push rax
          push rax
          ; 118 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 118 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 118 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 119 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 119 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 119 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 119 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 119 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 120 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 120 bitwise or
          pop rax
          pop rbx
          or rbx, rax
          push rbx
          ; 120 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 121 push integer
          mov rax, 1
          push rax
          ; 121 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 117 end of while-loop
          jmp while_0x0000000000000009
while_0x0000000000000009_end: 
          ; 122 drop
          pop rax
          ; 123 push boolean
          mov rax, 0
          push rax
          ; 123 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 114 jump
          jmp end_0x000000000000001c
          ; 114 label
elif_0x000000000000001e: 
          ; 125 push boolean
          mov rax, 0
          push rax
          ; 125 label
end_0x000000000000001c: 
          ; 109 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 109 return
          ret
          ; 143 create buffer
          ; 144 create buffer
          ; 147 create buffer
          ; 148 create buffer
          ; 150 create buffer
          ; 152 function definition
verify_memory: 
          push rbp
          mov rbp, rsp
          ; 154 get pointer to buffer
          mov rax, VERIFY_MEMORY
          push rax
          ; 154 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 154 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000001f
          ; 155 get pointer to buffer
          mov rax, DUMP_MEMORY
          push rax
          ; 155 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 155 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000020
          ; 156 push string
          mov rax, s_27
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
          ; 156 jump
          jmp end_0x0000000000000020
          ; 156 label
if_0x0000000000000020: 
          ; 156 label
end_0x0000000000000020: 
          ; 158 get pointer to buffer
          mov rax, root_page
          push rax
          ; 159 label
while_0x000000000000000a: 
          ; 159 duplicate
          pop rax
          push rax
          push rax
          ; 159 push integer
          mov rax, 0
          push rax
          ; 159 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 159 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
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
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 159 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 159 start of while-loop
          pop rax
          test rax, rax
          jz while_0x000000000000000a_end
          ; 160 duplicate
          pop rax
          push rax
          push rax
          ; 160 push integer
          mov rax, 0
          push rax
          ; 160 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 160 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 162 get pointer to buffer
          mov rax, DUMP_MEMORY
          push rax
          ; 162 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 162 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000021
          ; 163 push string
          mov rax, s_29
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
          mov rax, s_30
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
          mov rax, 8
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
          ; 171 push string
          mov rax, s_31
          push rax
          ; 171 push string
          mov rax, s_25
          push rax
          ; 171 push integer
          mov rax, 171
          push rax
          ; 171 push string
          mov rax, s_28
          push rax
          ; 171 push boolean
          mov rax, 1
          push rax
          ; 171 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 172 duplicate
          pop rax
          push rax
          push rax
          ; 172 push integer
          mov rax, 0
          push rax
          ; 172 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 172 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 172 get pointer to buffer
          mov rax, _vm_buf
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
          call itohex
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 172 get pointer to buffer
          mov rax, _vm_buf
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
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 173 push string
          mov rax, s_7
          push rax
          ; 173 push string
          mov rax, s_25
          push rax
          ; 173 push integer
          mov rax, 173
          push rax
          ; 173 push string
          mov rax, s_28
          push rax
          ; 173 push boolean
          mov rax, 1
          push rax
          ; 173 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 175 push string
          mov rax, s_32
          push rax
          ; 175 push string
          mov rax, s_25
          push rax
          ; 175 push integer
          mov rax, 175
          push rax
          ; 175 push string
          mov rax, s_28
          push rax
          ; 175 push boolean
          mov rax, 1
          push rax
          ; 175 call
          call puts
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
          ; 176 get pointer to buffer
          mov rax, _vm_buf
          push rax
          ; 176 push string
          mov rax, s_25
          push rax
          ; 176 push integer
          mov rax, 176
          push rax
          ; 176 push string
          mov rax, s_28
          push rax
          ; 176 push boolean
          mov rax, 1
          push rax
          ; 176 call
          call itohex
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 176 get pointer to buffer
          mov rax, _vm_buf
          push rax
          ; 176 push string
          mov rax, s_25
          push rax
          ; 176 push integer
          mov rax, 176
          push rax
          ; 176 push string
          mov rax, s_28
          push rax
          ; 176 push boolean
          mov rax, 1
          push rax
          ; 176 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 177 push string
          mov rax, s_7
          push rax
          ; 177 push string
          mov rax, s_25
          push rax
          ; 177 push integer
          mov rax, 177
          push rax
          ; 177 push string
          mov rax, s_28
          push rax
          ; 177 push boolean
          mov rax, 1
          push rax
          ; 177 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 163 jump
          jmp end_0x0000000000000021
          ; 163 label
if_0x0000000000000021: 
          ; 163 label
end_0x0000000000000021: 
          ; 179 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 179 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 179 push integer
          mov rax, 8
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
          ; 179 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 180 push string
          mov rax, s_33
          push rax
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
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 181 duplicate
          pop rax
          push rax
          push rax
          ; 181 push integer
          mov rax, 16
          push rax
          ; 181 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 181 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 181 push integer
          mov rax, 4096
          push rax
          ; 181 is greater or equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovge rax, rbx
          push rax
          ; 182 push string
          mov rax, s_34
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
          ; 184 duplicate
          pop rax
          push rax
          push rax
          ; 184 push integer
          mov rax, 16
          push rax
          ; 184 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 184 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 184 push integer
          mov rax, 24
          push rax
          ; 184 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 185 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 185 push integer
          mov rax, 24
          push rax
          ; 185 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 187 duplicate
          pop rax
          push rax
          push rax
          ; 187 push integer
          mov rax, 0
          push rax
          ; 187 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 187 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
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
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 187 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 188 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 188 push integer
          mov rax, 8
          push rax
          ; 188 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 188 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
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
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 188 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 188 bitwise and
          pop rax
          pop rbx
          and rbx, rax
          push rbx
          ; 189 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 189 push integer
          mov rax, 24
          push rax
          ; 189 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 189 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 189 push boolean
          mov rax, 1
          push rax
          ; 189 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 189 bitwise and
          pop rax
          pop rbx
          and rbx, rax
          push rbx
          ; 189 push boolean
          mov rax, 0
          push rax
          ; 189 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 190 push string
          mov rax, s_35
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
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 192 label
while_0x000000000000000b: 
          ; 192 duplicate
          pop rax
          push rax
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
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 192 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 192 start of while-loop
          pop rax
          test rax, rax
          jz while_0x000000000000000b_end
          ; 193 get pointer to buffer
          mov rax, DUMP_MEMORY
          push rax
          ; 193 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 193 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000022
          ; 194 push string
          mov rax, s_36
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
          mov rax, s_37
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
          mov rax, 16
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
          mov rax, s_38
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
          mov rax, 0
          push rax
          ; 203 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 203 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 203 get pointer to buffer
          mov rax, _vm_buf
          push rax
          ; 203 push string
          mov rax, s_25
          push rax
          ; 203 push integer
          mov rax, 203
          push rax
          ; 203 push string
          mov rax, s_28
          push rax
          ; 203 push boolean
          mov rax, 1
          push rax
          ; 203 call
          call itohex
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 203 get pointer to buffer
          mov rax, _vm_buf
          push rax
          ; 203 push string
          mov rax, s_25
          push rax
          ; 203 push integer
          mov rax, 203
          push rax
          ; 203 push string
          mov rax, s_28
          push rax
          ; 203 push boolean
          mov rax, 1
          push rax
          ; 203 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 204 push string
          mov rax, s_7
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
          ; 206 push string
          mov rax, s_39
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
          ; 207 duplicate
          pop rax
          push rax
          push rax
          ; 207 push integer
          mov rax, 8
          push rax
          ; 207 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 207 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 207 get pointer to buffer
          mov rax, _vm_buf
          push rax
          ; 207 push string
          mov rax, s_25
          push rax
          ; 207 push integer
          mov rax, 207
          push rax
          ; 207 push string
          mov rax, s_28
          push rax
          ; 207 push boolean
          mov rax, 1
          push rax
          ; 207 call
          call itohex
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 207 get pointer to buffer
          mov rax, _vm_buf
          push rax
          ; 207 push string
          mov rax, s_25
          push rax
          ; 207 push integer
          mov rax, 207
          push rax
          ; 207 push string
          mov rax, s_28
          push rax
          ; 207 push boolean
          mov rax, 1
          push rax
          ; 207 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 208 push string
          mov rax, s_7
          push rax
          ; 208 push string
          mov rax, s_25
          push rax
          ; 208 push integer
          mov rax, 208
          push rax
          ; 208 push string
          mov rax, s_28
          push rax
          ; 208 push boolean
          mov rax, 1
          push rax
          ; 208 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 210 push string
          mov rax, s_40
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
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 211 duplicate
          pop rax
          push rax
          push rax
          ; 211 push integer
          mov rax, 24
          push rax
          ; 211 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 211 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 211 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000023
          ; 212 push string
          mov rax, s_41
          push rax
          ; 212 push string
          mov rax, s_25
          push rax
          ; 212 push integer
          mov rax, 212
          push rax
          ; 212 push string
          mov rax, s_28
          push rax
          ; 212 push boolean
          mov rax, 1
          push rax
          ; 212 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 212 jump
          jmp end_0x0000000000000023
          ; 212 label
if_0x0000000000000023: 
          ; 214 push string
          mov rax, s_42
          push rax
          ; 214 push string
          mov rax, s_25
          push rax
          ; 214 push integer
          mov rax, 214
          push rax
          ; 214 push string
          mov rax, s_28
          push rax
          ; 214 push boolean
          mov rax, 1
          push rax
          ; 214 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 214 label
end_0x0000000000000023: 
          ; 194 jump
          jmp end_0x0000000000000022
          ; 194 label
if_0x0000000000000022: 
          ; 194 label
end_0x0000000000000022: 
          ; 216 duplicate
          pop rax
          push rax
          push rax
          ; 216 push integer
          mov rax, 16
          push rax
          ; 216 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 216 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 216 push integer
          mov rax, 25
          push rax
          ; 216 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 217 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 217 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 217 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 218 duplicate
          pop rax
          push rax
          push rax
          ; 218 push integer
          mov rax, 0
          push rax
          ; 218 is greater or equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovge rax, rbx
          push rax
          ; 218 push string
          mov rax, s_43
          push rax
          ; 218 push string
          mov rax, s_25
          push rax
          ; 218 push integer
          mov rax, 218
          push rax
          ; 218 push string
          mov rax, s_28
          push rax
          ; 218 push boolean
          mov rax, 1
          push rax
          ; 218 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 219 swap
          pop rax
          pop rbx
          push rax
          push rbx
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
          ; 221 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 222 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
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
          ; 222 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 222 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 222 push integer
          mov rax, 4096
          push rax
          ; 222 is less or equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovle rax, rbx
          push rax
          ; 222 bitwise or
          pop rax
          pop rbx
          or rbx, rax
          push rbx
          ; 223 push string
          mov rax, s_44
          push rax
          ; 223 push string
          mov rax, s_25
          push rax
          ; 223 push integer
          mov rax, 223
          push rax
          ; 223 push string
          mov rax, s_28
          push rax
          ; 223 push boolean
          mov rax, 1
          push rax
          ; 223 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 225 duplicate
          pop rax
          push rax
          push rax
          ; 225 push integer
          mov rax, 8
          push rax
          ; 225 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 225 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
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
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 225 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 226 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 226 duplicate
          pop rax
          push rax
          push rax
          ; 226 push integer
          mov rax, 8
          push rax
          ; 226 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 226 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 226 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 226 push integer
          mov rax, 4096
          push rax
          ; 226 is less or equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovle rax, rbx
          push rax
          ; 226 bitwise or
          pop rax
          pop rbx
          or rbx, rax
          push rbx
          ; 227 push string
          mov rax, s_45
          push rax
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
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 229 duplicate
          pop rax
          push rax
          push rax
          ; 229 push integer
          mov rax, 0
          push rax
          ; 229 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 229 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 229 push string
          mov rax, s_25
          push rax
          ; 229 push integer
          mov rax, 229
          push rax
          ; 229 push string
          mov rax, s_28
          push rax
          ; 229 push boolean
          mov rax, 1
          push rax
          ; 229 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 229 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 229 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000024
          ; 230 duplicate
          pop rax
          push rax
          push rax
          ; 230 push integer
          mov rax, 0
          push rax
          ; 230 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 230 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 231 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 231 push integer
          mov rax, 16
          push rax
          ; 231 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 231 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 231 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 232 push integer
          mov rax, 25
          push rax
          ; 232 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 233 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 233 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 233 push string
          mov rax, s_46
          push rax
          ; 233 push string
          mov rax, s_25
          push rax
          ; 233 push integer
          mov rax, 233
          push rax
          ; 233 push string
          mov rax, s_28
          push rax
          ; 233 push boolean
          mov rax, 1
          push rax
          ; 233 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 230 jump
          jmp end_0x0000000000000024
          ; 230 label
if_0x0000000000000024: 
          ; 230 label
end_0x0000000000000024: 
          ; 235 duplicate
          pop rax
          push rax
          push rax
          ; 235 push integer
          mov rax, 8
          push rax
          ; 235 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 235 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 235 push string
          mov rax, s_25
          push rax
          ; 235 push integer
          mov rax, 235
          push rax
          ; 235 push string
          mov rax, s_28
          push rax
          ; 235 push boolean
          mov rax, 1
          push rax
          ; 235 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 235 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 235 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000025
          ; 236 duplicate
          pop rax
          push rax
          push rax
          ; 236 push integer
          mov rax, 8
          push rax
          ; 236 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 236 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 237 duplicate
          pop rax
          push rax
          push rax
          ; 237 push integer
          mov rax, 16
          push rax
          ; 237 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 237 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 237 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 238 push integer
          mov rax, 25
          push rax
          ; 238 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 239 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 239 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 239 push string
          mov rax, s_47
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
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 236 jump
          jmp end_0x0000000000000025
          ; 236 label
if_0x0000000000000025: 
          ; 236 label
end_0x0000000000000025: 
          ; 241 push integer
          mov rax, 0
          push rax
          ; 241 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 241 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 192 end of while-loop
          jmp while_0x000000000000000b
while_0x000000000000000b_end: 
          ; 242 drop
          pop rax
          ; 244 duplicate
          pop rax
          push rax
          push rax
          ; 244 push integer
          mov rax, 0
          push rax
          ; 244 is greater?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovg rax, rbx
          push rax
          ; 244 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000026
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
          jz if_0x0000000000000027
          ; 246 push string
          mov rax, s_48
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
          ; 247 duplicate
          pop rax
          push rax
          push rax
          ; 247 get pointer to buffer
          mov rax, _vm_buf
          push rax
          ; 247 push string
          mov rax, s_25
          push rax
          ; 247 push integer
          mov rax, 247
          push rax
          ; 247 push string
          mov rax, s_28
          push rax
          ; 247 push boolean
          mov rax, 1
          push rax
          ; 247 call
          call itohex
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 247 get pointer to buffer
          mov rax, _vm_buf
          push rax
          ; 247 push string
          mov rax, s_25
          push rax
          ; 247 push integer
          mov rax, 247
          push rax
          ; 247 push string
          mov rax, s_28
          push rax
          ; 247 push boolean
          mov rax, 1
          push rax
          ; 247 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 248 push string
          mov rax, s_7
          push rax
          ; 248 push string
          mov rax, s_25
          push rax
          ; 248 push integer
          mov rax, 248
          push rax
          ; 248 push string
          mov rax, s_28
          push rax
          ; 248 push boolean
          mov rax, 1
          push rax
          ; 248 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 246 jump
          jmp end_0x0000000000000027
          ; 246 label
if_0x0000000000000027: 
          ; 246 label
end_0x0000000000000027: 
          ; 249 push boolean
          mov rax, 0
          push rax
          ; 249 push string
          mov rax, s_49
          push rax
          ; 249 push string
          mov rax, s_25
          push rax
          ; 249 push integer
          mov rax, 249
          push rax
          ; 249 push string
          mov rax, s_28
          push rax
          ; 249 push boolean
          mov rax, 1
          push rax
          ; 249 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 245 jump
          jmp end_0x0000000000000026
          ; 245 label
if_0x0000000000000026: 
          ; 245 label
end_0x0000000000000026: 
          ; 250 drop
          pop rax
          ; 159 end of while-loop
          jmp while_0x000000000000000a
while_0x000000000000000a_end: 
          ; 252 drop
          pop rax
          ; 253 get pointer to buffer
          mov rax, DUMP_MEMORY
          push rax
          ; 253 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 253 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000028
          ; 254 push string
          mov rax, s_50
          push rax
          ; 254 push string
          mov rax, s_25
          push rax
          ; 254 push integer
          mov rax, 254
          push rax
          ; 254 push string
          mov rax, s_28
          push rax
          ; 254 push boolean
          mov rax, 1
          push rax
          ; 254 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 254 jump
          jmp end_0x0000000000000028
          ; 254 label
if_0x0000000000000028: 
          ; 254 label
end_0x0000000000000028: 
          ; 155 jump
          jmp end_0x000000000000001f
          ; 155 label
if_0x000000000000001f: 
          ; 155 label
end_0x000000000000001f: 
          ; 153 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 153 return
          ret
          ; 257 function definition
_malloc_get_next_page: 
          push rbp
          mov rbp, rsp
          ; 259 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 259 push integer
          mov rax, 4096
          push rax
          ; 259 is greater or equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovge rax, rbx
          push rax
          ; 259 push string
          mov rax, s_51
          push rax
          ; 259 push string
          mov rax, s_25
          push rax
          ; 259 push integer
          mov rax, 259
          push rax
          ; 259 push string
          mov rax, s_52
          push rax
          ; 259 push boolean
          mov rax, 1
          push rax
          ; 259 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 261 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 261 push integer
          mov rax, 0
          push rax
          ; 261 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 261 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 261 push string
          mov rax, s_25
          push rax
          ; 261 push integer
          mov rax, 261
          push rax
          ; 261 push string
          mov rax, s_52
          push rax
          ; 261 push boolean
          mov rax, 1
          push rax
          ; 261 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 261 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 261 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000029
          ; 262 push string
          mov rax, s_25
          push rax
          ; 262 push integer
          mov rax, 262
          push rax
          ; 262 push string
          mov rax, s_52
          push rax
          ; 262 push boolean
          mov rax, 1
          push rax
          ; 262 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 263 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 264 push integer
          mov rax, 1
          push rax
          ; 264 push integer
          mov rax, 2
          push rax
          ; 264 bitwise or
          pop rax
          pop rbx
          or rbx, rax
          push rbx
          ; 265 push integer
          mov rax, 2
          push rax
          ; 265 push integer
          mov rax, 32
          push rax
          ; 265 bitwise or
          pop rax
          pop rbx
          or rbx, rax
          push rbx
          ; 266 push integer
          mov rax, 0
          push rax
          ; 266 push integer
          mov rax, 1
          push rax
          ; 266 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 267 push integer
          mov rax, 0
          push rax
          ; 268 push integer
          mov rax, 9
          push rax
          ; 269 syscall
          pop rax
          pop r9
          pop r8
          pop r10
          pop rdx
          pop rsi
          pop rdi
          syscall
          push rax
          ; 271 duplicate
          pop rax
          push rax
          push rax
          ; 271 push integer
          mov rax, 0
          push rax
          ; 271 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 271 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000002a
          ; 272 push string
          mov rax, s_53
          push rax
          ; 272 push string
          mov rax, s_25
          push rax
          ; 272 push integer
          mov rax, 272
          push rax
          ; 272 push string
          mov rax, s_52
          push rax
          ; 272 push boolean
          mov rax, 1
          push rax
          ; 272 call
          call raise
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 272 jump
          jmp end_0x000000000000002a
          ; 272 label
if_0x000000000000002a: 
          ; 272 label
end_0x000000000000002a: 
          ; 277 duplicate
          pop rax
          push rax
          push rax
          ; 277 push integer
          mov rax, 0
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
          mov rax, 8
          push rax
          ; 278 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 278 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 278 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 278 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 279 duplicate
          pop rax
          push rax
          push rax
          ; 279 push integer
          mov rax, 16
          push rax
          ; 279 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 279 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
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
          ; 282 duplicate
          pop rax
          push rax
          push rax
          ; 282 push integer
          mov rax, 24
          push rax
          ; 282 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 283 duplicate
          pop rax
          push rax
          push rax
          ; 283 push integer
          mov rax, 24
          push rax
          ; 283 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 283 push boolean
          mov rax, 1
          push rax
          ; 283 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 283 set boolean value
          pop rax
          pop rbx
          mov [rax], bl
          ; 284 duplicate
          pop rax
          push rax
          push rax
          ; 284 push integer
          mov rax, 0
          push rax
          ; 284 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 284 push string
          mov rax, s_25
          push rax
          ; 284 push integer
          mov rax, 284
          push rax
          ; 284 push string
          mov rax, s_52
          push rax
          ; 284 push boolean
          mov rax, 1
          push rax
          ; 284 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 284 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 284 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 285 duplicate
          pop rax
          push rax
          push rax
          ; 285 push integer
          mov rax, 8
          push rax
          ; 285 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 285 push string
          mov rax, s_25
          push rax
          ; 285 push integer
          mov rax, 285
          push rax
          ; 285 push string
          mov rax, s_52
          push rax
          ; 285 push boolean
          mov rax, 1
          push rax
          ; 285 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 285 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 285 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 286 duplicate
          pop rax
          push rax
          push rax
          ; 286 push integer
          mov rax, 16
          push rax
          ; 286 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 286 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 286 push integer
          mov rax, 24
          push rax
          ; 286 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 287 push integer
          mov rax, 25
          push rax
          ; 287 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 287 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 287 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 288 drop
          pop rax
          ; 290 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 290 push integer
          mov rax, 0
          push rax
          ; 290 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 290 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 262 jump
          jmp end_0x0000000000000029
          ; 262 label
if_0x0000000000000029: 
          ; 262 label
end_0x0000000000000029: 
          ; 293 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 293 push integer
          mov rax, 0
          push rax
          ; 293 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 293 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 295 duplicate
          pop rax
          push rax
          push rax
          ; 295 push string
          mov rax, s_25
          push rax
          ; 295 push integer
          mov rax, 295
          push rax
          ; 295 push string
          mov rax, s_52
          push rax
          ; 295 push boolean
          mov rax, 1
          push rax
          ; 295 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 295 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 295 push string
          mov rax, s_54
          push rax
          ; 295 push string
          mov rax, s_25
          push rax
          ; 295 push integer
          mov rax, 295
          push rax
          ; 295 push string
          mov rax, s_52
          push rax
          ; 295 push boolean
          mov rax, 1
          push rax
          ; 295 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 258 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 258 return
          ret
          ; 298 function definition
_malloc_split_block: 
          push rbp
          mov rbp, rsp
          ; 301 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 301 push integer
          mov rax, 24
          push rax
          ; 301 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 301 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 301 push string
          mov rax, s_55
          push rax
          ; 301 push string
          mov rax, s_25
          push rax
          ; 301 push integer
          mov rax, 301
          push rax
          ; 301 push string
          mov rax, s_56
          push rax
          ; 301 push boolean
          mov rax, 1
          push rax
          ; 301 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 303 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 303 push integer
          mov rax, 0
          push rax
          ; 303 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 303 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 305 push boolean
          mov rax, 0
          push rax
          ; 305 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 305 push integer
          mov rax, 24
          push rax
          ; 305 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 305 set boolean value
          pop rax
          pop rbx
          mov [rax], bl
          ; 308 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 308 push integer
          mov rax, 25
          push rax
          ; 308 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 308 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 308 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 310 duplicate
          pop rax
          push rax
          push rax
          ; 310 push integer
          mov rax, 0
          push rax
          ; 310 is greater?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovg rax, rbx
          push rax
          ; 310 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000002b
          ; 312 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 312 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 312 push integer
          mov rax, 16
          push rax
          ; 312 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 312 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 314 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 314 push integer
          mov rax, 25
          push rax
          ; 314 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 314 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 314 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
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
          ; 314 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 316 push boolean
          mov rax, 1
          push rax
          ; 316 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 316 push integer
          mov rax, 0
          push rax
          ; 316 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 316 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 316 push integer
          mov rax, 24
          push rax
          ; 316 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 316 set boolean value
          pop rax
          pop rbx
          mov [rax], bl
          ; 317 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 317 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 317 push integer
          mov rax, 0
          push rax
          ; 317 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 317 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 317 push integer
          mov rax, 8
          push rax
          ; 317 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 317 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 318 duplicate
          pop rax
          push rax
          push rax
          ; 318 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 318 push integer
          mov rax, 0
          push rax
          ; 318 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 318 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 318 push integer
          mov rax, 16
          push rax
          ; 318 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 318 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 319 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 319 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 319 push integer
          mov rax, 0
          push rax
          ; 319 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 319 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 319 push integer
          mov rax, 0
          push rax
          ; 319 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 319 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 321 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 321 push integer
          mov rax, 0
          push rax
          ; 321 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 321 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 321 push integer
          mov rax, 0
          push rax
          ; 321 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 321 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 321 push string
          mov rax, s_25
          push rax
          ; 321 push integer
          mov rax, 321
          push rax
          ; 321 push string
          mov rax, s_56
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
          ; 321 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 321 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000002c
          ; 322 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 322 push integer
          mov rax, 0
          push rax
          ; 322 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 322 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 322 duplicate
          pop rax
          push rax
          push rax
          ; 322 push integer
          mov rax, 0
          push rax
          ; 322 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 322 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 322 push integer
          mov rax, 8
          push rax
          ; 322 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 322 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 322 jump
          jmp end_0x000000000000002c
          ; 322 label
if_0x000000000000002c: 
          ; 322 label
end_0x000000000000002c: 
          ; 311 jump
          jmp end_0x000000000000002b
          ; 311 label
if_0x000000000000002b: 
          ; 311 label
end_0x000000000000002b: 
          ; 324 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 299 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 299 return
          ret
          ; 327 function definition
_malloc_block_is_available_or_NULL: 
          push rbp
          mov rbp, rsp
          ; 329 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 329 push string
          mov rax, s_25
          push rax
          ; 329 push integer
          mov rax, 329
          push rax
          ; 329 push string
          mov rax, s_57
          push rax
          ; 329 push boolean
          mov rax, 1
          push rax
          ; 329 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 329 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 329 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000002d
          ; 330 push boolean
          mov rax, 1
          push rax
          ; 330 jump
          jmp end_0x000000000000002d
          ; 330 label
if_0x000000000000002d: 
          ; 332 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 332 push integer
          mov rax, 24
          push rax
          ; 332 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 332 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 333 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 333 push integer
          mov rax, 16
          push rax
          ; 333 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 333 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 333 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 333 is greater or equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovge rax, rbx
          push rax
          ; 333 bitwise and
          pop rax
          pop rbx
          and rbx, rax
          push rbx
          ; 332 label
end_0x000000000000002d: 
          ; 328 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 328 return
          ret
          ; 336 function definition
malloc:   
          push rbp
          mov rbp, rsp
          ; 340 get pointer to buffer
          mov rax, current_page
          push rax
          ; 340 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
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
          ; 340 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000002e
          ; 341 get pointer to buffer
          mov rax, root_page
          push rax
          ; 341 get pointer to buffer
          mov rax, current_page
          push rax
          ; 341 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 341 jump
          jmp end_0x000000000000002e
          ; 341 label
if_0x000000000000002e: 
          ; 341 label
end_0x000000000000002e: 
          ; 343 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 343 push integer
          mov rax, 0
          push rax
          ; 343 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 343 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000002f
          ; 344 push string
          mov rax, s_59
          push rax
          ; 344 push string
          mov rax, s_25
          push rax
          ; 344 push integer
          mov rax, 344
          push rax
          ; 344 push string
          mov rax, s_58
          push rax
          ; 344 push boolean
          mov rax, 1
          push rax
          ; 344 call
          call raise
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 344 jump
          jmp end_0x000000000000002f
          ; 344 label
if_0x000000000000002f: 
          ; 344 label
end_0x000000000000002f: 
          ; 347 push string
          mov rax, s_25
          push rax
          ; 347 push integer
          mov rax, 347
          push rax
          ; 347 push string
          mov rax, s_58
          push rax
          ; 347 push boolean
          mov rax, 1
          push rax
          ; 347 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 348 label
while_0x000000000000000c: 
          ; 348 duplicate
          pop rax
          push rax
          push rax
          ; 348 push string
          mov rax, s_25
          push rax
          ; 348 push integer
          mov rax, 348
          push rax
          ; 348 push string
          mov rax, s_58
          push rax
          ; 348 push boolean
          mov rax, 1
          push rax
          ; 348 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 348 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 348 start of while-loop
          pop rax
          test rax, rax
          jz while_0x000000000000000c_end
          ; 349 drop
          pop rax
          ; 352 get pointer to buffer
          mov rax, current_page
          push rax
          ; 352 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 353 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 353 push integer
          mov rax, 24
          push rax
          ; 353 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 353 push integer
          mov rax, 25
          push rax
          ; 353 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 354 push integer
          mov rax, 4096
          push rax
          ; 354 push string
          mov rax, s_25
          push rax
          ; 354 push integer
          mov rax, 354
          push rax
          ; 354 push string
          mov rax, s_58
          push rax
          ; 354 push boolean
          mov rax, 1
          push rax
          ; 354 call
          call max
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 354 push string
          mov rax, s_25
          push rax
          ; 354 push integer
          mov rax, 354
          push rax
          ; 354 push string
          mov rax, s_58
          push rax
          ; 354 push boolean
          mov rax, 1
          push rax
          ; 354 call
          call _malloc_get_next_page
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 355 duplicate
          pop rax
          push rax
          push rax
          ; 355 get pointer to buffer
          mov rax, current_page
          push rax
          ; 355 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 357 get pointer to buffer
          mov rax, root_page
          push rax
          ; 357 push integer
          mov rax, 0
          push rax
          ; 357 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 357 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 357 push string
          mov rax, s_25
          push rax
          ; 357 push integer
          mov rax, 357
          push rax
          ; 357 push string
          mov rax, s_58
          push rax
          ; 357 push boolean
          mov rax, 1
          push rax
          ; 357 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 357 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 357 push string
          mov rax, s_60
          push rax
          ; 357 push string
          mov rax, s_25
          push rax
          ; 357 push integer
          mov rax, 357
          push rax
          ; 357 push string
          mov rax, s_58
          push rax
          ; 357 push boolean
          mov rax, 1
          push rax
          ; 357 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 358 duplicate
          pop rax
          push rax
          push rax
          ; 358 get pointer to buffer
          mov rax, root_page
          push rax
          ; 358 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 358 push string
          mov rax, s_61
          push rax
          ; 358 push string
          mov rax, s_25
          push rax
          ; 358 push integer
          mov rax, 358
          push rax
          ; 358 push string
          mov rax, s_58
          push rax
          ; 358 push boolean
          mov rax, 1
          push rax
          ; 358 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 359 duplicate
          pop rax
          push rax
          push rax
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
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 359 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 359 push string
          mov rax, s_62
          push rax
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
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 362 push integer
          mov rax, 24
          push rax
          ; 362 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 364 duplicate
          pop rax
          push rax
          push rax
          ; 364 push integer
          mov rax, 16
          push rax
          ; 364 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 364 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 364 push integer
          mov rax, 0
          push rax
          ; 364 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 364 push string
          mov rax, s_63
          push rax
          ; 364 push string
          mov rax, s_25
          push rax
          ; 364 push integer
          mov rax, 364
          push rax
          ; 364 push string
          mov rax, s_58
          push rax
          ; 364 push boolean
          mov rax, 1
          push rax
          ; 364 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 367 label
while_0x000000000000000d: 
          ; 367 duplicate
          pop rax
          push rax
          push rax
          ; 367 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 367 push string
          mov rax, s_25
          push rax
          ; 367 push integer
          mov rax, 367
          push rax
          ; 367 push string
          mov rax, s_58
          push rax
          ; 367 push boolean
          mov rax, 1
          push rax
          ; 367 call
          call _malloc_block_is_available_or_NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 367 push boolean
          mov rax, 0
          push rax
          ; 367 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 367 start of while-loop
          pop rax
          test rax, rax
          jz while_0x000000000000000d_end
          ; 368 push integer
          mov rax, 0
          push rax
          ; 368 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 368 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 367 end of while-loop
          jmp while_0x000000000000000d
while_0x000000000000000d_end: 
          ; 348 end of while-loop
          jmp while_0x000000000000000c
while_0x000000000000000c_end: 
          ; 370 duplicate
          pop rax
          push rax
          push rax
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
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 370 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 370 push string
          mov rax, s_64
          push rax
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
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 371 duplicate
          pop rax
          push rax
          push rax
          ; 371 push integer
          mov rax, 24
          push rax
          ; 371 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 371 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 371 push string
          mov rax, s_65
          push rax
          ; 371 push string
          mov rax, s_25
          push rax
          ; 371 push integer
          mov rax, 371
          push rax
          ; 371 push string
          mov rax, s_58
          push rax
          ; 371 push boolean
          mov rax, 1
          push rax
          ; 371 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 373 duplicate
          pop rax
          push rax
          push rax
          ; 373 push integer
          mov rax, 16
          push rax
          ; 373 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 373 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 373 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
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
          jz if_0x0000000000000030
          ; 375 duplicate
          pop rax
          push rax
          push rax
          ; 375 push integer
          mov rax, 24
          push rax
          ; 375 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 375 push boolean
          mov rax, 0
          push rax
          ; 375 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 375 set boolean value
          pop rax
          pop rbx
          mov [rax], bl
          ; 374 jump
          jmp end_0x0000000000000030
          ; 374 label
if_0x0000000000000030: 
          ; 378 duplicate
          pop rax
          push rax
          push rax
          ; 378 push integer
          mov rax, 16
          push rax
          ; 378 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 378 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 378 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 378 push string
          mov rax, s_25
          push rax
          ; 378 push integer
          mov rax, 378
          push rax
          ; 378 push string
          mov rax, s_58
          push rax
          ; 378 push boolean
          mov rax, 1
          push rax
          ; 378 call
          call _malloc_split_block
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 377 label
end_0x0000000000000030: 
          ; 381 get pointer to buffer
          mov rax, current_page
          push rax
          ; 381 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 381 push integer
          mov rax, 0
          push rax
          ; 381 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 381 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 381 push string
          mov rax, s_25
          push rax
          ; 381 push integer
          mov rax, 381
          push rax
          ; 381 push string
          mov rax, s_58
          push rax
          ; 381 push boolean
          mov rax, 1
          push rax
          ; 381 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 381 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 381 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000031
          ; 382 get pointer to buffer
          mov rax, root_page
          push rax
          ; 382 get pointer to buffer
          mov rax, current_page
          push rax
          ; 382 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 382 jump
          jmp end_0x0000000000000031
          ; 382 label
if_0x0000000000000031: 
          ; 384 get pointer to buffer
          mov rax, current_page
          push rax
          ; 384 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 384 push integer
          mov rax, 8
          push rax
          ; 384 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 384 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 384 get pointer to buffer
          mov rax, current_page
          push rax
          ; 384 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 384 label
end_0x0000000000000031: 
          ; 386 push integer
          mov rax, 25
          push rax
          ; 386 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 387 push string
          mov rax, s_25
          push rax
          ; 387 push integer
          mov rax, 387
          push rax
          ; 387 push string
          mov rax, s_58
          push rax
          ; 387 push boolean
          mov rax, 1
          push rax
          ; 387 call
          call verify_memory
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 337 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 337 return
          ret
          ; 390 function definition
zalloc:   
          push rbp
          mov rbp, rsp
          ; 392 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 392 push string
          mov rax, s_25
          push rax
          ; 392 push integer
          mov rax, 392
          push rax
          ; 392 push string
          mov rax, s_66
          push rax
          ; 392 push boolean
          mov rax, 1
          push rax
          ; 392 call
          call malloc
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 393 push integer
          mov rax, 0
          push rax
          ; 394 label
while_0x000000000000000e: 
          ; 394 duplicate
          pop rax
          push rax
          push rax
          ; 394 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 394 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 394 start of while-loop
          pop rax
          test rax, rax
          jz while_0x000000000000000e_end
          ; 395 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 395 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 395 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 395 push integer
          mov rax, 0
          push rax
          ; 395 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 395 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 396 push integer
          mov rax, 1
          push rax
          ; 396 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 394 end of while-loop
          jmp while_0x000000000000000e
while_0x000000000000000e_end: 
          ; 397 drop
          pop rax
          ; 391 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 391 return
          ret
          ; 400 function definition
memcpy:   
          push rbp
          mov rbp, rsp
          ; 402 push integer
          mov rax, 0
          push rax
          ; 403 label
while_0x000000000000000f: 
          ; 403 duplicate
          pop rax
          push rax
          push rax
          ; 403 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 403 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 403 start of while-loop
          pop rax
          test rax, rax
          jz while_0x000000000000000f_end
          ; 404 duplicate
          pop rax
          push rax
          push rax
          ; 404 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 404 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 404 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 405 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 405 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 405 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 405 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 406 push integer
          mov rax, 1
          push rax
          ; 406 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 403 end of while-loop
          jmp while_0x000000000000000f
while_0x000000000000000f_end: 
          ; 407 push string
          mov rax, s_25
          push rax
          ; 407 push integer
          mov rax, 407
          push rax
          ; 407 push string
          mov rax, s_67
          push rax
          ; 407 push boolean
          mov rax, 1
          push rax
          ; 407 call
          call verify_memory
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 401 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 401 return
          ret
          ; 410 function definition
merge_blocks: 
          push rbp
          mov rbp, rsp
          ; 413 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 413 push integer
          mov rax, 24
          push rax
          ; 413 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 413 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 413 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 413 push integer
          mov rax, 24
          push rax
          ; 413 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 413 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 413 bitwise and
          pop rax
          pop rbx
          and rbx, rax
          push rbx
          ; 413 push string
          mov rax, s_68
          push rax
          ; 413 push string
          mov rax, s_25
          push rax
          ; 413 push integer
          mov rax, 413
          push rax
          ; 413 push string
          mov rax, s_69
          push rax
          ; 413 push boolean
          mov rax, 1
          push rax
          ; 413 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 416 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 416 push integer
          mov rax, 16
          push rax
          ; 416 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 416 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 417 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 417 push integer
          mov rax, 16
          push rax
          ; 417 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 417 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 417 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 418 push integer
          mov rax, 25
          push rax
          ; 418 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 419 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 419 push integer
          mov rax, 16
          push rax
          ; 419 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 419 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 422 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 422 push integer
          mov rax, 0
          push rax
          ; 422 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 422 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 422 push string
          mov rax, s_25
          push rax
          ; 422 push integer
          mov rax, 422
          push rax
          ; 422 push string
          mov rax, s_69
          push rax
          ; 422 push boolean
          mov rax, 1
          push rax
          ; 422 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 422 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 422 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000032
          ; 423 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 424 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 424 push integer
          mov rax, 0
          push rax
          ; 424 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 424 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 424 push integer
          mov rax, 8
          push rax
          ; 424 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 424 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 423 jump
          jmp end_0x0000000000000032
          ; 423 label
if_0x0000000000000032: 
          ; 423 label
end_0x0000000000000032: 
          ; 427 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 427 push integer
          mov rax, 0
          push rax
          ; 427 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 427 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 428 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 428 push integer
          mov rax, 0
          push rax
          ; 428 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 428 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 411 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 411 return
          ret
          ; 431 function definition
free:     
          push rbp
          mov rbp, rsp
          ; 434 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 434 push integer
          mov rax, 25
          push rax
          ; 434 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 436 duplicate
          pop rax
          push rax
          push rax
          ; 436 push integer
          mov rax, 24
          push rax
          ; 436 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 436 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 436 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000033
          ; 437 push string
          mov rax, s_70
          push rax
          ; 437 push string
          mov rax, s_25
          push rax
          ; 437 push integer
          mov rax, 437
          push rax
          ; 437 push string
          mov rax, s_71
          push rax
          ; 437 push boolean
          mov rax, 1
          push rax
          ; 437 call
          call raise
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 437 jump
          jmp end_0x0000000000000033
          ; 437 label
if_0x0000000000000033: 
          ; 437 label
end_0x0000000000000033: 
          ; 439 duplicate
          pop rax
          push rax
          push rax
          ; 439 push integer
          mov rax, 24
          push rax
          ; 439 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 439 push boolean
          mov rax, 1
          push rax
          ; 439 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 439 set boolean value
          pop rax
          pop rbx
          mov [rax], bl
          ; 441 duplicate
          pop rax
          push rax
          push rax
          ; 441 push integer
          mov rax, 0
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
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 441 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 441 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000034
          ; 442 duplicate
          pop rax
          push rax
          push rax
          ; 442 push integer
          mov rax, 0
          push rax
          ; 442 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 442 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 442 push integer
          mov rax, 24
          push rax
          ; 442 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 442 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 442 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000035
          ; 444 duplicate
          pop rax
          push rax
          push rax
          ; 444 duplicate
          pop rax
          push rax
          push rax
          ; 444 push integer
          mov rax, 0
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
          call merge_blocks
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 443 jump
          jmp end_0x0000000000000035
          ; 443 label
if_0x0000000000000035: 
          ; 443 label
end_0x0000000000000035: 
          ; 442 jump
          jmp end_0x0000000000000034
          ; 442 label
if_0x0000000000000034: 
          ; 442 label
end_0x0000000000000034: 
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
          ; 446 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 446 push string
          mov rax, s_25
          push rax
          ; 446 push integer
          mov rax, 446
          push rax
          ; 446 push string
          mov rax, s_71
          push rax
          ; 446 push boolean
          mov rax, 1
          push rax
          ; 446 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 446 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 446 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000036
          ; 447 duplicate
          pop rax
          push rax
          push rax
          ; 447 push integer
          mov rax, 8
          push rax
          ; 447 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 447 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 447 push integer
          mov rax, 24
          push rax
          ; 447 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 447 dereference boolean
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 447 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000037
          ; 449 duplicate
          pop rax
          push rax
          push rax
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
          ; 449 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 449 push string
          mov rax, s_25
          push rax
          ; 449 push integer
          mov rax, 449
          push rax
          ; 449 push string
          mov rax, s_71
          push rax
          ; 449 push boolean
          mov rax, 1
          push rax
          ; 449 call
          call merge_blocks
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 448 jump
          jmp end_0x0000000000000037
          ; 448 label
if_0x0000000000000037: 
          ; 448 label
end_0x0000000000000037: 
          ; 447 jump
          jmp end_0x0000000000000036
          ; 447 label
if_0x0000000000000036: 
          ; 447 label
end_0x0000000000000036: 
          ; 452 label
while_0x0000000000000010: 
          ; 452 duplicate
          pop rax
          push rax
          push rax
          ; 452 push integer
          mov rax, 8
          push rax
          ; 452 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 452 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 452 push string
          mov rax, s_25
          push rax
          ; 452 push integer
          mov rax, 452
          push rax
          ; 452 push string
          mov rax, s_71
          push rax
          ; 452 push boolean
          mov rax, 1
          push rax
          ; 452 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 452 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 452 start of while-loop
          pop rax
          test rax, rax
          jz while_0x0000000000000010_end
          ; 453 duplicate
          pop rax
          push rax
          push rax
          ; 453 push integer
          mov rax, 8
          push rax
          ; 453 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 453 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 453 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 453 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 453 push string
          mov rax, s_72
          push rax
          ; 453 push string
          mov rax, s_25
          push rax
          ; 453 push integer
          mov rax, 453
          push rax
          ; 453 push string
          mov rax, s_71
          push rax
          ; 453 push boolean
          mov rax, 1
          push rax
          ; 453 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 454 duplicate
          pop rax
          push rax
          push rax
          ; 454 duplicate
          pop rax
          push rax
          push rax
          ; 454 push integer
          mov rax, 8
          push rax
          ; 454 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 454 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 454 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 454 push integer
          mov rax, 4096
          push rax
          ; 454 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 455 push string
          mov rax, s_73
          push rax
          ; 455 push string
          mov rax, s_25
          push rax
          ; 455 push integer
          mov rax, 455
          push rax
          ; 455 push string
          mov rax, s_71
          push rax
          ; 455 push boolean
          mov rax, 1
          push rax
          ; 455 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 457 push integer
          mov rax, 8
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
          ; 452 end of while-loop
          jmp while_0x0000000000000010
while_0x0000000000000010_end: 
          ; 459 duplicate
          pop rax
          push rax
          push rax
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
          ; 459 push string
          mov rax, s_25
          push rax
          ; 459 push integer
          mov rax, 459
          push rax
          ; 459 push string
          mov rax, s_71
          push rax
          ; 459 push boolean
          mov rax, 1
          push rax
          ; 459 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 459 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 459 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000038
          ; 461 push integer
          mov rax, 24
          push rax
          ; 461 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 462 duplicate
          pop rax
          push rax
          push rax
          ; 462 push integer
          mov rax, 0
          push rax
          ; 462 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 462 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 463 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 463 duplicate
          pop rax
          push rax
          push rax
          ; 463 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 463 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 463 push integer
          mov rax, 8
          push rax
          ; 463 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 463 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 463 push integer
          mov rax, 0
          push rax
          ; 463 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 463 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 465 duplicate
          pop rax
          push rax
          push rax
          ; 465 push integer
          mov rax, 0
          push rax
          ; 465 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 465 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 465 push string
          mov rax, s_25
          push rax
          ; 465 push integer
          mov rax, 465
          push rax
          ; 465 push string
          mov rax, s_71
          push rax
          ; 465 push boolean
          mov rax, 1
          push rax
          ; 465 call
          call NULL
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 465 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 465 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000039
          ; 466 duplicate
          pop rax
          push rax
          push rax
          ; 466 push integer
          mov rax, 8
          push rax
          ; 466 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 466 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 467 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 467 duplicate
          pop rax
          push rax
          push rax
          ; 467 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 467 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 467 push integer
          mov rax, 0
          push rax
          ; 467 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 467 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 467 push integer
          mov rax, 8
          push rax
          ; 467 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 467 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 466 jump
          jmp end_0x0000000000000039
          ; 466 label
if_0x0000000000000039: 
          ; 466 label
end_0x0000000000000039: 
          ; 469 duplicate
          pop rax
          push rax
          push rax
          ; 470 duplicate
          pop rax
          push rax
          push rax
          ; 470 push integer
          mov rax, 16
          push rax
          ; 470 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 470 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 471 push integer
          mov rax, 11
          push rax
          ; 472 syscall
          pop rax
          pop rsi
          pop rdi
          syscall
          push rax
          ; 474 push integer
          mov rax, 0
          push rax
          ; 474 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 474 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000003a
          ; 475 push string
          mov rax, s_74
          push rax
          ; 475 push string
          mov rax, s_25
          push rax
          ; 475 push integer
          mov rax, 475
          push rax
          ; 475 push string
          mov rax, s_71
          push rax
          ; 475 push boolean
          mov rax, 1
          push rax
          ; 475 call
          call raise
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 475 jump
          jmp end_0x000000000000003a
          ; 475 label
if_0x000000000000003a: 
          ; 475 label
end_0x000000000000003a: 
          ; 460 jump
          jmp end_0x0000000000000038
          ; 460 label
if_0x0000000000000038: 
          ; 460 label
end_0x0000000000000038: 
          ; 477 push string
          mov rax, s_25
          push rax
          ; 477 push integer
          mov rax, 477
          push rax
          ; 477 push string
          mov rax, s_71
          push rax
          ; 477 push boolean
          mov rax, 1
          push rax
          ; 477 call
          call verify_memory
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 432 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 432 return
          ret
          ; 480 function definition
puti:     
          push rbp
          mov rbp, rsp
          ; 482 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 482 push string
          mov rax, s_25
          push rax
          ; 482 push integer
          mov rax, 482
          push rax
          ; 482 push string
          mov rax, s_75
          push rax
          ; 482 push boolean
          mov rax, 1
          push rax
          ; 482 call
          call itos
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 482 push string
          mov rax, s_25
          push rax
          ; 482 push integer
          mov rax, 482
          push rax
          ; 482 push string
          mov rax, s_75
          push rax
          ; 482 push boolean
          mov rax, 1
          push rax
          ; 482 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 481 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 481 return
          ret
          ; 485 function definition
errori:   
          push rbp
          mov rbp, rsp
          ; 487 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 487 push string
          mov rax, s_25
          push rax
          ; 487 push integer
          mov rax, 487
          push rax
          ; 487 push string
          mov rax, s_76
          push rax
          ; 487 push boolean
          mov rax, 1
          push rax
          ; 487 call
          call itos
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 487 push string
          mov rax, s_25
          push rax
          ; 487 push integer
          mov rax, 487
          push rax
          ; 487 push string
          mov rax, s_76
          push rax
          ; 487 push boolean
          mov rax, 1
          push rax
          ; 487 call
          call error
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 486 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 486 return
          ret
          ; 490 function definition
_concat:  
          push rbp
          mov rbp, rsp
          ; 493 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 493 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 493 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 493 push integer
          mov rax, 1
          push rax
          ; 493 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 493 push string
          mov rax, s_25
          push rax
          ; 493 push integer
          mov rax, 493
          push rax
          ; 493 push string
          mov rax, s_77
          push rax
          ; 493 push boolean
          mov rax, 1
          push rax
          ; 493 call
          call malloc
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 494 get argument
          mov rax, rbp
          add rax, 72
          mov rbx, [rax]
          push rbx
          ; 494 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 494 push string
          mov rax, s_25
          push rax
          ; 494 push integer
          mov rax, 494
          push rax
          ; 494 push string
          mov rax, s_77
          push rax
          ; 494 push boolean
          mov rax, 1
          push rax
          ; 494 call
          call strcpy
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 495 duplicate
          pop rax
          push rax
          push rax
          ; 495 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 495 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 495 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 495 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 495 push string
          mov rax, s_25
          push rax
          ; 495 push integer
          mov rax, 495
          push rax
          ; 495 push string
          mov rax, s_77
          push rax
          ; 495 push boolean
          mov rax, 1
          push rax
          ; 495 call
          call strcpy
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 495 drop
          pop rax
          ; 491 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 491 return
          ret
          ; 498 function definition
concat:   
          push rbp
          mov rbp, rsp
          ; 500 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 500 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 500 push string
          mov rax, s_25
          push rax
          ; 500 push integer
          mov rax, 500
          push rax
          ; 500 push string
          mov rax, s_78
          push rax
          ; 500 push boolean
          mov rax, 1
          push rax
          ; 500 call
          call strlen
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 500 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 500 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 500 push string
          mov rax, s_25
          push rax
          ; 500 push integer
          mov rax, 500
          push rax
          ; 500 push string
          mov rax, s_78
          push rax
          ; 500 push boolean
          mov rax, 1
          push rax
          ; 500 call
          call strlen
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 500 push string
          mov rax, s_25
          push rax
          ; 500 push integer
          mov rax, 500
          push rax
          ; 500 push string
          mov rax, s_78
          push rax
          ; 500 push boolean
          mov rax, 1
          push rax
          ; 500 call
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
          ; 499 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 499 return
          ret
          ; 503 function definition
concatfl: 
          push rbp
          mov rbp, rsp
          ; 505 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 505 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 505 push string
          mov rax, s_25
          push rax
          ; 505 push integer
          mov rax, 505
          push rax
          ; 505 push string
          mov rax, s_79
          push rax
          ; 505 push boolean
          mov rax, 1
          push rax
          ; 505 call
          call concat
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 506 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 506 push string
          mov rax, s_25
          push rax
          ; 506 push integer
          mov rax, 506
          push rax
          ; 506 push string
          mov rax, s_79
          push rax
          ; 506 push boolean
          mov rax, 1
          push rax
          ; 506 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 504 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 504 return
          ret
          ; 509 function definition
concatfr: 
          push rbp
          mov rbp, rsp
          ; 511 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
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
          mov rax, s_80
          push rax
          ; 511 push boolean
          mov rax, 1
          push rax
          ; 511 call
          call concat
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 512 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 512 push string
          mov rax, s_25
          push rax
          ; 512 push integer
          mov rax, 512
          push rax
          ; 512 push string
          mov rax, s_80
          push rax
          ; 512 push boolean
          mov rax, 1
          push rax
          ; 512 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 510 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 510 return
          ret
          ; 515 function definition
concatf:  
          push rbp
          mov rbp, rsp
          ; 517 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 517 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 517 push string
          mov rax, s_25
          push rax
          ; 517 push integer
          mov rax, 517
          push rax
          ; 517 push string
          mov rax, s_81
          push rax
          ; 517 push boolean
          mov rax, 1
          push rax
          ; 517 call
          call concat
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 518 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 518 push string
          mov rax, s_25
          push rax
          ; 518 push integer
          mov rax, 518
          push rax
          ; 518 push string
          mov rax, s_81
          push rax
          ; 518 push boolean
          mov rax, 1
          push rax
          ; 518 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 519 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 519 push string
          mov rax, s_25
          push rax
          ; 519 push integer
          mov rax, 519
          push rax
          ; 519 push string
          mov rax, s_81
          push rax
          ; 519 push boolean
          mov rax, 1
          push rax
          ; 519 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 516 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 516 return
          ret
          ; 522 function definition
stoi:     
          push rbp
          mov rbp, rsp
          ; 524 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 524 push integer
          mov rax, 0
          push rax
          ; 525 label
while_0x0000000000000011: 
          ; 525 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 525 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 525 push integer
          mov rax, 0
          push rax
          ; 525 is not equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovne rax, rbx
          push rax
          ; 525 start of while-loop
          pop rax
          test rax, rax
          jz while_0x0000000000000011_end
          ; 526 push integer
          mov rax, 10
          push rax
          ; 526 multiply
          pop rax
          pop rbx
          imul rbx, rax
          push rbx
          ; 527 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 527 dereference character
          pop rax
          xor rbx, rbx
          mov bl, [rax]
          push rbx
          ; 529 duplicate
          pop rax
          push rax
          push rax
          ; 529 push character
          mov rax, `0`
          push rax
          ; 529 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 529 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 529 push character
          mov rax, `9`
          push rax
          ; 529 is greater?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovg rax, rbx
          push rax
          ; 529 bitwise or
          pop rax
          pop rbx
          or rbx, rax
          push rbx
          ; 529 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000003b
          ; 530 push string
          mov rax, s_82
          push rax
          ; 530 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 530 push string
          mov rax, s_25
          push rax
          ; 530 push integer
          mov rax, 530
          push rax
          ; 530 push string
          mov rax, s_83
          push rax
          ; 530 push boolean
          mov rax, 1
          push rax
          ; 530 call
          call concat
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 530 push string
          mov rax, s_7
          push rax
          ; 530 push string
          mov rax, s_25
          push rax
          ; 530 push integer
          mov rax, 530
          push rax
          ; 530 push string
          mov rax, s_83
          push rax
          ; 530 push boolean
          mov rax, 1
          push rax
          ; 530 call
          call concat
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 530 push string
          mov rax, s_25
          push rax
          ; 530 push integer
          mov rax, 530
          push rax
          ; 530 push string
          mov rax, s_83
          push rax
          ; 530 push boolean
          mov rax, 1
          push rax
          ; 530 call
          call raise
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 530 jump
          jmp end_0x000000000000003b
          ; 530 label
if_0x000000000000003b: 
          ; 530 label
end_0x000000000000003b: 
          ; 532 push character
          mov rax, `0`
          push rax
          ; 532 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 532 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 533 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 533 push integer
          mov rax, 1
          push rax
          ; 533 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 533 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 525 end of while-loop
          jmp while_0x0000000000000011
while_0x0000000000000011_end: 
          ; 523 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 523 return
          ret
          ; 536 create buffer
          ; 538 function definition
read_file: 
          push rbp
          mov rbp, rsp
          ; 540 push integer
          mov rax, 1
          push rax
          ; 540 push string
          mov rax, s_25
          push rax
          ; 540 push integer
          mov rax, 540
          push rax
          ; 540 push string
          mov rax, s_84
          push rax
          ; 540 push boolean
          mov rax, 1
          push rax
          ; 540 call
          call malloc
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 541 duplicate
          pop rax
          push rax
          push rax
          ; 541 push integer
          mov rax, 0
          push rax
          ; 541 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 541 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 542 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 542 push character
          mov rax, `r`
          push rax
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
          call open
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 544 push integer
          mov rax, 1
          push rax
          ; 544 label
while_0x0000000000000012: 
          ; 544 duplicate
          pop rax
          push rax
          push rax
          ; 544 push integer
          mov rax, 0
          push rax
          ; 544 is greater?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovg rax, rbx
          push rax
          ; 544 start of while-loop
          pop rax
          test rax, rax
          jz while_0x0000000000000012_end
          ; 545 drop
          pop rax
          ; 546 duplicate
          pop rax
          push rax
          push rax
          ; 546 get pointer to buffer
          mov rax, _read_file_buffer
          push rax
          ; 546 push integer
          mov rax, 512
          push rax
          ; 546 push string
          mov rax, s_25
          push rax
          ; 546 push integer
          mov rax, 546
          push rax
          ; 546 push string
          mov rax, s_84
          push rax
          ; 546 push boolean
          mov rax, 1
          push rax
          ; 546 call
          call read
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 547 duplicate
          pop rax
          push rax
          push rax
          ; 547 get pointer to buffer
          mov rax, _read_file_buffer
          push rax
          ; 547 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 547 push integer
          mov rax, 0
          push rax
          ; 547 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 547 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 548 duplicate
          pop rax
          push rax
          push rax
          ; 548 push integer
          mov rax, 0
          push rax
          ; 548 is greater?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovg rax, rbx
          push rax
          ; 548 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000003c
          ; 549 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 549 duplicate
          pop rax
          push rax
          push rax
          ; 549 get pointer to buffer
          mov rax, _read_file_buffer
          push rax
          ; 549 push string
          mov rax, s_25
          push rax
          ; 549 push integer
          mov rax, 549
          push rax
          ; 549 push string
          mov rax, s_84
          push rax
          ; 549 push boolean
          mov rax, 1
          push rax
          ; 549 call
          call concat
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 550 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 550 push string
          mov rax, s_25
          push rax
          ; 550 push integer
          mov rax, 550
          push rax
          ; 550 push string
          mov rax, s_84
          push rax
          ; 550 push boolean
          mov rax, 1
          push rax
          ; 550 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 551 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 551 rot
          pop rax
          pop rbx
          pop rcx
          push rbx
          push rax
          push rcx
          ; 549 jump
          jmp end_0x000000000000003c
          ; 549 label
if_0x000000000000003c: 
          ; 549 label
end_0x000000000000003c: 
          ; 544 end of while-loop
          jmp while_0x0000000000000012
while_0x0000000000000012_end: 
          ; 552 drop
          pop rax
          ; 552 drop
          pop rax
          ; 539 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 539 return
          ret
          ; 555 function definition
substring: 
          push rbp
          mov rbp, rsp
          ; 558 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 558 push integer
          mov rax, 1
          push rax
          ; 558 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 558 push string
          mov rax, s_25
          push rax
          ; 558 push integer
          mov rax, 558
          push rax
          ; 558 push string
          mov rax, s_85
          push rax
          ; 558 push boolean
          mov rax, 1
          push rax
          ; 558 call
          call malloc
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 559 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 559 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 559 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 559 push string
          mov rax, s_25
          push rax
          ; 559 push integer
          mov rax, 559
          push rax
          ; 559 push string
          mov rax, s_85
          push rax
          ; 559 push boolean
          mov rax, 1
          push rax
          ; 559 call
          call memcpy
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 560 duplicate
          pop rax
          push rax
          push rax
          ; 560 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 560 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 560 push integer
          mov rax, 0
          push rax
          ; 560 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 560 set character value
          pop rax
          pop rbx
          mov [rax], bl
          ; 556 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 556 return
          ret
          ; 568 function definition
gcd:      
          push rbp
          mov rbp, rsp
          ; 570 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 570 push integer
          mov rax, 0
          push rax
          ; 570 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 570 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000003d
          ; 571 push integer
          mov rax, 0
          push rax
          ; 571 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 571 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 571 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 571 push string
          mov rax, s_25
          push rax
          ; 571 push integer
          mov rax, 571
          push rax
          ; 571 push string
          mov rax, s_86
          push rax
          ; 571 push boolean
          mov rax, 1
          push rax
          ; 571 call
          call gcd
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 571 jump
          jmp end_0x000000000000003d
          ; 571 label
if_0x000000000000003d: 
          ; 572 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 572 push integer
          mov rax, 0
          push rax
          ; 572 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 572 start of if-block
          pop rax
          test rax, rax
          jz elif_0x000000000000003e
          ; 573 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 573 push integer
          mov rax, 0
          push rax
          ; 573 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 573 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 573 push string
          mov rax, s_25
          push rax
          ; 573 push integer
          mov rax, 573
          push rax
          ; 573 push string
          mov rax, s_86
          push rax
          ; 573 push boolean
          mov rax, 1
          push rax
          ; 573 call
          call gcd
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 572 jump
          jmp end_0x000000000000003d
          ; 572 label
elif_0x000000000000003e: 
          ; 574 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 574 push integer
          mov rax, 0
          push rax
          ; 574 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 574 start of if-block
          pop rax
          test rax, rax
          jz elif_0x000000000000003f
          ; 575 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 574 jump
          jmp end_0x000000000000003d
          ; 574 label
elif_0x000000000000003f: 
          ; 576 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 576 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 576 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 576 start of if-block
          pop rax
          test rax, rax
          jz elif_0x0000000000000040
          ; 577 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 577 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 577 push string
          mov rax, s_25
          push rax
          ; 577 push integer
          mov rax, 577
          push rax
          ; 577 push string
          mov rax, s_86
          push rax
          ; 577 push boolean
          mov rax, 1
          push rax
          ; 577 call
          call gcd
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 576 jump
          jmp end_0x000000000000003d
          ; 576 label
elif_0x0000000000000040: 
          ; 578 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 578 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 578 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 578 start of if-block
          pop rax
          test rax, rax
          jz elif_0x0000000000000041
          ; 579 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 578 jump
          jmp end_0x000000000000003d
          ; 578 label
elif_0x0000000000000041: 
          ; 581 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 581 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 581 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 581 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 581 push string
          mov rax, s_25
          push rax
          ; 581 push integer
          mov rax, 581
          push rax
          ; 581 push string
          mov rax, s_86
          push rax
          ; 581 push boolean
          mov rax, 1
          push rax
          ; 581 call
          call gcd
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 581 label
end_0x000000000000003d: 
          ; 569 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 569 return
          ret
          ; 584 function definition
ratio_simplify: 
          push rbp
          mov rbp, rsp
          ; 586 push string
          mov rax, s_87
          push rax
          ; 586 push string
          mov rax, s_25
          push rax
          ; 586 push integer
          mov rax, 586
          push rax
          ; 586 push string
          mov rax, s_88
          push rax
          ; 586 push boolean
          mov rax, 1
          push rax
          ; 586 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 587 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 587 push integer
          mov rax, 8
          push rax
          ; 587 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 587 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 588 push string
          mov rax, s_89
          push rax
          ; 588 push string
          mov rax, s_25
          push rax
          ; 588 push integer
          mov rax, 588
          push rax
          ; 588 push string
          mov rax, s_88
          push rax
          ; 588 push boolean
          mov rax, 1
          push rax
          ; 588 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 589 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 589 push integer
          mov rax, 0
          push rax
          ; 589 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 589 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 590 push string
          mov rax, s_90
          push rax
          ; 590 push string
          mov rax, s_25
          push rax
          ; 590 push integer
          mov rax, 590
          push rax
          ; 590 push string
          mov rax, s_88
          push rax
          ; 590 push boolean
          mov rax, 1
          push rax
          ; 590 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 591 push string
          mov rax, s_25
          push rax
          ; 591 push integer
          mov rax, 591
          push rax
          ; 591 push string
          mov rax, s_88
          push rax
          ; 591 push boolean
          mov rax, 1
          push rax
          ; 591 call
          call gcd
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 592 push string
          mov rax, s_91
          push rax
          ; 592 push string
          mov rax, s_25
          push rax
          ; 592 push integer
          mov rax, 592
          push rax
          ; 592 push string
          mov rax, s_88
          push rax
          ; 592 push boolean
          mov rax, 1
          push rax
          ; 592 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 592 duplicate
          pop rax
          push rax
          push rax
          ; 592 push string
          mov rax, s_25
          push rax
          ; 592 push integer
          mov rax, 592
          push rax
          ; 592 push string
          mov rax, s_88
          push rax
          ; 592 push boolean
          mov rax, 1
          push rax
          ; 592 call
          call puti
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 592 push string
          mov rax, s_92
          push rax
          ; 592 push string
          mov rax, s_25
          push rax
          ; 592 push integer
          mov rax, 592
          push rax
          ; 592 push string
          mov rax, s_88
          push rax
          ; 592 push boolean
          mov rax, 1
          push rax
          ; 592 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 593 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 593 push integer
          mov rax, 0
          push rax
          ; 593 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 593 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 593 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 593 divide
          xor rdx, rdx
          pop rbx
          pop rax
          div rbx
          push rax
          ; 593 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 593 push integer
          mov rax, 0
          push rax
          ; 593 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 593 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 594 push string
          mov rax, s_93
          push rax
          ; 594 push string
          mov rax, s_25
          push rax
          ; 594 push integer
          mov rax, 594
          push rax
          ; 594 push string
          mov rax, s_88
          push rax
          ; 594 push boolean
          mov rax, 1
          push rax
          ; 594 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 595 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 595 push integer
          mov rax, 8
          push rax
          ; 595 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 595 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 595 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 595 divide
          xor rdx, rdx
          pop rbx
          pop rax
          div rbx
          push rax
          ; 595 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 595 push integer
          mov rax, 8
          push rax
          ; 595 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 595 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 596 push string
          mov rax, s_94
          push rax
          ; 596 push string
          mov rax, s_25
          push rax
          ; 596 push integer
          mov rax, 596
          push rax
          ; 596 push string
          mov rax, s_88
          push rax
          ; 596 push boolean
          mov rax, 1
          push rax
          ; 596 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 585 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 585 return
          ret
          ; 599 function definition
create_ratio: 
          push rbp
          mov rbp, rsp
          ; 601 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 601 push integer
          mov rax, 0
          push rax
          ; 601 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 601 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000042
          ; 602 push string
          mov rax, s_95
          push rax
          ; 602 push string
          mov rax, s_25
          push rax
          ; 602 push integer
          mov rax, 602
          push rax
          ; 602 push string
          mov rax, s_96
          push rax
          ; 602 push boolean
          mov rax, 1
          push rax
          ; 602 call
          call raise
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 602 jump
          jmp end_0x0000000000000042
          ; 602 label
if_0x0000000000000042: 
          ; 602 label
end_0x0000000000000042: 
          ; 604 push integer
          mov rax, 16
          push rax
          ; 604 push string
          mov rax, s_25
          push rax
          ; 604 push integer
          mov rax, 604
          push rax
          ; 604 push string
          mov rax, s_96
          push rax
          ; 604 push boolean
          mov rax, 1
          push rax
          ; 604 call
          call malloc
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 605 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 605 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 605 push integer
          mov rax, 0
          push rax
          ; 605 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 605 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 606 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 606 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 606 push integer
          mov rax, 8
          push rax
          ; 606 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 606 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 607 duplicate
          pop rax
          push rax
          push rax
          ; 607 push string
          mov rax, s_25
          push rax
          ; 607 push integer
          mov rax, 607
          push rax
          ; 607 push string
          mov rax, s_96
          push rax
          ; 607 push boolean
          mov rax, 1
          push rax
          ; 607 call
          call ratio_simplify
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 600 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 600 return
          ret
          ; 610 function definition
copy_ratio: 
          push rbp
          mov rbp, rsp
          ; 612 push integer
          mov rax, 16
          push rax
          ; 612 push string
          mov rax, s_25
          push rax
          ; 612 push integer
          mov rax, 612
          push rax
          ; 612 push string
          mov rax, s_97
          push rax
          ; 612 push boolean
          mov rax, 1
          push rax
          ; 612 call
          call malloc
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 613 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 613 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 613 push integer
          mov rax, 16
          push rax
          ; 613 push string
          mov rax, s_25
          push rax
          ; 613 push integer
          mov rax, 613
          push rax
          ; 613 push string
          mov rax, s_97
          push rax
          ; 613 push boolean
          mov rax, 1
          push rax
          ; 613 call
          call memcpy
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 611 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 611 return
          ret
          ; 616 function definition
ratio_add: 
          push rbp
          mov rbp, rsp
          ; 619 push string
          mov rax, s_98
          push rax
          ; 619 push string
          mov rax, s_25
          push rax
          ; 619 push integer
          mov rax, 619
          push rax
          ; 619 push string
          mov rax, s_99
          push rax
          ; 619 push boolean
          mov rax, 1
          push rax
          ; 619 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 620 push integer
          mov rax, 16
          push rax
          ; 620 push string
          mov rax, s_25
          push rax
          ; 620 push integer
          mov rax, 620
          push rax
          ; 620 push string
          mov rax, s_99
          push rax
          ; 620 push boolean
          mov rax, 1
          push rax
          ; 620 call
          call malloc
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 621 push string
          mov rax, s_100
          push rax
          ; 621 push string
          mov rax, s_25
          push rax
          ; 621 push integer
          mov rax, 621
          push rax
          ; 621 push string
          mov rax, s_99
          push rax
          ; 621 push boolean
          mov rax, 1
          push rax
          ; 621 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 622 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 622 push integer
          mov rax, 0
          push rax
          ; 622 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 622 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 622 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 622 push integer
          mov rax, 8
          push rax
          ; 622 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 622 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 622 multiply
          pop rax
          pop rbx
          imul rbx, rax
          push rbx
          ; 623 push string
          mov rax, s_101
          push rax
          ; 623 push string
          mov rax, s_25
          push rax
          ; 623 push integer
          mov rax, 623
          push rax
          ; 623 push string
          mov rax, s_99
          push rax
          ; 623 push boolean
          mov rax, 1
          push rax
          ; 623 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 624 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 624 push integer
          mov rax, 0
          push rax
          ; 624 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 624 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 624 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 624 push integer
          mov rax, 8
          push rax
          ; 624 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 624 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 624 multiply
          pop rax
          pop rbx
          imul rbx, rax
          push rbx
          ; 624 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 624 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 624 push integer
          mov rax, 0
          push rax
          ; 624 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 624 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 625 push string
          mov rax, s_102
          push rax
          ; 625 push string
          mov rax, s_25
          push rax
          ; 625 push integer
          mov rax, 625
          push rax
          ; 625 push string
          mov rax, s_99
          push rax
          ; 625 push boolean
          mov rax, 1
          push rax
          ; 625 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 626 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 626 push integer
          mov rax, 8
          push rax
          ; 626 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 626 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 626 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 626 push integer
          mov rax, 8
          push rax
          ; 626 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 626 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 626 multiply
          pop rax
          pop rbx
          imul rbx, rax
          push rbx
          ; 626 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 626 push integer
          mov rax, 8
          push rax
          ; 626 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 626 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 627 push string
          mov rax, s_103
          push rax
          ; 627 push string
          mov rax, s_25
          push rax
          ; 627 push integer
          mov rax, 627
          push rax
          ; 627 push string
          mov rax, s_99
          push rax
          ; 627 push boolean
          mov rax, 1
          push rax
          ; 627 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 628 duplicate
          pop rax
          push rax
          push rax
          ; 628 push string
          mov rax, s_25
          push rax
          ; 628 push integer
          mov rax, 628
          push rax
          ; 628 push string
          mov rax, s_99
          push rax
          ; 628 push boolean
          mov rax, 1
          push rax
          ; 628 call
          call ratio_simplify
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 629 push string
          mov rax, s_104
          push rax
          ; 629 push string
          mov rax, s_25
          push rax
          ; 629 push integer
          mov rax, 629
          push rax
          ; 629 push string
          mov rax, s_99
          push rax
          ; 629 push boolean
          mov rax, 1
          push rax
          ; 629 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 617 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 617 return
          ret
          ; 632 function definition
ratio_sub: 
          push rbp
          mov rbp, rsp
          ; 635 push integer
          mov rax, 16
          push rax
          ; 635 push string
          mov rax, s_25
          push rax
          ; 635 push integer
          mov rax, 635
          push rax
          ; 635 push string
          mov rax, s_105
          push rax
          ; 635 push boolean
          mov rax, 1
          push rax
          ; 635 call
          call malloc
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 636 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 636 push integer
          mov rax, 0
          push rax
          ; 636 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 636 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 636 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 636 push integer
          mov rax, 8
          push rax
          ; 636 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 636 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 636 multiply
          pop rax
          pop rbx
          imul rbx, rax
          push rbx
          ; 637 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 637 push integer
          mov rax, 0
          push rax
          ; 637 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 637 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 637 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 637 push integer
          mov rax, 8
          push rax
          ; 637 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 637 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 637 multiply
          pop rax
          pop rbx
          imul rbx, rax
          push rbx
          ; 637 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 637 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 637 push integer
          mov rax, 0
          push rax
          ; 637 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 637 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 638 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 638 push integer
          mov rax, 8
          push rax
          ; 638 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 638 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 638 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 638 push integer
          mov rax, 8
          push rax
          ; 638 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 638 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 638 multiply
          pop rax
          pop rbx
          imul rbx, rax
          push rbx
          ; 638 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 638 push integer
          mov rax, 8
          push rax
          ; 638 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 638 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 639 duplicate
          pop rax
          push rax
          push rax
          ; 639 push string
          mov rax, s_25
          push rax
          ; 639 push integer
          mov rax, 639
          push rax
          ; 639 push string
          mov rax, s_105
          push rax
          ; 639 push boolean
          mov rax, 1
          push rax
          ; 639 call
          call ratio_simplify
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 633 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 633 return
          ret
          ; 642 function definition
ratio_mul: 
          push rbp
          mov rbp, rsp
          ; 646 push integer
          mov rax, 16
          push rax
          ; 646 push string
          mov rax, s_25
          push rax
          ; 646 push integer
          mov rax, 646
          push rax
          ; 646 push string
          mov rax, s_106
          push rax
          ; 646 push boolean
          mov rax, 1
          push rax
          ; 646 call
          call malloc
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 647 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 647 push integer
          mov rax, 0
          push rax
          ; 647 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 647 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 647 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 647 push integer
          mov rax, 0
          push rax
          ; 647 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 647 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 648 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 648 push integer
          mov rax, 0
          push rax
          ; 648 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 648 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 648 push integer
          mov rax, 0
          push rax
          ; 648 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 648 bitwise and
          pop rax
          pop rbx
          and rbx, rax
          push rbx
          ; 648 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000043
          ; 649 push integer
          mov rax, 0
          push rax
          ; 649 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 649 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 650 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 650 push integer
          mov rax, 0
          push rax
          ; 650 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 650 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 651 multiply
          pop rax
          pop rbx
          imul rbx, rax
          push rbx
          ; 649 jump
          jmp end_0x0000000000000043
          ; 649 label
if_0x0000000000000043: 
          ; 652 duplicate
          pop rax
          push rax
          push rax
          ; 652 push integer
          mov rax, 0
          push rax
          ; 652 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 652 start of if-block
          pop rax
          test rax, rax
          jz elif_0x0000000000000044
          ; 653 push integer
          mov rax, 0
          push rax
          ; 653 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 653 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 654 multiply
          pop rax
          pop rbx
          imul rbx, rax
          push rbx
          ; 654 push integer
          mov rax, 0
          push rax
          ; 654 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 654 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 652 jump
          jmp end_0x0000000000000043
          ; 652 label
elif_0x0000000000000044: 
          ; 655 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 655 push integer
          mov rax, 0
          push rax
          ; 655 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 655 start of if-block
          pop rax
          test rax, rax
          jz elif_0x0000000000000045
          ; 656 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 656 push integer
          mov rax, 0
          push rax
          ; 656 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 656 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 657 multiply
          pop rax
          pop rbx
          imul rbx, rax
          push rbx
          ; 657 push integer
          mov rax, 0
          push rax
          ; 657 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 657 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 655 jump
          jmp end_0x0000000000000043
          ; 655 label
elif_0x0000000000000045: 
          ; 659 multiply
          pop rax
          pop rbx
          imul rbx, rax
          push rbx
          ; 659 label
end_0x0000000000000043: 
          ; 661 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 661 push integer
          mov rax, 0
          push rax
          ; 661 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 661 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 662 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 662 push integer
          mov rax, 8
          push rax
          ; 662 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 662 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 662 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 662 push integer
          mov rax, 8
          push rax
          ; 662 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 662 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 663 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 663 push integer
          mov rax, 0
          push rax
          ; 663 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 663 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 663 push integer
          mov rax, 0
          push rax
          ; 663 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 663 bitwise and
          pop rax
          pop rbx
          and rbx, rax
          push rbx
          ; 663 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000046
          ; 664 push integer
          mov rax, 0
          push rax
          ; 664 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 664 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 665 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 665 push integer
          mov rax, 0
          push rax
          ; 665 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 665 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 666 multiply
          pop rax
          pop rbx
          imul rbx, rax
          push rbx
          ; 664 jump
          jmp end_0x0000000000000046
          ; 664 label
if_0x0000000000000046: 
          ; 667 duplicate
          pop rax
          push rax
          push rax
          ; 667 push integer
          mov rax, 0
          push rax
          ; 667 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 667 start of if-block
          pop rax
          test rax, rax
          jz elif_0x0000000000000047
          ; 668 push integer
          mov rax, 0
          push rax
          ; 668 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 668 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 669 multiply
          pop rax
          pop rbx
          imul rbx, rax
          push rbx
          ; 669 push integer
          mov rax, 0
          push rax
          ; 669 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 669 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 667 jump
          jmp end_0x0000000000000046
          ; 667 label
elif_0x0000000000000047: 
          ; 670 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 670 push integer
          mov rax, 0
          push rax
          ; 670 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 670 start of if-block
          pop rax
          test rax, rax
          jz elif_0x0000000000000048
          ; 671 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 671 push integer
          mov rax, 0
          push rax
          ; 671 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 671 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 672 multiply
          pop rax
          pop rbx
          imul rbx, rax
          push rbx
          ; 672 push integer
          mov rax, 0
          push rax
          ; 672 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 672 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 670 jump
          jmp end_0x0000000000000046
          ; 670 label
elif_0x0000000000000048: 
          ; 674 multiply
          pop rax
          pop rbx
          imul rbx, rax
          push rbx
          ; 674 label
end_0x0000000000000046: 
          ; 675 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 675 push integer
          mov rax, 8
          push rax
          ; 675 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 675 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 676 duplicate
          pop rax
          push rax
          push rax
          ; 676 push string
          mov rax, s_25
          push rax
          ; 676 push integer
          mov rax, 676
          push rax
          ; 676 push string
          mov rax, s_106
          push rax
          ; 676 push boolean
          mov rax, 1
          push rax
          ; 676 call
          call ratio_simplify
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 643 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 643 return
          ret
          ; 679 function definition
ratio_div: 
          push rbp
          mov rbp, rsp
          ; 683 push integer
          mov rax, 16
          push rax
          ; 683 push string
          mov rax, s_25
          push rax
          ; 683 push integer
          mov rax, 683
          push rax
          ; 683 push string
          mov rax, s_107
          push rax
          ; 683 push boolean
          mov rax, 1
          push rax
          ; 683 call
          call malloc
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 684 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 684 push integer
          mov rax, 0
          push rax
          ; 684 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 684 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 684 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 684 push integer
          mov rax, 8
          push rax
          ; 684 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 684 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 685 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 685 push integer
          mov rax, 0
          push rax
          ; 685 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 685 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 685 push integer
          mov rax, 0
          push rax
          ; 685 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 685 bitwise and
          pop rax
          pop rbx
          and rbx, rax
          push rbx
          ; 685 start of if-block
          pop rax
          test rax, rax
          jz if_0x0000000000000049
          ; 686 push integer
          mov rax, 0
          push rax
          ; 686 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 686 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 687 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 687 push integer
          mov rax, 0
          push rax
          ; 687 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 687 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 688 multiply
          pop rax
          pop rbx
          imul rbx, rax
          push rbx
          ; 686 jump
          jmp end_0x0000000000000049
          ; 686 label
if_0x0000000000000049: 
          ; 689 duplicate
          pop rax
          push rax
          push rax
          ; 689 push integer
          mov rax, 0
          push rax
          ; 689 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 689 start of if-block
          pop rax
          test rax, rax
          jz elif_0x000000000000004a
          ; 690 push integer
          mov rax, 0
          push rax
          ; 690 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 690 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 691 multiply
          pop rax
          pop rbx
          imul rbx, rax
          push rbx
          ; 691 push integer
          mov rax, 0
          push rax
          ; 691 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 691 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 689 jump
          jmp end_0x0000000000000049
          ; 689 label
elif_0x000000000000004a: 
          ; 692 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 692 push integer
          mov rax, 0
          push rax
          ; 692 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 692 start of if-block
          pop rax
          test rax, rax
          jz elif_0x000000000000004b
          ; 693 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 693 push integer
          mov rax, 0
          push rax
          ; 693 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 693 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 694 multiply
          pop rax
          pop rbx
          imul rbx, rax
          push rbx
          ; 694 push integer
          mov rax, 0
          push rax
          ; 694 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 694 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 692 jump
          jmp end_0x0000000000000049
          ; 692 label
elif_0x000000000000004b: 
          ; 696 multiply
          pop rax
          pop rbx
          imul rbx, rax
          push rbx
          ; 696 label
end_0x0000000000000049: 
          ; 697 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 697 push integer
          mov rax, 0
          push rax
          ; 697 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 697 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 699 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 699 push integer
          mov rax, 8
          push rax
          ; 699 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 699 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 699 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 699 push integer
          mov rax, 0
          push rax
          ; 699 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 699 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 700 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 700 push integer
          mov rax, 0
          push rax
          ; 700 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 700 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 700 push integer
          mov rax, 0
          push rax
          ; 700 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 700 bitwise and
          pop rax
          pop rbx
          and rbx, rax
          push rbx
          ; 700 start of if-block
          pop rax
          test rax, rax
          jz if_0x000000000000004c
          ; 701 push integer
          mov rax, 0
          push rax
          ; 701 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 701 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 702 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 702 push integer
          mov rax, 0
          push rax
          ; 702 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 702 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 703 multiply
          pop rax
          pop rbx
          imul rbx, rax
          push rbx
          ; 701 jump
          jmp end_0x000000000000004c
          ; 701 label
if_0x000000000000004c: 
          ; 704 duplicate
          pop rax
          push rax
          push rax
          ; 704 push integer
          mov rax, 0
          push rax
          ; 704 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 704 start of if-block
          pop rax
          test rax, rax
          jz elif_0x000000000000004d
          ; 705 push integer
          mov rax, 0
          push rax
          ; 705 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 705 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 706 multiply
          pop rax
          pop rbx
          imul rbx, rax
          push rbx
          ; 706 push integer
          mov rax, 0
          push rax
          ; 706 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 706 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 704 jump
          jmp end_0x000000000000004c
          ; 704 label
elif_0x000000000000004d: 
          ; 707 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 707 push integer
          mov rax, 0
          push rax
          ; 707 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 707 start of if-block
          pop rax
          test rax, rax
          jz elif_0x000000000000004e
          ; 708 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 708 push integer
          mov rax, 0
          push rax
          ; 708 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 708 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 709 multiply
          pop rax
          pop rbx
          imul rbx, rax
          push rbx
          ; 709 push integer
          mov rax, 0
          push rax
          ; 709 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 709 subtract
          pop rax
          pop rbx
          sub rbx, rax
          push rbx
          ; 707 jump
          jmp end_0x000000000000004c
          ; 707 label
elif_0x000000000000004e: 
          ; 711 multiply
          pop rax
          pop rbx
          imul rbx, rax
          push rbx
          ; 711 label
end_0x000000000000004c: 
          ; 712 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 712 push integer
          mov rax, 8
          push rax
          ; 712 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 712 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 713 duplicate
          pop rax
          push rax
          push rax
          ; 713 push string
          mov rax, s_25
          push rax
          ; 713 push integer
          mov rax, 713
          push rax
          ; 713 push string
          mov rax, s_107
          push rax
          ; 713 push boolean
          mov rax, 1
          push rax
          ; 713 call
          call ratio_simplify
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 680 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 680 return
          ret
          ; 716 function definition
ratio_sqrt: 
          push rbp
          mov rbp, rsp
          ; 719 push integer
          mov rax, 16
          push rax
          ; 719 push string
          mov rax, s_25
          push rax
          ; 719 push integer
          mov rax, 719
          push rax
          ; 719 push string
          mov rax, s_108
          push rax
          ; 719 push boolean
          mov rax, 1
          push rax
          ; 719 call
          call malloc
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 720 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 720 push integer
          mov rax, 0
          push rax
          ; 720 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 720 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 720 push string
          mov rax, s_25
          push rax
          ; 720 push integer
          mov rax, 720
          push rax
          ; 720 push string
          mov rax, s_108
          push rax
          ; 720 push boolean
          mov rax, 1
          push rax
          ; 720 call
          call sqrt
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 720 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 720 push integer
          mov rax, 0
          push rax
          ; 720 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 720 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 721 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 721 push integer
          mov rax, 8
          push rax
          ; 721 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 721 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 721 push string
          mov rax, s_25
          push rax
          ; 721 push integer
          mov rax, 721
          push rax
          ; 721 push string
          mov rax, s_108
          push rax
          ; 721 push boolean
          mov rax, 1
          push rax
          ; 721 call
          call sqrt
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 721 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 721 push integer
          mov rax, 8
          push rax
          ; 721 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 721 set integer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 722 duplicate
          pop rax
          push rax
          push rax
          ; 722 push string
          mov rax, s_25
          push rax
          ; 722 push integer
          mov rax, 722
          push rax
          ; 722 push string
          mov rax, s_108
          push rax
          ; 722 push boolean
          mov rax, 1
          push rax
          ; 722 call
          call ratio_simplify
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 717 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 717 return
          ret
          ; 725 function definition
rtoi:     
          push rbp
          mov rbp, rsp
          ; 727 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 727 push integer
          mov rax, 0
          push rax
          ; 727 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 727 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 728 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 728 push integer
          mov rax, 8
          push rax
          ; 728 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 728 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 728 divide
          xor rdx, rdx
          pop rbx
          pop rax
          div rbx
          push rax
          ; 726 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 726 return
          ret
          ; 731 function definition
itor:     
          push rbp
          mov rbp, rsp
          ; 733 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 733 push integer
          mov rax, 1
          push rax
          ; 733 push string
          mov rax, s_25
          push rax
          ; 733 push integer
          mov rax, 733
          push rax
          ; 733 push string
          mov rax, s_109
          push rax
          ; 733 push boolean
          mov rax, 1
          push rax
          ; 733 call
          call create_ratio
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 732 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 732 return
          ret
          ; 736 function definition
ratio_eq: 
          push rbp
          mov rbp, rsp
          ; 738 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 738 push integer
          mov rax, 0
          push rax
          ; 738 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 738 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 738 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 738 push integer
          mov rax, 0
          push rax
          ; 738 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 738 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 738 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 739 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 739 push integer
          mov rax, 8
          push rax
          ; 739 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 739 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 739 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 739 push integer
          mov rax, 8
          push rax
          ; 739 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 739 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 739 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 739 bitwise and
          pop rax
          pop rbx
          and rbx, rax
          push rbx
          ; 737 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 737 return
          ret
          ; 742 function definition
ratio_gt: 
          push rbp
          mov rbp, rsp
          ; 744 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 744 push integer
          mov rax, 0
          push rax
          ; 744 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 744 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 744 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 744 push integer
          mov rax, 8
          push rax
          ; 744 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 744 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 744 multiply
          pop rax
          pop rbx
          imul rbx, rax
          push rbx
          ; 745 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 745 push integer
          mov rax, 8
          push rax
          ; 745 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 745 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 745 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 745 push integer
          mov rax, 0
          push rax
          ; 745 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 745 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 745 multiply
          pop rax
          pop rbx
          imul rbx, rax
          push rbx
          ; 745 is greater?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovg rax, rbx
          push rax
          ; 743 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 743 return
          ret
          ; 16 function definition
create_color: 
          push rbp
          mov rbp, rsp
          ; 18 push integer
          mov rax, 24
          push rax
          ; 18 push string
          mov rax, s_110
          push rax
          ; 18 push integer
          mov rax, 18
          push rax
          ; 18 push string
          mov rax, s_111
          push rax
          ; 18 push boolean
          mov rax, 1
          push rax
          ; 18 call
          call malloc
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 19 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 19 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 19 push integer
          mov rax, 0
          push rax
          ; 19 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 19 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 20 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 20 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 20 push integer
          mov rax, 8
          push rax
          ; 20 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 20 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 21 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 21 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 21 push integer
          mov rax, 16
          push rax
          ; 21 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 21 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 17 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 17 return
          ret
          ; 24 function definition
free_color: 
          push rbp
          mov rbp, rsp
          ; 26 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 27 duplicate
          pop rax
          push rax
          push rax
          ; 27 push integer
          mov rax, 0
          push rax
          ; 27 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 27 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 27 push string
          mov rax, s_110
          push rax
          ; 27 push integer
          mov rax, 27
          push rax
          ; 27 push string
          mov rax, s_112
          push rax
          ; 27 push boolean
          mov rax, 1
          push rax
          ; 27 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 28 duplicate
          pop rax
          push rax
          push rax
          ; 28 push integer
          mov rax, 8
          push rax
          ; 28 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 28 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 28 push string
          mov rax, s_110
          push rax
          ; 28 push integer
          mov rax, 28
          push rax
          ; 28 push string
          mov rax, s_112
          push rax
          ; 28 push boolean
          mov rax, 1
          push rax
          ; 28 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 29 duplicate
          pop rax
          push rax
          push rax
          ; 29 push integer
          mov rax, 16
          push rax
          ; 29 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 29 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 29 push string
          mov rax, s_110
          push rax
          ; 29 push integer
          mov rax, 29
          push rax
          ; 29 push string
          mov rax, s_112
          push rax
          ; 29 push boolean
          mov rax, 1
          push rax
          ; 29 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 30 push string
          mov rax, s_110
          push rax
          ; 30 push integer
          mov rax, 30
          push rax
          ; 30 push string
          mov rax, s_112
          push rax
          ; 30 push boolean
          mov rax, 1
          push rax
          ; 30 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 25 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 25 return
          ret
          ; 40 function definition
create_point: 
          push rbp
          mov rbp, rsp
          ; 42 push integer
          mov rax, 24
          push rax
          ; 42 push string
          mov rax, s_110
          push rax
          ; 42 push integer
          mov rax, 42
          push rax
          ; 42 push string
          mov rax, s_113
          push rax
          ; 42 push boolean
          mov rax, 1
          push rax
          ; 42 call
          call malloc
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 43 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 43 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 43 push integer
          mov rax, 0
          push rax
          ; 43 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 43 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 44 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 44 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 44 push integer
          mov rax, 8
          push rax
          ; 44 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 44 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 45 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 45 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 45 push integer
          mov rax, 16
          push rax
          ; 45 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 45 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 41 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 41 return
          ret
          ; 47 function definition
free_point: 
          push rbp
          mov rbp, rsp
          ; 49 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 50 duplicate
          pop rax
          push rax
          push rax
          ; 50 push integer
          mov rax, 0
          push rax
          ; 50 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 50 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 50 push string
          mov rax, s_110
          push rax
          ; 50 push integer
          mov rax, 50
          push rax
          ; 50 push string
          mov rax, s_114
          push rax
          ; 50 push boolean
          mov rax, 1
          push rax
          ; 50 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 51 duplicate
          pop rax
          push rax
          push rax
          ; 51 push integer
          mov rax, 8
          push rax
          ; 51 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 51 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 51 push string
          mov rax, s_110
          push rax
          ; 51 push integer
          mov rax, 51
          push rax
          ; 51 push string
          mov rax, s_114
          push rax
          ; 51 push boolean
          mov rax, 1
          push rax
          ; 51 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 52 duplicate
          pop rax
          push rax
          push rax
          ; 52 push integer
          mov rax, 16
          push rax
          ; 52 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 52 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 52 push string
          mov rax, s_110
          push rax
          ; 52 push integer
          mov rax, 52
          push rax
          ; 52 push string
          mov rax, s_114
          push rax
          ; 52 push boolean
          mov rax, 1
          push rax
          ; 52 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 53 push string
          mov rax, s_110
          push rax
          ; 53 push integer
          mov rax, 53
          push rax
          ; 53 push string
          mov rax, s_114
          push rax
          ; 53 push boolean
          mov rax, 1
          push rax
          ; 53 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 48 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 48 return
          ret
          ; 63 function definition
create_vec: 
          push rbp
          mov rbp, rsp
          ; 65 push integer
          mov rax, 24
          push rax
          ; 65 push string
          mov rax, s_110
          push rax
          ; 65 push integer
          mov rax, 65
          push rax
          ; 65 push string
          mov rax, s_115
          push rax
          ; 65 push boolean
          mov rax, 1
          push rax
          ; 65 call
          call malloc
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 66 get argument
          mov rax, rbp
          add rax, 64
          mov rbx, [rax]
          push rbx
          ; 66 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 66 push integer
          mov rax, 0
          push rax
          ; 66 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 66 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 67 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 67 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 67 push integer
          mov rax, 8
          push rax
          ; 67 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 67 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 68 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 68 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 68 push integer
          mov rax, 16
          push rax
          ; 68 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 68 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 64 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 64 return
          ret
          ; 70 function definition
copy_vec: 
          push rbp
          mov rbp, rsp
          ; 72 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 72 push integer
          mov rax, 0
          push rax
          ; 72 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 72 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 72 push string
          mov rax, s_110
          push rax
          ; 72 push integer
          mov rax, 72
          push rax
          ; 72 push string
          mov rax, s_116
          push rax
          ; 72 push boolean
          mov rax, 1
          push rax
          ; 72 call
          call copy_ratio
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 73 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 73 push integer
          mov rax, 8
          push rax
          ; 73 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 73 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 73 push string
          mov rax, s_110
          push rax
          ; 73 push integer
          mov rax, 73
          push rax
          ; 73 push string
          mov rax, s_116
          push rax
          ; 73 push boolean
          mov rax, 1
          push rax
          ; 73 call
          call copy_ratio
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 74 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 74 push integer
          mov rax, 16
          push rax
          ; 74 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 74 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 74 push string
          mov rax, s_110
          push rax
          ; 74 push integer
          mov rax, 74
          push rax
          ; 74 push string
          mov rax, s_116
          push rax
          ; 74 push boolean
          mov rax, 1
          push rax
          ; 74 call
          call copy_ratio
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 75 push string
          mov rax, s_110
          push rax
          ; 75 push integer
          mov rax, 75
          push rax
          ; 75 push string
          mov rax, s_116
          push rax
          ; 75 push boolean
          mov rax, 1
          push rax
          ; 75 call
          call create_vec
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 71 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 71 return
          ret
          ; 77 function definition
free_vec: 
          push rbp
          mov rbp, rsp
          ; 79 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 80 duplicate
          pop rax
          push rax
          push rax
          ; 80 push integer
          mov rax, 0
          push rax
          ; 80 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 80 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 80 push string
          mov rax, s_110
          push rax
          ; 80 push integer
          mov rax, 80
          push rax
          ; 80 push string
          mov rax, s_117
          push rax
          ; 80 push boolean
          mov rax, 1
          push rax
          ; 80 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 81 duplicate
          pop rax
          push rax
          push rax
          ; 81 push integer
          mov rax, 8
          push rax
          ; 81 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 81 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 81 push string
          mov rax, s_110
          push rax
          ; 81 push integer
          mov rax, 81
          push rax
          ; 81 push string
          mov rax, s_117
          push rax
          ; 81 push boolean
          mov rax, 1
          push rax
          ; 81 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 82 duplicate
          pop rax
          push rax
          push rax
          ; 82 push integer
          mov rax, 16
          push rax
          ; 82 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 82 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 82 push string
          mov rax, s_110
          push rax
          ; 82 push integer
          mov rax, 82
          push rax
          ; 82 push string
          mov rax, s_117
          push rax
          ; 82 push boolean
          mov rax, 1
          push rax
          ; 82 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 83 push string
          mov rax, s_110
          push rax
          ; 83 push integer
          mov rax, 83
          push rax
          ; 83 push string
          mov rax, s_117
          push rax
          ; 83 push boolean
          mov rax, 1
          push rax
          ; 83 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 78 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 78 return
          ret
          ; 85 function definition
vec_add:  
          push rbp
          mov rbp, rsp
          ; 88 push string
          mov rax, s_118
          push rax
          ; 88 push string
          mov rax, s_110
          push rax
          ; 88 push integer
          mov rax, 88
          push rax
          ; 88 push string
          mov rax, s_119
          push rax
          ; 88 push boolean
          mov rax, 1
          push rax
          ; 88 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 89 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 89 push integer
          mov rax, 0
          push rax
          ; 89 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 89 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 90 push string
          mov rax, s_120
          push rax
          ; 90 push string
          mov rax, s_110
          push rax
          ; 90 push integer
          mov rax, 90
          push rax
          ; 90 push string
          mov rax, s_119
          push rax
          ; 90 push boolean
          mov rax, 1
          push rax
          ; 90 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 91 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 91 push integer
          mov rax, 0
          push rax
          ; 91 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 91 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 92 push string
          mov rax, s_121
          push rax
          ; 92 push string
          mov rax, s_110
          push rax
          ; 92 push integer
          mov rax, 92
          push rax
          ; 92 push string
          mov rax, s_119
          push rax
          ; 92 push boolean
          mov rax, 1
          push rax
          ; 92 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 93 push string
          mov rax, s_110
          push rax
          ; 93 push integer
          mov rax, 93
          push rax
          ; 93 push string
          mov rax, s_119
          push rax
          ; 93 push boolean
          mov rax, 1
          push rax
          ; 93 call
          call ratio_add
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 94 push string
          mov rax, s_122
          push rax
          ; 94 push string
          mov rax, s_110
          push rax
          ; 94 push integer
          mov rax, 94
          push rax
          ; 94 push string
          mov rax, s_119
          push rax
          ; 94 push boolean
          mov rax, 1
          push rax
          ; 94 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 95 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 95 push integer
          mov rax, 8
          push rax
          ; 95 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 95 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 95 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 95 push integer
          mov rax, 8
          push rax
          ; 95 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 95 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 95 push string
          mov rax, s_110
          push rax
          ; 95 push integer
          mov rax, 95
          push rax
          ; 95 push string
          mov rax, s_119
          push rax
          ; 95 push boolean
          mov rax, 1
          push rax
          ; 95 call
          call ratio_add
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 96 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 96 push integer
          mov rax, 16
          push rax
          ; 96 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 96 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 96 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 96 push integer
          mov rax, 16
          push rax
          ; 96 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 96 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 96 push string
          mov rax, s_110
          push rax
          ; 96 push integer
          mov rax, 96
          push rax
          ; 96 push string
          mov rax, s_119
          push rax
          ; 96 push boolean
          mov rax, 1
          push rax
          ; 96 call
          call ratio_add
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 97 push string
          mov rax, s_110
          push rax
          ; 97 push integer
          mov rax, 97
          push rax
          ; 97 push string
          mov rax, s_119
          push rax
          ; 97 push boolean
          mov rax, 1
          push rax
          ; 97 call
          call create_vec
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 86 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 86 return
          ret
          ; 99 function definition
vec_sub:  
          push rbp
          mov rbp, rsp
          ; 102 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 102 push integer
          mov rax, 0
          push rax
          ; 102 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 102 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 102 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 102 push integer
          mov rax, 0
          push rax
          ; 102 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 102 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 102 push string
          mov rax, s_110
          push rax
          ; 102 push integer
          mov rax, 102
          push rax
          ; 102 push string
          mov rax, s_123
          push rax
          ; 102 push boolean
          mov rax, 1
          push rax
          ; 102 call
          call ratio_sub
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 103 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 103 push integer
          mov rax, 8
          push rax
          ; 103 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 103 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 103 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 103 push integer
          mov rax, 8
          push rax
          ; 103 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 103 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 103 push string
          mov rax, s_110
          push rax
          ; 103 push integer
          mov rax, 103
          push rax
          ; 103 push string
          mov rax, s_123
          push rax
          ; 103 push boolean
          mov rax, 1
          push rax
          ; 103 call
          call ratio_sub
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 104 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 104 push integer
          mov rax, 16
          push rax
          ; 104 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 104 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 104 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 104 push integer
          mov rax, 16
          push rax
          ; 104 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 104 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 104 push string
          mov rax, s_110
          push rax
          ; 104 push integer
          mov rax, 104
          push rax
          ; 104 push string
          mov rax, s_123
          push rax
          ; 104 push boolean
          mov rax, 1
          push rax
          ; 104 call
          call ratio_sub
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 105 push string
          mov rax, s_110
          push rax
          ; 105 push integer
          mov rax, 105
          push rax
          ; 105 push string
          mov rax, s_123
          push rax
          ; 105 push boolean
          mov rax, 1
          push rax
          ; 105 call
          call create_vec
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 100 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 100 return
          ret
          ; 107 function definition
vec_scale: 
          push rbp
          mov rbp, rsp
          ; 110 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 110 push integer
          mov rax, 0
          push rax
          ; 110 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 110 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 110 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 110 push string
          mov rax, s_110
          push rax
          ; 110 push integer
          mov rax, 110
          push rax
          ; 110 push string
          mov rax, s_124
          push rax
          ; 110 push boolean
          mov rax, 1
          push rax
          ; 110 call
          call ratio_mul
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 111 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 111 push integer
          mov rax, 8
          push rax
          ; 111 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 111 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 111 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 111 push string
          mov rax, s_110
          push rax
          ; 111 push integer
          mov rax, 111
          push rax
          ; 111 push string
          mov rax, s_124
          push rax
          ; 111 push boolean
          mov rax, 1
          push rax
          ; 111 call
          call ratio_mul
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 112 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 112 push integer
          mov rax, 16
          push rax
          ; 112 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 112 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 112 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 112 push string
          mov rax, s_110
          push rax
          ; 112 push integer
          mov rax, 112
          push rax
          ; 112 push string
          mov rax, s_124
          push rax
          ; 112 push boolean
          mov rax, 1
          push rax
          ; 112 call
          call ratio_mul
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 113 push string
          mov rax, s_110
          push rax
          ; 113 push integer
          mov rax, 113
          push rax
          ; 113 push string
          mov rax, s_124
          push rax
          ; 113 push boolean
          mov rax, 1
          push rax
          ; 113 call
          call create_vec
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 108 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 108 return
          ret
          ; 115 function definition
vec_shrink: 
          push rbp
          mov rbp, rsp
          ; 118 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 118 push integer
          mov rax, 0
          push rax
          ; 118 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 118 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 118 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 118 push string
          mov rax, s_110
          push rax
          ; 118 push integer
          mov rax, 118
          push rax
          ; 118 push string
          mov rax, s_125
          push rax
          ; 118 push boolean
          mov rax, 1
          push rax
          ; 118 call
          call ratio_div
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 119 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 119 push integer
          mov rax, 8
          push rax
          ; 119 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 119 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 119 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 119 push string
          mov rax, s_110
          push rax
          ; 119 push integer
          mov rax, 119
          push rax
          ; 119 push string
          mov rax, s_125
          push rax
          ; 119 push boolean
          mov rax, 1
          push rax
          ; 119 call
          call ratio_div
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 120 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 120 push integer
          mov rax, 16
          push rax
          ; 120 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 120 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 120 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 120 push string
          mov rax, s_110
          push rax
          ; 120 push integer
          mov rax, 120
          push rax
          ; 120 push string
          mov rax, s_125
          push rax
          ; 120 push boolean
          mov rax, 1
          push rax
          ; 120 call
          call ratio_div
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 121 push string
          mov rax, s_110
          push rax
          ; 121 push integer
          mov rax, 121
          push rax
          ; 121 push string
          mov rax, s_125
          push rax
          ; 121 push boolean
          mov rax, 1
          push rax
          ; 121 call
          call create_vec
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 116 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 116 return
          ret
          ; 123 function definition
vec_len_sqr: 
          push rbp
          mov rbp, rsp
          ; 127 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 127 push integer
          mov rax, 0
          push rax
          ; 127 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 127 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 127 duplicate
          pop rax
          push rax
          push rax
          ; 127 push string
          mov rax, s_110
          push rax
          ; 127 push integer
          mov rax, 127
          push rax
          ; 127 push string
          mov rax, s_126
          push rax
          ; 127 push boolean
          mov rax, 1
          push rax
          ; 127 call
          call ratio_mul
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 128 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 128 push integer
          mov rax, 8
          push rax
          ; 128 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 128 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 128 duplicate
          pop rax
          push rax
          push rax
          ; 128 push string
          mov rax, s_110
          push rax
          ; 128 push integer
          mov rax, 128
          push rax
          ; 128 push string
          mov rax, s_126
          push rax
          ; 128 push boolean
          mov rax, 1
          push rax
          ; 128 call
          call ratio_mul
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 129 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 129 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 129 push string
          mov rax, s_110
          push rax
          ; 129 push integer
          mov rax, 129
          push rax
          ; 129 push string
          mov rax, s_126
          push rax
          ; 129 push boolean
          mov rax, 1
          push rax
          ; 129 call
          call ratio_add
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 130 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 130 push string
          mov rax, s_110
          push rax
          ; 130 push integer
          mov rax, 130
          push rax
          ; 130 push string
          mov rax, s_126
          push rax
          ; 130 push boolean
          mov rax, 1
          push rax
          ; 130 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 130 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 130 push string
          mov rax, s_110
          push rax
          ; 130 push integer
          mov rax, 130
          push rax
          ; 130 push string
          mov rax, s_126
          push rax
          ; 130 push boolean
          mov rax, 1
          push rax
          ; 130 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 131 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 131 push integer
          mov rax, 16
          push rax
          ; 131 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 131 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 131 duplicate
          pop rax
          push rax
          push rax
          ; 131 push string
          mov rax, s_110
          push rax
          ; 131 push integer
          mov rax, 131
          push rax
          ; 131 push string
          mov rax, s_126
          push rax
          ; 131 push boolean
          mov rax, 1
          push rax
          ; 131 call
          call ratio_mul
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 132 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 132 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 132 push string
          mov rax, s_110
          push rax
          ; 132 push integer
          mov rax, 132
          push rax
          ; 132 push string
          mov rax, s_126
          push rax
          ; 132 push boolean
          mov rax, 1
          push rax
          ; 132 call
          call ratio_add
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 133 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 133 push string
          mov rax, s_110
          push rax
          ; 133 push integer
          mov rax, 133
          push rax
          ; 133 push string
          mov rax, s_126
          push rax
          ; 133 push boolean
          mov rax, 1
          push rax
          ; 133 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 133 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 133 push string
          mov rax, s_110
          push rax
          ; 133 push integer
          mov rax, 133
          push rax
          ; 133 push string
          mov rax, s_126
          push rax
          ; 133 push boolean
          mov rax, 1
          push rax
          ; 133 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 124 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 124 return
          ret
          ; 135 function definition
vec_len:  
          push rbp
          mov rbp, rsp
          ; 138 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 138 push string
          mov rax, s_110
          push rax
          ; 138 push integer
          mov rax, 138
          push rax
          ; 138 push string
          mov rax, s_127
          push rax
          ; 138 push boolean
          mov rax, 1
          push rax
          ; 138 call
          call vec_len_sqr
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 138 push string
          mov rax, s_110
          push rax
          ; 138 push integer
          mov rax, 138
          push rax
          ; 138 push string
          mov rax, s_127
          push rax
          ; 138 push boolean
          mov rax, 1
          push rax
          ; 138 call
          call ratio_sqrt
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 136 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 136 return
          ret
          ; 147 function definition
create_ray: 
          push rbp
          mov rbp, rsp
          ; 149 push integer
          mov rax, 16
          push rax
          ; 149 push string
          mov rax, s_110
          push rax
          ; 149 push integer
          mov rax, 149
          push rax
          ; 149 push string
          mov rax, s_128
          push rax
          ; 149 push boolean
          mov rax, 1
          push rax
          ; 149 call
          call malloc
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 150 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 150 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 150 push integer
          mov rax, 0
          push rax
          ; 150 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 150 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 151 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 151 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 151 push integer
          mov rax, 8
          push rax
          ; 151 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 151 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 148 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 148 return
          ret
          ; 153 function definition
free_ray: 
          push rbp
          mov rbp, rsp
          ; 155 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 156 duplicate
          pop rax
          push rax
          push rax
          ; 156 push integer
          mov rax, 0
          push rax
          ; 156 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 156 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 156 push string
          mov rax, s_110
          push rax
          ; 156 push integer
          mov rax, 156
          push rax
          ; 156 push string
          mov rax, s_129
          push rax
          ; 156 push boolean
          mov rax, 1
          push rax
          ; 156 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 157 duplicate
          pop rax
          push rax
          push rax
          ; 157 push integer
          mov rax, 8
          push rax
          ; 157 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 157 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 157 push string
          mov rax, s_110
          push rax
          ; 157 push integer
          mov rax, 157
          push rax
          ; 157 push string
          mov rax, s_129
          push rax
          ; 157 push boolean
          mov rax, 1
          push rax
          ; 157 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 158 push string
          mov rax, s_110
          push rax
          ; 158 push integer
          mov rax, 158
          push rax
          ; 158 push string
          mov rax, s_129
          push rax
          ; 158 push boolean
          mov rax, 1
          push rax
          ; 158 call
          call free
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 154 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 154 return
          ret
          ; 160 function definition
ray_at:   
          push rbp
          mov rbp, rsp
          ; 162 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 162 push integer
          mov rax, 8
          push rax
          ; 162 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 162 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 162 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 162 push string
          mov rax, s_110
          push rax
          ; 162 push integer
          mov rax, 162
          push rax
          ; 162 push string
          mov rax, s_130
          push rax
          ; 162 push boolean
          mov rax, 1
          push rax
          ; 162 call
          call vec_scale
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 163 duplicate
          pop rax
          push rax
          push rax
          ; 163 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 163 push integer
          mov rax, 0
          push rax
          ; 163 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 163 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 163 push string
          mov rax, s_110
          push rax
          ; 163 push integer
          mov rax, 163
          push rax
          ; 163 push string
          mov rax, s_130
          push rax
          ; 163 push boolean
          mov rax, 1
          push rax
          ; 163 call
          call vec_add
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 164 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 164 push string
          mov rax, s_110
          push rax
          ; 164 push integer
          mov rax, 164
          push rax
          ; 164 push string
          mov rax, s_130
          push rax
          ; 164 push boolean
          mov rax, 1
          push rax
          ; 164 call
          call free_vec
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 161 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 161 return
          ret
          ; 169 function definition
output_color: 
          push rbp
          mov rbp, rsp
          ; 173 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 174 duplicate
          pop rax
          push rax
          push rax
          ; 174 push integer
          mov rax, 0
          push rax
          ; 174 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 174 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 174 push integer
          mov rax, 256
          push rax
          ; 174 push string
          mov rax, s_110
          push rax
          ; 174 push integer
          mov rax, 174
          push rax
          ; 174 push string
          mov rax, s_131
          push rax
          ; 174 push boolean
          mov rax, 1
          push rax
          ; 174 call
          call itor
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 174 push string
          mov rax, s_110
          push rax
          ; 174 push integer
          mov rax, 174
          push rax
          ; 174 push string
          mov rax, s_131
          push rax
          ; 174 push boolean
          mov rax, 1
          push rax
          ; 174 call
          call ratio_mul
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 174 push string
          mov rax, s_110
          push rax
          ; 174 push integer
          mov rax, 174
          push rax
          ; 174 push string
          mov rax, s_131
          push rax
          ; 174 push boolean
          mov rax, 1
          push rax
          ; 174 call
          call rtoi
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 174 push string
          mov rax, s_110
          push rax
          ; 174 push integer
          mov rax, 174
          push rax
          ; 174 push string
          mov rax, s_131
          push rax
          ; 174 push boolean
          mov rax, 1
          push rax
          ; 174 call
          call itos
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 174 push string
          mov rax, s_110
          push rax
          ; 174 push integer
          mov rax, 174
          push rax
          ; 174 push string
          mov rax, s_131
          push rax
          ; 174 push boolean
          mov rax, 1
          push rax
          ; 174 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 174 push string
          mov rax, s_132
          push rax
          ; 174 push string
          mov rax, s_110
          push rax
          ; 174 push integer
          mov rax, 174
          push rax
          ; 174 push string
          mov rax, s_131
          push rax
          ; 174 push boolean
          mov rax, 1
          push rax
          ; 174 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 175 duplicate
          pop rax
          push rax
          push rax
          ; 175 push integer
          mov rax, 8
          push rax
          ; 175 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 175 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 175 push integer
          mov rax, 256
          push rax
          ; 175 push string
          mov rax, s_110
          push rax
          ; 175 push integer
          mov rax, 175
          push rax
          ; 175 push string
          mov rax, s_131
          push rax
          ; 175 push boolean
          mov rax, 1
          push rax
          ; 175 call
          call itor
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 175 push string
          mov rax, s_110
          push rax
          ; 175 push integer
          mov rax, 175
          push rax
          ; 175 push string
          mov rax, s_131
          push rax
          ; 175 push boolean
          mov rax, 1
          push rax
          ; 175 call
          call ratio_mul
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 175 push string
          mov rax, s_110
          push rax
          ; 175 push integer
          mov rax, 175
          push rax
          ; 175 push string
          mov rax, s_131
          push rax
          ; 175 push boolean
          mov rax, 1
          push rax
          ; 175 call
          call rtoi
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 175 push string
          mov rax, s_110
          push rax
          ; 175 push integer
          mov rax, 175
          push rax
          ; 175 push string
          mov rax, s_131
          push rax
          ; 175 push boolean
          mov rax, 1
          push rax
          ; 175 call
          call itos
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 175 push string
          mov rax, s_110
          push rax
          ; 175 push integer
          mov rax, 175
          push rax
          ; 175 push string
          mov rax, s_131
          push rax
          ; 175 push boolean
          mov rax, 1
          push rax
          ; 175 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 175 push string
          mov rax, s_132
          push rax
          ; 175 push string
          mov rax, s_110
          push rax
          ; 175 push integer
          mov rax, 175
          push rax
          ; 175 push string
          mov rax, s_131
          push rax
          ; 175 push boolean
          mov rax, 1
          push rax
          ; 175 call
          call puts
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
          ; 176 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 176 push integer
          mov rax, 256
          push rax
          ; 176 push string
          mov rax, s_110
          push rax
          ; 176 push integer
          mov rax, 176
          push rax
          ; 176 push string
          mov rax, s_131
          push rax
          ; 176 push boolean
          mov rax, 1
          push rax
          ; 176 call
          call itor
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 176 push string
          mov rax, s_110
          push rax
          ; 176 push integer
          mov rax, 176
          push rax
          ; 176 push string
          mov rax, s_131
          push rax
          ; 176 push boolean
          mov rax, 1
          push rax
          ; 176 call
          call ratio_mul
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 176 push string
          mov rax, s_110
          push rax
          ; 176 push integer
          mov rax, 176
          push rax
          ; 176 push string
          mov rax, s_131
          push rax
          ; 176 push boolean
          mov rax, 1
          push rax
          ; 176 call
          call rtoi
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 176 push string
          mov rax, s_110
          push rax
          ; 176 push integer
          mov rax, 176
          push rax
          ; 176 push string
          mov rax, s_131
          push rax
          ; 176 push boolean
          mov rax, 1
          push rax
          ; 176 call
          call itos
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 176 push string
          mov rax, s_110
          push rax
          ; 176 push integer
          mov rax, 176
          push rax
          ; 176 push string
          mov rax, s_131
          push rax
          ; 176 push boolean
          mov rax, 1
          push rax
          ; 176 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 176 push string
          mov rax, s_132
          push rax
          ; 176 push string
          mov rax, s_110
          push rax
          ; 176 push integer
          mov rax, 176
          push rax
          ; 176 push string
          mov rax, s_131
          push rax
          ; 176 push boolean
          mov rax, 1
          push rax
          ; 176 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 177 push string
          mov rax, s_110
          push rax
          ; 177 push integer
          mov rax, 177
          push rax
          ; 177 push string
          mov rax, s_131
          push rax
          ; 177 push boolean
          mov rax, 1
          push rax
          ; 177 call
          call free_color
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 170 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 170 return
          ret
          ; 182 create buffer
          ; 183 create buffer
          ; 184 create buffer
          ; 185 create buffer
          ; 186 create buffer
          ; 187 create buffer
          ; 188 create buffer
          ; 189 create buffer
          ; 191 function definition
set_camera_constants: 
          push rbp
          mov rbp, rsp
          ; 193 push integer
          mov rax, 320
          push rax
          ; 193 push integer
          mov rax, 180
          push rax
          ; 193 push string
          mov rax, s_110
          push rax
          ; 193 push integer
          mov rax, 193
          push rax
          ; 193 push string
          mov rax, s_133
          push rax
          ; 193 push boolean
          mov rax, 1
          push rax
          ; 193 call
          call create_ratio
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 193 get pointer to buffer
          mov rax, ASPECT_RATIO
          push rax
          ; 193 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 194 push integer
          mov rax, 2
          push rax
          ; 194 push string
          mov rax, s_110
          push rax
          ; 194 push integer
          mov rax, 194
          push rax
          ; 194 push string
          mov rax, s_133
          push rax
          ; 194 push boolean
          mov rax, 1
          push rax
          ; 194 call
          call itor
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 194 get pointer to buffer
          mov rax, VIEWPORT_HEIGHT
          push rax
          ; 194 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 195 get pointer to buffer
          mov rax, ASPECT_RATIO
          push rax
          ; 195 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 196 get pointer to buffer
          mov rax, VIEWPORT_HEIGHT
          push rax
          ; 196 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 196 push string
          mov rax, s_110
          push rax
          ; 196 push integer
          mov rax, 196
          push rax
          ; 196 push string
          mov rax, s_133
          push rax
          ; 196 push boolean
          mov rax, 1
          push rax
          ; 196 call
          call ratio_mul
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 196 get pointer to buffer
          mov rax, VIEWPORT_WIDTH
          push rax
          ; 196 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 197 push integer
          mov rax, 1
          push rax
          ; 197 push string
          mov rax, s_110
          push rax
          ; 197 push integer
          mov rax, 197
          push rax
          ; 197 push string
          mov rax, s_133
          push rax
          ; 197 push boolean
          mov rax, 1
          push rax
          ; 197 call
          call itor
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 197 get pointer to buffer
          mov rax, FOCAL_LENGTH
          push rax
          ; 197 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 199 push integer
          mov rax, 0
          push rax
          ; 199 push string
          mov rax, s_110
          push rax
          ; 199 push integer
          mov rax, 199
          push rax
          ; 199 push string
          mov rax, s_133
          push rax
          ; 199 push boolean
          mov rax, 1
          push rax
          ; 199 call
          call itor
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 199 push integer
          mov rax, 0
          push rax
          ; 199 push string
          mov rax, s_110
          push rax
          ; 199 push integer
          mov rax, 199
          push rax
          ; 199 push string
          mov rax, s_133
          push rax
          ; 199 push boolean
          mov rax, 1
          push rax
          ; 199 call
          call itor
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 199 push integer
          mov rax, 0
          push rax
          ; 199 push string
          mov rax, s_110
          push rax
          ; 199 push integer
          mov rax, 199
          push rax
          ; 199 push string
          mov rax, s_133
          push rax
          ; 199 push boolean
          mov rax, 1
          push rax
          ; 199 call
          call itor
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 199 push string
          mov rax, s_110
          push rax
          ; 199 push integer
          mov rax, 199
          push rax
          ; 199 push string
          mov rax, s_133
          push rax
          ; 199 push boolean
          mov rax, 1
          push rax
          ; 199 call
          call create_vec
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 199 get pointer to buffer
          mov rax, ORIGIN
          push rax
          ; 199 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 200 get pointer to buffer
          mov rax, VIEWPORT_WIDTH
          push rax
          ; 200 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 200 push integer
          mov rax, 0
          push rax
          ; 200 push string
          mov rax, s_110
          push rax
          ; 200 push integer
          mov rax, 200
          push rax
          ; 200 push string
          mov rax, s_133
          push rax
          ; 200 push boolean
          mov rax, 1
          push rax
          ; 200 call
          call itor
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 200 push integer
          mov rax, 0
          push rax
          ; 200 push string
          mov rax, s_110
          push rax
          ; 200 push integer
          mov rax, 200
          push rax
          ; 200 push string
          mov rax, s_133
          push rax
          ; 200 push boolean
          mov rax, 1
          push rax
          ; 200 call
          call itor
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 200 push string
          mov rax, s_110
          push rax
          ; 200 push integer
          mov rax, 200
          push rax
          ; 200 push string
          mov rax, s_133
          push rax
          ; 200 push boolean
          mov rax, 1
          push rax
          ; 200 call
          call create_vec
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 200 get pointer to buffer
          mov rax, HORIZONTAL
          push rax
          ; 200 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 201 push integer
          mov rax, 0
          push rax
          ; 201 push string
          mov rax, s_110
          push rax
          ; 201 push integer
          mov rax, 201
          push rax
          ; 201 push string
          mov rax, s_133
          push rax
          ; 201 push boolean
          mov rax, 1
          push rax
          ; 201 call
          call itor
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 201 get pointer to buffer
          mov rax, VIEWPORT_HEIGHT
          push rax
          ; 201 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 201 push integer
          mov rax, 0
          push rax
          ; 201 push string
          mov rax, s_110
          push rax
          ; 201 push integer
          mov rax, 201
          push rax
          ; 201 push string
          mov rax, s_133
          push rax
          ; 201 push boolean
          mov rax, 1
          push rax
          ; 201 call
          call itor
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 201 push string
          mov rax, s_110
          push rax
          ; 201 push integer
          mov rax, 201
          push rax
          ; 201 push string
          mov rax, s_133
          push rax
          ; 201 push boolean
          mov rax, 1
          push rax
          ; 201 call
          call create_vec
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 201 get pointer to buffer
          mov rax, VERTICAL
          push rax
          ; 201 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 203 get pointer to buffer
          mov rax, ORIGIN
          push rax
          ; 203 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 204 get pointer to buffer
          mov rax, HORIZONTAL
          push rax
          ; 204 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 204 push integer
          mov rax, 2
          push rax
          ; 204 push string
          mov rax, s_110
          push rax
          ; 204 push integer
          mov rax, 204
          push rax
          ; 204 push string
          mov rax, s_133
          push rax
          ; 204 push boolean
          mov rax, 1
          push rax
          ; 204 call
          call itor
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 204 push string
          mov rax, s_110
          push rax
          ; 204 push integer
          mov rax, 204
          push rax
          ; 204 push string
          mov rax, s_133
          push rax
          ; 204 push boolean
          mov rax, 1
          push rax
          ; 204 call
          call vec_shrink
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 204 push string
          mov rax, s_110
          push rax
          ; 204 push integer
          mov rax, 204
          push rax
          ; 204 push string
          mov rax, s_133
          push rax
          ; 204 push boolean
          mov rax, 1
          push rax
          ; 204 call
          call vec_sub
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 205 get pointer to buffer
          mov rax, VERTICAL
          push rax
          ; 205 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 205 push integer
          mov rax, 2
          push rax
          ; 205 push string
          mov rax, s_110
          push rax
          ; 205 push integer
          mov rax, 205
          push rax
          ; 205 push string
          mov rax, s_133
          push rax
          ; 205 push boolean
          mov rax, 1
          push rax
          ; 205 call
          call itor
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 205 push string
          mov rax, s_110
          push rax
          ; 205 push integer
          mov rax, 205
          push rax
          ; 205 push string
          mov rax, s_133
          push rax
          ; 205 push boolean
          mov rax, 1
          push rax
          ; 205 call
          call vec_shrink
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 205 push string
          mov rax, s_110
          push rax
          ; 205 push integer
          mov rax, 205
          push rax
          ; 205 push string
          mov rax, s_133
          push rax
          ; 205 push boolean
          mov rax, 1
          push rax
          ; 205 call
          call vec_sub
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 206 push integer
          mov rax, 0
          push rax
          ; 206 push string
          mov rax, s_110
          push rax
          ; 206 push integer
          mov rax, 206
          push rax
          ; 206 push string
          mov rax, s_133
          push rax
          ; 206 push boolean
          mov rax, 1
          push rax
          ; 206 call
          call itor
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 206 push integer
          mov rax, 0
          push rax
          ; 206 push string
          mov rax, s_110
          push rax
          ; 206 push integer
          mov rax, 206
          push rax
          ; 206 push string
          mov rax, s_133
          push rax
          ; 206 push boolean
          mov rax, 1
          push rax
          ; 206 call
          call itor
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 206 get pointer to buffer
          mov rax, FOCAL_LENGTH
          push rax
          ; 206 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 206 push string
          mov rax, s_110
          push rax
          ; 206 push integer
          mov rax, 206
          push rax
          ; 206 push string
          mov rax, s_133
          push rax
          ; 206 push boolean
          mov rax, 1
          push rax
          ; 206 call
          call create_vec
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 206 push string
          mov rax, s_110
          push rax
          ; 206 push integer
          mov rax, 206
          push rax
          ; 206 push string
          mov rax, s_133
          push rax
          ; 206 push boolean
          mov rax, 1
          push rax
          ; 206 call
          call vec_sub
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 206 get pointer to buffer
          mov rax, LOWER_LEFT_CORNER
          push rax
          ; 206 set pointer value
          pop rax
          pop rbx
          mov [rax], rbx
          ; 208 get pointer to buffer
          mov rax, LOWER_LEFT_CORNER
          push rax
          ; 208 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 208 push integer
          mov rax, 0
          push rax
          ; 208 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 208 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 208 push integer
          mov rax, 0
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
          mov rax, 16
          push rax
          ; 208 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 208 push integer
          mov rax, 0
          push rax
          ; 208 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 208 push string
          mov rax, s_134
          push rax
          ; 208 push string
          mov rax, s_110
          push rax
          ; 208 push integer
          mov rax, 208
          push rax
          ; 208 push string
          mov rax, s_133
          push rax
          ; 208 push boolean
          mov rax, 1
          push rax
          ; 208 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 209 get pointer to buffer
          mov rax, LOWER_LEFT_CORNER
          push rax
          ; 209 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 209 push integer
          mov rax, 0
          push rax
          ; 209 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 209 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 209 push integer
          mov rax, 8
          push rax
          ; 209 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 209 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 209 push integer
          mov rax, 9
          push rax
          ; 209 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 209 push string
          mov rax, s_135
          push rax
          ; 209 push string
          mov rax, s_110
          push rax
          ; 209 push integer
          mov rax, 209
          push rax
          ; 209 push string
          mov rax, s_133
          push rax
          ; 209 push boolean
          mov rax, 1
          push rax
          ; 209 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 210 get pointer to buffer
          mov rax, LOWER_LEFT_CORNER
          push rax
          ; 210 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 210 push integer
          mov rax, 8
          push rax
          ; 210 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 210 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 210 push integer
          mov rax, 0
          push rax
          ; 210 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 210 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 210 push integer
          mov rax, 1
          push rax
          ; 210 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 210 push integer
          mov rax, 0
          push rax
          ; 210 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 210 push string
          mov rax, s_136
          push rax
          ; 210 push string
          mov rax, s_110
          push rax
          ; 210 push integer
          mov rax, 210
          push rax
          ; 210 push string
          mov rax, s_133
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
          ; 211 get pointer to buffer
          mov rax, LOWER_LEFT_CORNER
          push rax
          ; 211 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 211 push integer
          mov rax, 8
          push rax
          ; 211 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 211 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 211 push integer
          mov rax, 8
          push rax
          ; 211 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 211 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 211 push integer
          mov rax, 1
          push rax
          ; 211 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 211 push string
          mov rax, s_137
          push rax
          ; 211 push string
          mov rax, s_110
          push rax
          ; 211 push integer
          mov rax, 211
          push rax
          ; 211 push string
          mov rax, s_133
          push rax
          ; 211 push boolean
          mov rax, 1
          push rax
          ; 211 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 212 get pointer to buffer
          mov rax, LOWER_LEFT_CORNER
          push rax
          ; 212 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 212 push integer
          mov rax, 16
          push rax
          ; 212 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 212 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 212 push integer
          mov rax, 0
          push rax
          ; 212 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 212 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 212 push integer
          mov rax, 1
          push rax
          ; 212 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 212 push integer
          mov rax, 0
          push rax
          ; 212 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 212 push string
          mov rax, s_138
          push rax
          ; 212 push string
          mov rax, s_110
          push rax
          ; 212 push integer
          mov rax, 212
          push rax
          ; 212 push string
          mov rax, s_133
          push rax
          ; 212 push boolean
          mov rax, 1
          push rax
          ; 212 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 213 get pointer to buffer
          mov rax, LOWER_LEFT_CORNER
          push rax
          ; 213 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 213 push integer
          mov rax, 16
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
          ; 213 push integer
          mov rax, 8
          push rax
          ; 213 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 213 dereference integer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 213 push integer
          mov rax, 1
          push rax
          ; 213 is equal?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmove rax, rbx
          push rax
          ; 213 push string
          mov rax, s_139
          push rax
          ; 213 push string
          mov rax, s_110
          push rax
          ; 213 push integer
          mov rax, 213
          push rax
          ; 213 push string
          mov rax, s_133
          push rax
          ; 213 push boolean
          mov rax, 1
          push rax
          ; 213 call
          call assert
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 192 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 192 return
          ret
          ; 216 function definition
create_camera_ray: 
          push rbp
          mov rbp, rsp
          ; 218 get pointer to buffer
          mov rax, ORIGIN
          push rax
          ; 218 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 219 get pointer to buffer
          mov rax, LOWER_LEFT_CORNER
          push rax
          ; 219 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 220 get pointer to buffer
          mov rax, HORIZONTAL
          push rax
          ; 220 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 220 get argument
          mov rax, rbp
          add rax, 56
          mov rbx, [rax]
          push rbx
          ; 220 push string
          mov rax, s_110
          push rax
          ; 220 push integer
          mov rax, 220
          push rax
          ; 220 push string
          mov rax, s_140
          push rax
          ; 220 push boolean
          mov rax, 1
          push rax
          ; 220 call
          call vec_scale
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 220 push string
          mov rax, s_110
          push rax
          ; 220 push integer
          mov rax, 220
          push rax
          ; 220 push string
          mov rax, s_140
          push rax
          ; 220 push boolean
          mov rax, 1
          push rax
          ; 220 call
          call vec_add
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 221 get pointer to buffer
          mov rax, VERTICAL
          push rax
          ; 221 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 221 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 221 push string
          mov rax, s_110
          push rax
          ; 221 push integer
          mov rax, 221
          push rax
          ; 221 push string
          mov rax, s_140
          push rax
          ; 221 push boolean
          mov rax, 1
          push rax
          ; 221 call
          call vec_scale
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 222 push string
          mov rax, s_141
          push rax
          ; 222 push string
          mov rax, s_110
          push rax
          ; 222 push integer
          mov rax, 222
          push rax
          ; 222 push string
          mov rax, s_140
          push rax
          ; 222 push boolean
          mov rax, 1
          push rax
          ; 222 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 223 push string
          mov rax, s_110
          push rax
          ; 223 push integer
          mov rax, 223
          push rax
          ; 223 push string
          mov rax, s_140
          push rax
          ; 223 push boolean
          mov rax, 1
          push rax
          ; 223 call
          call vec_add
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 224 push string
          mov rax, s_142
          push rax
          ; 224 push string
          mov rax, s_110
          push rax
          ; 224 push integer
          mov rax, 224
          push rax
          ; 224 push string
          mov rax, s_140
          push rax
          ; 224 push boolean
          mov rax, 1
          push rax
          ; 224 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 225 get pointer to buffer
          mov rax, ORIGIN
          push rax
          ; 225 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 225 push string
          mov rax, s_110
          push rax
          ; 225 push integer
          mov rax, 225
          push rax
          ; 225 push string
          mov rax, s_140
          push rax
          ; 225 push boolean
          mov rax, 1
          push rax
          ; 225 call
          call vec_sub
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 226 push string
          mov rax, s_110
          push rax
          ; 226 push integer
          mov rax, 226
          push rax
          ; 226 push string
          mov rax, s_140
          push rax
          ; 226 push boolean
          mov rax, 1
          push rax
          ; 226 call
          call create_ray
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 217 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 217 return
          ret
          ; 229 function definition
render_pixel: 
          push rbp
          mov rbp, rsp
          ; 231 get argument
          mov rax, rbp
          add rax, 48
          mov rbx, [rax]
          push rbx
          ; 231 push integer
          mov rax, 8
          push rax
          ; 231 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 231 dereference pointer
          pop rax
          mov rbx, [rax]
          push rbx
          ; 232 duplicate
          pop rax
          push rax
          push rax
          ; 232 push string
          mov rax, s_110
          push rax
          ; 232 push integer
          mov rax, 232
          push rax
          ; 232 push string
          mov rax, s_143
          push rax
          ; 232 push boolean
          mov rax, 1
          push rax
          ; 232 call
          call vec_len
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 232 push string
          mov rax, s_110
          push rax
          ; 232 push integer
          mov rax, 232
          push rax
          ; 232 push string
          mov rax, s_143
          push rax
          ; 232 push boolean
          mov rax, 1
          push rax
          ; 232 call
          call vec_shrink
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 233 push integer
          mov rax, 8
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
          ; 233 push integer
          mov rax, 1
          push rax
          ; 233 push string
          mov rax, s_110
          push rax
          ; 233 push integer
          mov rax, 233
          push rax
          ; 233 push string
          mov rax, s_143
          push rax
          ; 233 push boolean
          mov rax, 1
          push rax
          ; 233 call
          call itor
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 233 push string
          mov rax, s_110
          push rax
          ; 233 push integer
          mov rax, 233
          push rax
          ; 233 push string
          mov rax, s_143
          push rax
          ; 233 push boolean
          mov rax, 1
          push rax
          ; 233 call
          call ratio_add
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 234 push integer
          mov rax, 1
          push rax
          ; 234 push integer
          mov rax, 2
          push rax
          ; 234 push string
          mov rax, s_110
          push rax
          ; 234 push integer
          mov rax, 234
          push rax
          ; 234 push string
          mov rax, s_143
          push rax
          ; 234 push boolean
          mov rax, 1
          push rax
          ; 234 call
          call create_ratio
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 234 push string
          mov rax, s_110
          push rax
          ; 234 push integer
          mov rax, 234
          push rax
          ; 234 push string
          mov rax, s_143
          push rax
          ; 234 push boolean
          mov rax, 1
          push rax
          ; 234 call
          call ratio_mul
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 235 push integer
          mov rax, 1
          push rax
          ; 235 push string
          mov rax, s_110
          push rax
          ; 235 push integer
          mov rax, 235
          push rax
          ; 235 push string
          mov rax, s_143
          push rax
          ; 235 push boolean
          mov rax, 1
          push rax
          ; 235 call
          call itor
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 235 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 235 push string
          mov rax, s_110
          push rax
          ; 235 push integer
          mov rax, 235
          push rax
          ; 235 push string
          mov rax, s_143
          push rax
          ; 235 push boolean
          mov rax, 1
          push rax
          ; 235 call
          call ratio_sub
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 235 push integer
          mov rax, 1
          push rax
          ; 235 push string
          mov rax, s_110
          push rax
          ; 235 push integer
          mov rax, 235
          push rax
          ; 235 push string
          mov rax, s_143
          push rax
          ; 235 push boolean
          mov rax, 1
          push rax
          ; 235 call
          call itor
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 235 push integer
          mov rax, 1
          push rax
          ; 235 push string
          mov rax, s_110
          push rax
          ; 235 push integer
          mov rax, 235
          push rax
          ; 235 push string
          mov rax, s_143
          push rax
          ; 235 push boolean
          mov rax, 1
          push rax
          ; 235 call
          call itor
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 235 push integer
          mov rax, 1
          push rax
          ; 235 push string
          mov rax, s_110
          push rax
          ; 235 push integer
          mov rax, 235
          push rax
          ; 235 push string
          mov rax, s_143
          push rax
          ; 235 push boolean
          mov rax, 1
          push rax
          ; 235 call
          call itor
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 235 push string
          mov rax, s_110
          push rax
          ; 235 push integer
          mov rax, 235
          push rax
          ; 235 push string
          mov rax, s_143
          push rax
          ; 235 push boolean
          mov rax, 1
          push rax
          ; 235 call
          call create_color
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 235 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 235 push string
          mov rax, s_110
          push rax
          ; 235 push integer
          mov rax, 235
          push rax
          ; 235 push string
          mov rax, s_143
          push rax
          ; 235 push boolean
          mov rax, 1
          push rax
          ; 235 call
          call vec_scale
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 236 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 236 push integer
          mov rax, 1
          push rax
          ; 236 push integer
          mov rax, 2
          push rax
          ; 236 push string
          mov rax, s_110
          push rax
          ; 236 push integer
          mov rax, 236
          push rax
          ; 236 push string
          mov rax, s_143
          push rax
          ; 236 push boolean
          mov rax, 1
          push rax
          ; 236 call
          call create_ratio
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 236 push integer
          mov rax, 7
          push rax
          ; 236 push integer
          mov rax, 10
          push rax
          ; 236 push string
          mov rax, s_110
          push rax
          ; 236 push integer
          mov rax, 236
          push rax
          ; 236 push string
          mov rax, s_143
          push rax
          ; 236 push boolean
          mov rax, 1
          push rax
          ; 236 call
          call create_ratio
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 236 push integer
          mov rax, 1
          push rax
          ; 236 push string
          mov rax, s_110
          push rax
          ; 236 push integer
          mov rax, 236
          push rax
          ; 236 push string
          mov rax, s_143
          push rax
          ; 236 push boolean
          mov rax, 1
          push rax
          ; 236 call
          call itor
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 236 push string
          mov rax, s_110
          push rax
          ; 236 push integer
          mov rax, 236
          push rax
          ; 236 push string
          mov rax, s_143
          push rax
          ; 236 push boolean
          mov rax, 1
          push rax
          ; 236 call
          call create_color
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 236 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 236 push string
          mov rax, s_110
          push rax
          ; 236 push integer
          mov rax, 236
          push rax
          ; 236 push string
          mov rax, s_143
          push rax
          ; 236 push boolean
          mov rax, 1
          push rax
          ; 236 call
          call vec_scale
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 236 push string
          mov rax, s_110
          push rax
          ; 236 push integer
          mov rax, 236
          push rax
          ; 236 push string
          mov rax, s_143
          push rax
          ; 236 push boolean
          mov rax, 1
          push rax
          ; 236 call
          call vec_add
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 230 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 230 return
          ret
          ; 239 function definition
main:     
          push rbp
          mov rbp, rsp
          ; 241 push string
          mov rax, s_144
          push rax
          ; 241 push string
          mov rax, s_110
          push rax
          ; 241 push integer
          mov rax, 241
          push rax
          ; 241 push string
          mov rax, s_145
          push rax
          ; 241 push boolean
          mov rax, 1
          push rax
          ; 241 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 242 push integer
          mov rax, 320
          push rax
          ; 242 push string
          mov rax, s_110
          push rax
          ; 242 push integer
          mov rax, 242
          push rax
          ; 242 push string
          mov rax, s_145
          push rax
          ; 242 push boolean
          mov rax, 1
          push rax
          ; 242 call
          call itos
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 242 push string
          mov rax, s_110
          push rax
          ; 242 push integer
          mov rax, 242
          push rax
          ; 242 push string
          mov rax, s_145
          push rax
          ; 242 push boolean
          mov rax, 1
          push rax
          ; 242 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 242 push string
          mov rax, s_132
          push rax
          ; 242 push string
          mov rax, s_110
          push rax
          ; 242 push integer
          mov rax, 242
          push rax
          ; 242 push string
          mov rax, s_145
          push rax
          ; 242 push boolean
          mov rax, 1
          push rax
          ; 242 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 243 push integer
          mov rax, 180
          push rax
          ; 243 push string
          mov rax, s_110
          push rax
          ; 243 push integer
          mov rax, 243
          push rax
          ; 243 push string
          mov rax, s_145
          push rax
          ; 243 push boolean
          mov rax, 1
          push rax
          ; 243 call
          call itos
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 243 push string
          mov rax, s_110
          push rax
          ; 243 push integer
          mov rax, 243
          push rax
          ; 243 push string
          mov rax, s_145
          push rax
          ; 243 push boolean
          mov rax, 1
          push rax
          ; 243 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 243 push string
          mov rax, s_132
          push rax
          ; 243 push string
          mov rax, s_110
          push rax
          ; 243 push integer
          mov rax, 243
          push rax
          ; 243 push string
          mov rax, s_145
          push rax
          ; 243 push boolean
          mov rax, 1
          push rax
          ; 243 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 244 push integer
          mov rax, 256
          push rax
          ; 244 push string
          mov rax, s_110
          push rax
          ; 244 push integer
          mov rax, 244
          push rax
          ; 244 push string
          mov rax, s_145
          push rax
          ; 244 push boolean
          mov rax, 1
          push rax
          ; 244 call
          call itos
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 244 push string
          mov rax, s_110
          push rax
          ; 244 push integer
          mov rax, 244
          push rax
          ; 244 push string
          mov rax, s_145
          push rax
          ; 244 push boolean
          mov rax, 1
          push rax
          ; 244 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 244 push string
          mov rax, s_7
          push rax
          ; 244 push string
          mov rax, s_110
          push rax
          ; 244 push integer
          mov rax, 244
          push rax
          ; 244 push string
          mov rax, s_145
          push rax
          ; 244 push boolean
          mov rax, 1
          push rax
          ; 244 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 247 push string
          mov rax, s_110
          push rax
          ; 247 push integer
          mov rax, 247
          push rax
          ; 247 push string
          mov rax, s_145
          push rax
          ; 247 push boolean
          mov rax, 1
          push rax
          ; 247 call
          call set_camera_constants
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 249 push integer
          mov rax, 0
          push rax
          ; 250 label
while_0x0000000000000013: 
          ; 250 duplicate
          pop rax
          push rax
          push rax
          ; 250 push integer
          mov rax, 180
          push rax
          ; 250 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 250 start of while-loop
          pop rax
          test rax, rax
          jz while_0x0000000000000013_end
          ; 251 push integer
          mov rax, 0
          push rax
          ; 252 label
while_0x0000000000000014: 
          ; 252 duplicate
          pop rax
          push rax
          push rax
          ; 252 push integer
          mov rax, 320
          push rax
          ; 252 is less?
          mov rax, 0
          mov rbx, 1
          pop rcx
          pop rdx
          cmp rdx, rcx
          cmovl rax, rbx
          push rax
          ; 252 start of while-loop
          pop rax
          test rax, rax
          jz while_0x0000000000000014_end
          ; 253 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 253 push integer
          mov rax, 180
          push rax
          ; 253 push string
          mov rax, s_110
          push rax
          ; 253 push integer
          mov rax, 253
          push rax
          ; 253 push string
          mov rax, s_145
          push rax
          ; 253 push boolean
          mov rax, 1
          push rax
          ; 253 call
          call create_ratio
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 254 over
          pop rax
          pop rbx
          push rbx
          push rax
          push rbx
          ; 254 push integer
          mov rax, 320
          push rax
          ; 254 push string
          mov rax, s_110
          push rax
          ; 254 push integer
          mov rax, 254
          push rax
          ; 254 push string
          mov rax, s_145
          push rax
          ; 254 push boolean
          mov rax, 1
          push rax
          ; 254 call
          call create_ratio
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 255 swap
          pop rax
          pop rbx
          push rax
          push rbx
          ; 256 push string
          mov rax, s_146
          push rax
          ; 256 push string
          mov rax, s_110
          push rax
          ; 256 push integer
          mov rax, 256
          push rax
          ; 256 push string
          mov rax, s_145
          push rax
          ; 256 push boolean
          mov rax, 1
          push rax
          ; 256 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 257 push string
          mov rax, s_110
          push rax
          ; 257 push integer
          mov rax, 257
          push rax
          ; 257 push string
          mov rax, s_145
          push rax
          ; 257 push boolean
          mov rax, 1
          push rax
          ; 257 call
          call create_camera_ray
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 258 push string
          mov rax, s_147
          push rax
          ; 258 push string
          mov rax, s_110
          push rax
          ; 258 push integer
          mov rax, 258
          push rax
          ; 258 push string
          mov rax, s_145
          push rax
          ; 258 push boolean
          mov rax, 1
          push rax
          ; 258 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 259 push string
          mov rax, s_110
          push rax
          ; 259 push integer
          mov rax, 259
          push rax
          ; 259 push string
          mov rax, s_145
          push rax
          ; 259 push boolean
          mov rax, 1
          push rax
          ; 259 call
          call render_pixel
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          push rax
          ; 260 push string
          mov rax, s_148
          push rax
          ; 260 push string
          mov rax, s_110
          push rax
          ; 260 push integer
          mov rax, 260
          push rax
          ; 260 push string
          mov rax, s_145
          push rax
          ; 260 push boolean
          mov rax, 1
          push rax
          ; 260 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 261 push string
          mov rax, s_110
          push rax
          ; 261 push integer
          mov rax, 261
          push rax
          ; 261 push string
          mov rax, s_145
          push rax
          ; 261 push boolean
          mov rax, 1
          push rax
          ; 261 call
          call output_color
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 262 push integer
          mov rax, 1
          push rax
          ; 262 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 252 end of while-loop
          jmp while_0x0000000000000014
while_0x0000000000000014_end: 
          ; 263 drop
          pop rax
          ; 264 push integer
          mov rax, 1
          push rax
          ; 264 add
          pop rax
          pop rbx
          add rbx, rax
          push rbx
          ; 266 push string
          mov rax, s_7
          push rax
          ; 266 push string
          mov rax, s_110
          push rax
          ; 266 push integer
          mov rax, 266
          push rax
          ; 266 push string
          mov rax, s_145
          push rax
          ; 266 push boolean
          mov rax, 1
          push rax
          ; 266 call
          call puts
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          pop rbx
          ; 250 end of while-loop
          jmp while_0x0000000000000013
while_0x0000000000000013_end: 
          ; 267 push integer
          mov rax, 0
          push rax
          ; 240 restore frame
          pop rax
          mov rsp, rbp
          pop rbp
          ; 240 return
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
s_86: db `gcd`, 0 
s_87: db `a`, 0 
s_88: db `ratio_simplify`, 0 
s_89: db `b`, 0 
s_90: db `c`, 0 
s_91: db `[gcd: `, 0 
s_92: db `]`, 0 
s_93: db `[3]`, 0 
s_94: db `[4]`, 0 
s_95: db `Can't divide by zero`, 0 
s_96: db `create_ratio`, 0 
s_97: db `copy_ratio`, 0 
s_98: db `_1_`, 0 
s_99: db `ratio_add`, 0 
s_100: db `_2_`, 0 
s_101: db `_3_`, 0 
s_102: db `_4_`, 0 
s_103: db `_5_`, 0 
s_104: db `_6_`, 0 
s_105: db `ratio_sub`, 0 
s_106: db `ratio_mul`, 0 
s_107: db `ratio_div`, 0 
s_108: db `ratio_sqrt`, 0 
s_109: db `itor`, 0 
s_110: db `examples/pathtracer.ilo`, 0 
s_111: db `create_color`, 0 
s_112: db `free_color`, 0 
s_113: db `create_point`, 0 
s_114: db `free_point`, 0 
s_115: db `create_vec`, 0 
s_116: db `copy_vec`, 0 
s_117: db `free_vec`, 0 
s_118: db `A`, 0 
s_119: db `vec_add`, 0 
s_120: db `B`, 0 
s_121: db `C`, 0 
s_122: db `D`, 0 
s_123: db `vec_sub`, 0 
s_124: db `vec_scale`, 0 
s_125: db `vec_shrink`, 0 
s_126: db `vec_len_sqr`, 0 
s_127: db `vec_len`, 0 
s_128: db `create_ray`, 0 
s_129: db `free_ray`, 0 
s_130: db `ray_at`, 0 
s_131: db `output_color`, 0 
s_132: db ` `, 0 
s_133: db `set_camera_constants`, 0 
s_134: db `LLC.x.num`, 0 
s_135: db `LLC.x.den`, 0 
s_136: db `LLC.y.num`, 0 
s_137: db `LLC.y.den`, 0 
s_138: db `LLC.z.num`, 0 
s_139: db `LLC.z.den`, 0 
s_140: db `create_camera_ray`, 0 
s_141: db `q:`, 0 
s_142: db `r:`, 0 
s_143: db `render_pixel`, 0 
s_144: db `P3 `, 0 
s_145: db `main`, 0 
s_146: db `1.`, 0 
s_147: db `2.`, 0 
s_148: db `3.`, 0 
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
ASPECT_RATIO: resb 8 
VIEWPORT_HEIGHT: resb 8 
VIEWPORT_WIDTH: resb 8 
FOCAL_LENGTH: resb 8 
ORIGIN: resb 8 
HORIZONTAL: resb 8 
VERTICAL: resb 8 
LOWER_LEFT_CORNER: resb 8 
