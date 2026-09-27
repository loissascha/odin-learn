package window

import rl "vendor:raylib"

run_app :: proc() {
	rl.InitWindow(1200, 800, "My Odin App")
	defer rl.CloseWindow()

	rl.SetTargetFPS(120)

	for !rl.WindowShouldClose() {
		rl.BeginDrawing()
		defer rl.EndDrawing()

		rl.ClearBackground(rl.RAYWHITE)

		rl.DrawText("Hello from Odin", 20, 20, 30, rl.BLACK)
	}
}
