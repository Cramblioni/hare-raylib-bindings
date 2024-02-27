use types::c;

export type Color = struct {
	r: u8, g: u8, b: u8, a: u8
};

export type Image = struct {
	data: *opaque,
	width: int,
	height: int,
	mipmaps: int,
	format: int,
};

export type Texture = struct {
	id: uint,
	width: int, height: int,
	mipmaps: int, format: int,
};
export type Texture2D = Texture;

export type RenderTexture = struct {
	id: uint,
	texture : Texture,
	depth : Texture,
};
export type RenderTexture2D = RenderTexture;

export type Rectangle = struct {
	x: f32, y: f32,
	width: f32, height: f32,
};


// minimal for displaying a window
export @symbol("InitWindow")
fn init_window(int, int, *c::char) nullable *opaque;

export @symbol("CloseWindow")
fn close_window() void;

export @symbol("WindowShouldClose")
fn window_should_close() bool;


// misc
export @symbol("SetTargetFPS")
fn set_target_fps(int) void;

export @symbol("GetFrameTime")
fn get_frame_time() f32;

export @symbol("GetTime")
fn get_time() f64;

// Minimal for drawing stuff

// Text
export @symbol("DrawFPS")
fn draw_fps(int, int) void;

export @symbol("DrawText") 
fn draw_text(text: *c::char, x: int, y: int, fsize: int, col: Color) void;

export @symbol("MeasureText")
fn measure_text(text: *c::char, fsize: int) int;

// Basic Input
export @symbol("IsKeyPressed")
fn is_key_pressed(int) bool;

export @symbol("IsKeyDown")
fn is_key_down(int) bool;

export @symbol("IsKeyReleased")
fn is_key_released(int) bool;

export @symbol("GetMouseX")
fn get_mouse_x() int;

export @symbol("GetMouseY")
fn get_mouse_y() int;

export @symbol("IsMouseButtonPressed")
fn is_mouse_button_pressed(button: int) bool;
