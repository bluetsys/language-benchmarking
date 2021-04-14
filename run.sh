dotnet run --project ./csharp/csharp.csproj
go run ./go/go.go
julia ./julia/julia.jl
Rscript ./R/r.r
python3 ./python/python.py
node ./nodejs/nodejs.js
gcc ./C/gcc.c -o ./C/gcc.out | ./C/gcc.out
java ./java/main.java
gfortran-9 -o ./fortran/fortran.out ./fortran/main.f90 | ./fortran/fortran.out
ruby ./ruby/main.ru

nasm -f elf64 ./assembly/main.asm -o ./assembly/assembly.obj
gcc -no-pie ./assembly/assembly.obj -o ./assembly/assembly.bin
./assembly/assembly.bin

cobc -x -free ./cobol/*.cobc -o ./main.bin && ./main.bin