package window

import rl "vendor:raylib"

run_app :: proc() {
	rl.InitWindow(1200, 800, "My Odin App")
	defer rl.CloseWindow()

	rl.SetTargetFPS(120)

	counter := 0
	for !rl.WindowShouldClose() {
		rl.BeginDrawing()
		defer rl.EndDrawing()

		rl.ClearBackground(rl.RAYWHITE)


		rl.DrawText(rl.TextFormat("Counter: %d", counter), 20, 20, 30, rl.BLACK)

		button := rl.Rectangle {
			x      = 30,
			y      = 100,
			width  = 150,
			height = 40,
		}

		if rl.GuiButton(button, "Click me") {
			counter += 1
		}
	}
}
