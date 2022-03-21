/* as -o hello.o hello.asm
 * ld -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64 -o hello hello.o
 * https://opensource.apple.com/source/xnu/xnu-1504.3.12/bsd/kern/syscalls.master
 */
.global _start
.align 2

_start:
        mov X0, #1
        adr X1, helloworld
        mov X2, helloworld_len
        mov X16, #4
        svc #0x80

        mov X0, #0
        mov X16, #1
        svc #0x80

helloworld: .ascii "Hi!\n"
helloworld_len = . - helloworld
