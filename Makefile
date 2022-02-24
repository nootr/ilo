.PHONY: clean

ilo.asm: src/ilo.ilo
	./ilo0 src/ilo.ilo > ilo.asm

ilo.o: ilo.asm
	nasm -felf64 ilo.asm -o ilo.o

ilo: ilo.o
	ld ilo.o -o ilo

clean:
	rm ilo.asm ilo.o ilo
