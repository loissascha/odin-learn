package main

import "core:fmt"

main :: proc() {
	fmt.println("Hellope!")

	x := 10
	y := 20
	fmt.printf("The number x: %d and y: %d\n", x, y)
}
