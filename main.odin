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

Foonion :: union {
	int,
	bool,
}

main :: proc() {
	fmt.println("Hellope!")

	defer fmt.println("this is the very end!")

	x := 10
	y := 20
	z: int // empty is 0
	fmt.printf("The number x: %d and y: %d and z: %d\n", x, y, z)

	fmt.printf("Len of str %d\n", len(only_int_this_file))

	printer.print_str("calling print_str from main")

	print_arch()

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

	o: Foonion = 123
	switch _ in o {
	case int:
		fmt.println("o is int")
	case bool:
		fmt.println("o is bool")
	}

	loop: for {
		for {
			break loop // breaks out of both loops
		}
	}

	fmt.println("swapped 1 2", swap(1, 2))
}

swap :: proc(x: int, y: int) -> (int, int) {
	return y, x
}

print_arch :: proc() {
	switch arch := ODIN_ARCH; arch {
	case .i386, .wasm32, .arm32:
		fmt.println("32 bit")
	case .amd64, .arm64, .wasm64p32, .riscv64:
		fmt.println("64 bit")
	case .Unknown:
		fmt.println("unknown architecture")
	}
}
