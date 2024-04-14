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

export type Camera2D = struct {
	_offset: Vector2,
	target: Vector2,
	rotation: f32,
	zoom: f32,
};

export type Camera3D = struct {
	position: Vector3,
	target: Vector3,
	up: Vector3,
	fovy: f32,
	projection: Projection,
};

export type Projection = int;
export def CAMERA_PROJECTION   = 0 : Projection;
export def CAMERA_ORTHOGRAPHIC = 1 : Projection;
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

export @symbol("ClearBackground")
fn clear_background(color: Color) void;

export @symbol("BeginDrawing")
fn begin_drawing() void;

export @symbol("EndDrawing")
fn end_drawing() void;


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

export @symbol("IsMouseButtonPressed")
fn is_mouse_button_pressed(button: int) bool;

export @symbol("IsMouseButtonDown")
fn is_mouse_button_down(button: int) bool;

export @symbol("IsMouseButtonReleased")
fn is_mouse_button_released(button: int) bool;

export @symbol("IsMouseButtonUp")
fn is_mouse_button_up(button: int) bool;

export @symbol("GetMouseX")
fn get_mouse_x() int;

export @symbol("GetMouseY")
fn get_mouse_y() int;

export @symbol("GetMousePosition")
fn get_mouse_position() Vector2;

export @symbol("GetMouseDelta")
fn get_mouse_delta() Vector2;

export @symbol("SetMousePosition")
fn set_mouse_position(x: int, y: int) void;

export @symbol("SetMouseOffset")
fn set_mouse_offset(offsetX: int, offsetY: int) void;

export @symbol("SetMouseScale")
fn set_mouse_scale(scaleX: f32, scaleY: f32) void;

export @symbol("GetMouseWheelMove")
fn get_mouse_wheel_move() f32;

export @symbol("GetMouseWheelMoveV")
fn get_mouse_wheel_move_v() Vector2;

export @symbol("SetMouseCursor")
fn set_mouse_cursor(cursor: int) void;


// Cameras
export @symbol("BeginMode2D")
fn begin_mode2D(Camera2D) void;

export @symbol("EndMode2D")
fn end_mode2D() void;

export @symbol("BeginMode3D")
fn begin_mode3D(Camera3D) void;

export @symbol("EndMode3D")
fn end_mode3D() void;

export @symbol("BeginTextureMode")
fn begin_texture_mode(texture: RenderTexture2D) void;

export @symbol("EndTextureMode")
fn end_texture_mode() void;
