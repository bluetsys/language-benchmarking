# language-benchmarking
언어별 테스트

#### 언어별 속도

언어 | 값 | 속도
---|:---:|---:
`csharp` | 5000000050000000 | 00.1753282
`go` | 5000000050000000 | 00.22106300
`python` | 5000000050000000 | 05.900153800001135
`julia` | 5000000050000000 | 00.14259600
`R` | 5000000050000000 | 1.526
`gcc` | 5000000050000000 | 0.000000
`nodejs` | 5000000050000000 | 0.089
`java openjdk` | 5000000050000000 | 0.29
`Fortran` | 5000000050000000 | 0.127355993
`Ruby` | 5000000050000000 | 2.706298
`assembly` | 5000000050000000 | 0.000000
 |  | 
`java` | 추가 예정 | 추가 예정
`Pascal` | 추가 예정 | 추가 예정
`COBOL` | 추가 예정 | 추가 예정

#### csharp
``` csharp

long add = 0;
var st = System.DateTime.Now;

for (int index = 0; index < 100000000; index++)
{
    add = add + index;
}

var ed = System.DateTime.Now - st;

Console.WriteLine("==========================");
Console.WriteLine("C# 테스트");
Console.WriteLine(add);
Console.WriteLine(ed);

```

#### R
``` r

add <- 0
st <- proc.time()

for(index in 0:100000000)
{
    add <- add + index;
}

ed <- proc.time() - st

print("==========================")
print("R 테스트")
print(add)
print(ed)

```

#### go
``` go

add := 0
st := time.Now()

for i := 0; i < 100000000; i++ {
    add = add + i
}

ed := time.Since(st)

println("==========================")
println("go 테스트")
println(add)
println(ed)

```

#### python
``` python

st = time.perf_counter()
add = 0 

for index in range(0, 100000000):
    add = add + index
 
en = time.perf_counter() - st

print("==========================")
print("python 테스트")
print(add)
print(en)

```

#### julia
``` julia

add::Int64 = 0
st = time_ns();

for index in 0:100000000
    add = add + index
end

println("==========================")
println("julia 테스트")
println(add)
println(time_ns() - st)

```

#### java
``` java

long add = 0;
long st = System.currentTimeMillis();

for (int index = 0; index < 100000000; index++)
{
    add = add + index;
}

long ed = System.currentTimeMillis() - st;

System.out.printf("==========================\r\n");
System.out.printf("java\r\n");
System.out.printf("%d\r\n", add);
System.out.printf("0.%d\r\n", ed);

```

#### nodejs, javascript
``` javascript

var add = 0;
var st = Date.now();

for (var index = 0; index < 100000000; index++) {
    add = add + index;
}

var ed = Date.now() - st;

console.log("==========================")
console.log("nodejs 테스트")
console.log(add);
console.log(ed / 1000);

```

#### fortran
``` fortran

IMPLICIT NONE

real :: start, finish
character*10 b(3)
INTEGER*8   :: index
INTEGER*8   :: sum

call date_and_time(b(1), b(2), b(3))
call cpu_time(start)

    DO index = 0, 100000000, 1
        sum = sum + index
    END DO

call cpu_time(finish)

write(*,*) '=========================='
write(*,*) 'fortran 테스트'
write(*,*) 'sum =', sum
write(*,*) 'sum =', finish - start

```

#### ruby
``` ruby

sum = 0
st = Time.now
for index in 0...100000000
    sum = sum + index 
end

ed = Time.now - st

puts "=========================="
puts "ruby 테스트"
puts sum
puts ed

```

#### assembly
``` assembly

GLOBAL  main
EXTERN  printf

SECTION .text
main:
	MOV ECX, 100000000
	XOR rax, rax
	XOR rbx, rbx

do:
	INC rax
	ADD rbx, rax

    LOOP do

	LEA     rdi, [format]
	MOV     rdi, format             ; 파라메타1
	MOV     rsi, rbx                ; 파라메타2
	CALL    printf

format: DB  "%ld", 10, 0

```