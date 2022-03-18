.PHONY: clean test


test: ilo
	./test.sh

clean:
	rm ilo ilo0 ilo1 ilo.asm ilo0.asm ilo1.asm ilo.o ilo0.o ilo1.o


# Bootstrap compiler

ilo0.o: bootstrap/ilo0.asm
	nasm -felf64 bootstrap/ilo0.asm -o ilo0.o

ilo0: ilo0.o
	ld ilo0.o -o ilo0

ilo1.asm: src/ilo.ilo ilo0
	./ilo0 src/ilo.ilo > ilo1.asm

ilo1.o: ilo1.asm
	nasm -felf64 ilo1.asm -o ilo1.o

ilo1: ilo1.o
	ld ilo1.o -o ilo1


# Self-hosted compiler

ilo.asm: src/ilo.ilo ilo1
	./ilo1 src/ilo.ilo > ilo.asm

ilo.o: ilo.asm
	nasm -felf64 ilo.asm -o ilo.o

ilo: ilo.o
	ld ilo.o -o ilo
