# language-benchmarking
언어별 테스트

## 테스트
1부터 100,000,000(1억)까지 누적 더히가 수치

## 설명
테스트는 1번씩 진행한 결과라서 실제 결과와 다를 수 있습니다.
각 언어가 설치 되어 있다면

``` Shell
sh run.sh
```

#### 언어별 속도

언어 | 값 | 속도
---|:---:|---:
`C#` | 5000000050000000 | 00:00:00.1843682
`go` | 5000000050000000 | 00.46567800
`python` | 5000000050000000 | 6.500377700023819
`julia` | 5000000050000000 | 00.12473800
`R` | 5000000050000000 | 1.999
`gcc` | 5000000050000000 | 0.000000
`nodejs` | 5000000050000000 | 0.092
`java  openjdk` | 5000000050000000 | 0.29
`java oracle` | 5000000050000000 | 0.29
`Fortran` | 5000000050000000 | 0.138576001
`Ruby` | 5000000050000000 | 3.0314486
`assembly` | 5000000050000000 | 0.000000
`COBOL` | 5000000050000000 | 19.96
 `Pascal` | 5000000050000000 | 2.325231616
|  | 

#### 그래프
![리스트 화면](/Images/KakaoTalk_20210414_104626720.png)

제공 샤이니 코리아 사용자 모임 [옥 ･ั﹏･ั]님 제공

#### csharp
``` csharp

long add = 0;
var st = System.DateTime.Now;

for (int index = 0; index <= 100000000; index++)
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

for i := 0; i <= 100000000; i++ {
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

for (int index = 0; index <= 100000000; index++)
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

for (var index = 0; index <= 100000000; index++) {
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
for index in 0...100000001
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
	MOV     rdi, format					; 파라메타1
	MOV     rsi, split					; 파라메타2
	MOV     rdx, title					; 파라메타3
	MOV     rcx, rbx					; 파라메타4
	XOR		rax, rax
	CALL    printf

SECTION .data
	format: 	DB 	"%s%s%ld", 10, 0
	split: 		DB 	"==========================", 10, 0
	title: 		DB 	"assembly 테스트", 10, 0

```

#### cobol
``` cobol

IDENTIFICATION DIVISION.
PROGRAM-ID. HELLO.

DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-INDEX             PIC 9(16) VALUE 0.
       01 WS-SUM               PIC 9(16) VALUE 0.
       01 WS-CURRENT-DATE.
        02 ws-year             PIC 9(4).
        02 ws-month            PIC 9(2).
        02 ws-day              PIC 9(2).
        02 ws-hours            PIC 9(2).
        02 ws-minutes          PIC 9(2).
        02 ws-seconds          PIC 9(2).
        02 ws-MILLISECONDS     PIC 9(2).
       01 WS-ST                PIC 9(16).
       01 WS-ED                PIC 9(16).
        
PROCEDURE DIVISION.

       MOVE FUNCTION CURRENT-DATE TO WS-CURRENT-DATE.
       MOVE WS-CURRENT-DATE TO WS-ST.

       A-PARA.
           PERFORM B-PARA WITH TEST AFTER UNTIL WS-INDEX >= 100000000.

           MOVE FUNCTION CURRENT-DATE TO WS-CURRENT-DATE.
           MOVE WS-CURRENT-DATE TO WS-ED.

           SUBTRACT WS-ST FROM WS-ED

           DISPLAY "==========================".
           DISPLAY "cobol 테스트".
           DISPLAY WS-SUM.
           DISPLAY WS-ED.

           STOP RUN.
       
       B-PARA.
           ADD 1 TO WS-INDEX.
           ADD WS-INDEX TO WS-SUM.
              
       C-PARA.
           DISPLAY "222"

STOP RUN.

```
