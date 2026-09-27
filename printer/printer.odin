package printer

import "core:fmt"

print_str :: proc(text: string) {
	print_str2(text)
}

@(private)
print_str2 :: proc(text: string) {
	fmt.println(text)
}
