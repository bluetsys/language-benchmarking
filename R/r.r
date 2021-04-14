add <- 0
st <- proc.time()

for(index in 0:100000001)
{
    add <- add + index;
}

ed <- proc.time() - st

print("==========================")
print("R 테스트")
print(add)
print(ed)