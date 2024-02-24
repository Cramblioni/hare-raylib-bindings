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

export @symbol("BeginDrawing")
fn begin_drawing() void;

export @symbol("EndDrawing")
fn end_drawing() void;

export @symbol("ClearBackground")
fn clear_background(Color) void;

// misc
export @symbol("SetTargetFPS")
fn set_target_fps(int) void;

export @symbol("GetFrameTime")
fn get_frame_time() f32;

export @symbol("GetTime")
fn get_time() f64;

// Minimal for drawing stuff
export @symbol("DrawPixel")
fn draw_pixel(int, int, Color) void;

export @symbol("DrawLine")
fn draw_line(int, int, int, int, Color) void;

export @symbol("DrawLineEx")
fn draw_line_ex(int, int, int, int, f32, Color) void;

export @symbol("DrawCircle")
fn draw_circle(int, int, f32, Color) void;

export @symbol("DrawEllipse")
fn draw_ellipse(int, int, f32, f32, Color) void;

export @symbol("DrawRectangle")
fn draw_rectangle(int, int, int, int, Color) void;

export @symbol("DrawRectangleLines")
fn draw_rectangle_lines(int, int, int, int, Color) void;

// Text
export @symbol("DrawFPS")
fn draw_fps(int, int) void;

// Basic Input
export @symbol("IsKeyPressed")
fn is_key_pressed(int) bool;

export @symbol("IsKeyDown")
fn is_key_down(int) bool;

export @symbol("IsKeyReleased")
fn is_key_released(int) bool;


// texturing
export @symbol("BeginTextureMode")
fn begin_texture_mode(RenderTexture2D) void;
