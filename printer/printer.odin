package printer

import "core:fmt"

print_str :: proc(text: string) {
	print_str2(text)
}

@(private)
print_str2 :: proc(text: string) {
	for i := 0; i < 10; i += 1 {
		fmt.printf("[%d]: %s\n", i, text)
	}
}
