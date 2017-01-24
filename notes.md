# OS from Scratch

reference: http://www.cs.bham.ac.uk/~exr/lectures/opsys/10_11/lectures/os-dev.pdf

## Assembler

Compile assembler

$ nasm img.asm -f bin -o img.bin

Run disk image

$ qemu-system-x86_64 img.bin

View hex dump

$ od -t x1 -A n img.bin

## C

$ gcc -ffreestanding -c basic.c -o basic.o

$ objdump -d basic.o

$ ld -o basic.bin -Ttext 0x0 --oformat binary basic.o

$ ndisasm -b 32 basic.bin > basic.dis
