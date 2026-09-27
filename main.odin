package main

import "core:fmt"

@(private = "file")
only_int_this_file := "some str"

main :: proc() {
	fmt.println("Hellope!")

	x := 10
	y := 20
	z: int // empty is 0
	fmt.printf("The number x: %d and y: %d and z: %d\n", x, y, z)

	fmt.printf("Len of str %d\n", len(only_int_this_file))
}
