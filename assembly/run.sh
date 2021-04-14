nasm -f elf64 ./assembly/main.asm -o ./assembly/assembly.obj
gcc -no-pie ./assembly/assembly.obj -o ./assembly/assembly.bin
./assembly/assembly.bin