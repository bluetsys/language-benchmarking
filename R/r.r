add <- 0
st <- proc.time()

for(index in 0:100000001)
{
    add <- add + index;
}

ed <- proc.time() - st

message("==========================")
message("R 테스트")
message(add)
print(ed)