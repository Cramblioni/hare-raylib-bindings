use types::c;

export @symbol("BeginDrawing")
fn begin_drawing() void;

export @symbol("EndDrawing")
fn end_drawing() void;

export @symbol("ClearBackground")
fn clear_background(Color) void;

export @symbol("DrawPixel")
fn draw_pixel(x: int, y: int, Color) void;

export @symbol("DrawLine")
fn draw_line(x1: int, y1: int, x2: int, y2: int, Color) void;

export @symbol("DrawLineEx")
fn draw_line_ex(x1: int, y1: int, x2: int, y2: int, thick: f32, Color) void;

export @symbol("DrawCircle")
fn draw_circle(x: int, y: int, rad: f32, Color) void;

export @symbol("DrawEllipse")
fn draw_ellipse(x: int, y: int, f32, f32, Color) void;

export @symbol("DrawRectangle")
fn draw_rectangle(int, int, int, int, Color) void;

export @symbol("DrawRectangleLines")
fn draw_rectangle_lines(int, int, int, int, Color) void;

//////// TEXTURES

export @symbol("BeginTextureMode")
fn begin_texture_mode(RenderTexture2D) void;

export @symbol("EndTextureMode")
fn end_texture_mode() void;

export @symbol("LoadRenderTexture")
fn load_render_texture(width: int, height: int) RenderTexture;

export @symbol("DrawTexturePro")
fn draw_texture_pro(
	texture: Texture,
	source: Rectangle, dest: Rectangle,
	origin: Vector2,
	rotation: f32,
	tint: Color,
) void;

export @symbol("LoadTexture")
fn load_texture(path: *c::char) Texture;

export @symbol("UnloadTexture")
fn unload_texture(Texture) void;

//////// IMAGES

export @symbol("LoadImage")
fn load_image(path: *c::char) Image;

export @symbol("LoadImageSvg")
fn load_image_svg(path: *c::char, width: int, height: int) Image;

export @symbol("UnloadImage")
fn unload_image(Image) void;
