package printer

import "core:fmt"

print_str :: proc(text: string) {
	print_str2(text, 5)
}

@(private)
print_str2 :: proc(text: string, count: int) {
	for i := 0; i < count; i += 1 {
		fmt.printf("[%d]: ", i)
		for char in text {
			fmt.printf("%r", char)
		}
		fmt.printf("\n")
	}
}
