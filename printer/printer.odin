package printer

import "core:fmt"

print_str :: proc(text: string) {
	if print_str2(text, 5) {
		fmt.println("done")
	}
}

@(private)
print_str2 :: proc(text: string, count: int) -> bool {
	for i := 0; i < count; i += 1 {
		fmt.printf("[%d]: %s | ", i, text)
		for char in text {
			fmt.printf("%r", char)
		}
		fmt.printf("\n")
	}
	return true
}
