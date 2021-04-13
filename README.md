# language-benchmarking
언어별 테스트

#### 언어별 속도

언어 | 값 | 속도
---|:---:|---:
`csharp` | 4999999950000000 | 00.1753282
`go` | 4999999950000000 | 00.22106300
`python` | 4999999950000000 | 05.900153800001135
`julia` | 5000000050000000 | 00.14259600


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
``` go

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