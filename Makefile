.PHONY: clean test


test: ilo
	./test.sh

clean:
	rm ilo.asm ilo_bt.asm ilo.o ilo_bt.o ilo ilo_bt


# Bootstrap compiler

ilo_bt.asm: src/ilo.ilo
	./ilo0 src/ilo.ilo > ilo_bt.asm

ilo_bt.o: ilo_bt.asm
	nasm -felf64 ilo_bt.asm -o ilo_bt.o

ilo_bt: ilo_bt.o
	ld ilo_bt.o -o ilo_bt


# Self-hosted compiler

ilo.asm: src/ilo.ilo ilo_bt
	./ilo_bt src/ilo.ilo > ilo.asm

ilo.o: ilo.asm
	nasm -felf64 ilo.asm -o ilo.o

ilo: ilo.o
	ld ilo.o -o ilo
