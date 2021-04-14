package main

import "time"

func main() {
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
}
