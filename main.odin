package main

import "core:fmt"

main :: proc() {
	fmt.println("Hellope!")

	x := 10
	y := 20
	z: int // empty is 0
	fmt.printf("The number x: %d and y: %d and z: %d\n", x, y, z)
}
