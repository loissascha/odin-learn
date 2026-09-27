package main

import "core:fmt"
import "printer"

public_str := "public str"

@(private)
private_str := "private str"

@(private = "file")
only_int_this_file := "some str"

Foo :: enum {
	A,
	B,
	C,
	D,
}

main :: proc() {
	fmt.println("Hellope!")

	x := 10
	y := 20
	z: int // empty is 0
	fmt.printf("The number x: %d and y: %d and z: %d\n", x, y, z)

	fmt.printf("Len of str %d\n", len(only_int_this_file))

	printer.print_str("calling print_str from main")

	switch arch := ODIN_ARCH; arch {
	case .i386, .wasm32, .arm32:
		fmt.println("32 bit")
	case .amd64, .arm64, .wasm64p32, .riscv64:
		fmt.println("64 bit")
	case .Unknown:
		fmt.println("unknown architecture")
	}

	f := Foo.A
	switch f {
	case .A:
		fmt.println("A switch")
	case .B:
		fmt.println("B switch")
	case .C:
		fmt.println("C switch")
	case .D:
		fmt.println("D switch")
	}

	#partial switch f {
	case .A:
		fmt.println("A switch 2")
	case .D:
		fmt.println("D switch 2")
	}
}
