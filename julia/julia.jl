function main()
    
    add::Int64 = 0
    st = time_ns();

    for index in 0:100000000
        add = add + index
    end

    println("==========================")
    println("julia 테스트")
    println(add)
    println(time_ns() - st)
end;

main()