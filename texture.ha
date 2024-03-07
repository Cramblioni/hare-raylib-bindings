use types::c;

// NPatchInfo, n-patch layout info
export type NPatchInfo = struct {
    source: Rectangle,       // Texture source rectangle
    left: int,               // Left border offset
    top: int,                // Top border offset
    right: int,              // Right border offset
    bottom: int,             // Bottom border offset
    layout: int,             // Layout of the n-patch: 3x3, 1x3 or 3x1
};

export type TextureCubemap = Texture;

export @symbol("LoadImage")
fn load_image( fileName: *c::char) Image;
export @symbol("LoadImageRaw")
fn load_image_raw( fileName: *c::char, width: int, height: int, format: int, headerSize: int) Image;

export @symbol("LoadImageSvg")
fn load_image_svg( fileNameOrString: *c::char, width: int, height: int) Image;

export @symbol("LoadImageAnim")
fn load_image_anim( fileName: *c::char, frames: *int) Image;

export @symbol("LoadImageFromMemory")
fn load_image_from_memory( fileType: *c::char,  fileData: *c::uchar, dataSize: int) Image;

export @symbol("LoadImageFromTexture")
fn load_image_from_texture(texture: Texture2D) Image;

export @symbol("LoadImageFromScreen")
fn load_image_from_screen() Image;

export @symbol("IsImageReady")
fn is_image_ready(image: Image) bool;

export @symbol("UnloadImage")
fn unload_image(image: Image) void;

export @symbol("ExportImage")
fn export_image(image: Image,  fileName: *c::char) bool;

export @symbol("ExportImageToMemory")
fn export_image_to_memory(image: Image,  fileType: *c::char, fileSize: *int) *c::uchar;

export @symbol("ExportImageAsCode")
fn export_image_as_code(image: Image,  fileName: *c::char) bool;


    // Image generation functions
export @symbol("GenImageColor")
fn gen_image_color(width: int, height: int, color: Color) Image;

export @symbol("GenImageGradientLinear")
fn gen_image_gradient_linear(width: int, height: int, direction: int, start: Color, end: Color) Image;

export @symbol("GenImageGradientRadial")
fn gen_image_gradient_radial(width: int, height: int, density: f32, inner: Color, outer: Color) Image;

export @symbol("GenImageGradientSquare")
fn gen_image_gradient_square(width: int, height: int, density: f32, inner: Color, outer: Color) Image;

export @symbol("GenImageChecked")
fn gen_image_checked(width: int, height: int, checksX: int, checksY: int, col1: Color, col2: Color) Image;

export @symbol("GenImageWhiteNoise")
fn gen_image_white_noise(width: int, height: int, factor: f32) Image;

export @symbol("GenImagePerlinNoise")
fn gen_image_perlin_noise(width: int, height: int, offsetX: int, offsetY: int, scale: f32) Image;

export @symbol("GenImageCellular")
fn gen_image_cellular(width: int, height: int, tileSize: int) Image;

export @symbol("GenImageText")
fn gen_image_text(width: int, height: int,  text: *c::char) Image;


    // Image manipulation functions
export @symbol("ImageCopy")
fn image_copy(image: Image) Image;

export @symbol("ImageFromImage")
fn image_from_image(image: Image, rec: Rectangle) Image;

export @symbol("ImageText")
fn image_text( text: *c::char, fontSize: int, color: Color) Image;

export @symbol("ImageTextEx")
fn image_text_ex(font: Font,  text: *c::char, fontSize: f32, spacing: f32, tint: Color) Image;

export @symbol("ImageFormat")
fn image_format(image: *Image, newFormat: int) void;

export @symbol("ImageToPOT")
fn image_to_p_o_t(image: *Image, fill: Color) void;

export @symbol("ImageCrop")
fn image_crop(image: *Image, crop: Rectangle) void;

export @symbol("ImageAlphaCrop")
fn image_alpha_crop(image: *Image, threshold: f32) void;

export @symbol("ImageAlphaClear")
fn image_alpha_clear(image: *Image, color: Color, threshold: f32) void;

export @symbol("ImageAlphaMask")
fn image_alpha_mask(image: *Image, alphaMask: Image) void;

export @symbol("ImageAlphaPremultiply")
fn image_alpha_premultiply(image: *Image) void;

export @symbol("ImageBlurGaussian")
fn image_blur_gaussian(image: *Image, blurSize: int) void;

export @symbol("ImageResize")
fn image_resize(image: *Image, newWidth: int, newHeight: int) void;

export @symbol("ImageResizeNN")
fn image_resize_n_n(image: *Image, newWidth: int,newHeight: int) void;

export @symbol("ImageResizeCanvas")
fn image_resize_canvas(image: *Image, newWidth: int, newHeight: int, offsetX: int, offsetY: int, fill: Color) void;

export @symbol("ImageMipmaps")
fn image_mipmaps(image: *Image) void;

export @symbol("ImageDither")
fn image_dither(image: *Image, rBpp: int, gBpp: int, bBpp: int, aBpp: int) void;

export @symbol("ImageFlipVertical")
fn image_flip_vertical(image: *Image) void;

export @symbol("ImageFlipHorizontal")
fn image_flip_horizontal(image: *Image) void;

export @symbol("ImageRotate")
fn image_rotate(image: *Image, degrees: int) void;

export @symbol("ImageRotateCW")
fn image_rotate_c_w(image: *Image) void;

export @symbol("ImageRotateCCW")
fn image_rotate_c_c_w(image: *Image) void;

export @symbol("ImageColorTint")
fn image_color_tint(image: *Image, color: Color) void;

export @symbol("ImageColorInvert")
fn image_color_invert(image: *Image) void;

export @symbol("ImageColorGrayscale")
fn image_color_grayscale(image: *Image) void;

export @symbol("ImageColorContrast")
fn image_color_contrast(image: *Image, contrast: f32) void;

export @symbol("ImageColorBrightness")
fn image_color_brightness(image: *Image, brightness: int) void;

export @symbol("ImageColorReplace")
fn image_color_replace(image: *Image, color: Color, replace: Color) void;

export @symbol("LoadImageColors")
fn load_image_colors(image: Image) *Color;

export @symbol("LoadImagePalette")
fn load_image_palette(image: Image, maxPaletteSize: int, colorCount: *int) *Color;

export @symbol("UnloadImageColors")
fn unload_image_colors(colors: *Color) void;

export @symbol("UnloadImagePalette")
fn unload_image_palette(colors: *Color) void;

export @symbol("GetImageAlphaBorder")
fn get_image_alpha_border(image: Image, threshold: f32) Rectangle;

export @symbol("GetImageColor")
fn get_image_color(image: Image, x: int, y: int) Color;


    // Image drawing functions
    // NOTE: Image software-rendering functions (CPU)
export @symbol("ImageClearBackground")
fn image_clear_background(dst: *Image, color: Color) void;

export @symbol("ImageDrawPixel")
fn image_draw_pixel(dst: *Image, posX: int, posY: int, color: Color) void;

export @symbol("ImageDrawPixelV")
fn image_draw_pixel_v(dst: *Image, position: Vector2, color: Color) void;

export @symbol("ImageDrawLine")
fn image_draw_line(dst: *Image, startPosX: int, startPosY: int, endPosX: int, endPosY: int, color: Color) void;

export @symbol("ImageDrawLineV")
fn image_draw_line_v(dst: *Image, start: Vector2, end: Vector2, color: Color) void;

export @symbol("ImageDrawCircle")
fn image_draw_circle(dst: *Image, centerX: int, centerY: int, radius: int, color: Color) void;

export @symbol("ImageDrawCircleV")
fn image_draw_circle_v(dst: *Image, center: Vector2, radius: int, color: Color) void;

export @symbol("ImageDrawCircleLines")
fn image_draw_circle_lines(dst: *Image, centerX: int, centerY: int, radius: int, color: Color) void;

export @symbol("ImageDrawCircleLinesV")
fn image_draw_circle_lines_v(dst: *Image, center: Vector2, radius: int, color: Color) void;

export @symbol("ImageDrawRectangle")
fn image_draw_rectangle(dst: *Image, posX: int, posY: int, width: int, height: int, color: Color) void;

export @symbol("ImageDrawRectangleV")
fn image_draw_rectangle_v(dst: *Image, position: Vector2, _size: Vector2, color: Color) void;

export @symbol("ImageDrawRectangleRec")
fn image_draw_rectangle_rec(dst: *Image, rec: Rectangle, color: Color) void;

export @symbol("ImageDrawRectangleLines")
fn image_draw_rectangle_lines(dst: *Image, rec: Rectangle, thick: int, color: Color) void;

export @symbol("ImageDraw")
fn image_draw(dst: *Image, src: Image, srcRec: Rectangle, dstRec: Rectangle, tint: Color) void;

export @symbol("ImageDrawText")
fn image_draw_text(dst: *Image,  text: *c::char, posX: int, posY: int, fontSize: int, color: Color) void;

export @symbol("ImageDrawTextEx")
fn image_draw_text_ex(dst: *Image, font: Font,  text: *c::char, position: Vector2, fontSize: f32, spacing: f32, tint: Color) void;


    // Texture loading functions
    // NOTE: These functions require GPU access
export @symbol("LoadTexture")
fn load_texture( fileName: *c::char) Texture2D;

export @symbol("LoadTextureFromImage")
fn load_texture_from_image(image: Image) Texture2D;

export @symbol("LoadTextureCubemap")
fn load_texture_cubemap(image: Image, layout: int) TextureCubemap;

export @symbol("LoadRenderTexture")
fn load_render_texture(width: int, height: int) RenderTexture2D;

export @symbol("IsTextureReady")
fn is_texture_ready(texture: Texture2D) bool;

export @symbol("UnloadTexture")
fn unload_texture(texture: Texture2D) void;

export @symbol("IsRenderTextureReady")
fn is_render_texture_ready(target: RenderTexture2D) bool;

export @symbol("UnloadRenderTexture")
fn unload_render_texture(target: RenderTexture2D) void;

export @symbol("UpdateTexture")
fn update_texture(texture: Texture2D,  pixels: *opaque) void;

export @symbol("UpdateTextureRec")
fn update_texture_rec(texture: Texture2D, rec: Rectangle,  pixels: *opaque) void;


    // Texture configuration functions
export @symbol("GenTextureMipmaps")
fn gen_texture_mipmaps(texture: *Texture2D) void;

export @symbol("SetTextureFilter")
fn set_texture_filter(texture: Texture2D, filter: int) void;

export @symbol("SetTextureWrap")
fn set_texture_wrap(texture: Texture2D, wrap: int) void;


    // Texture drawing functions
export @symbol("DrawTexture")
fn draw_texture(texture: Texture2D, posX: int, posY: int, tint: Color) void;

export @symbol("DrawTextureV")
fn draw_texture_v(texture: Texture2D, position: Vector2, tint: Color) void;

export @symbol("DrawTextureEx")
fn draw_texture_ex(texture: Texture2D, position: Vector2, rotation: f32, scale: f32, tint: Color) void;

export @symbol("DrawTextureRec")
fn draw_texture_rec(texture: Texture2D, source: Rectangle, position: Vector2, tint: Color) void;

export @symbol("DrawTexturePro")
fn draw_texture_pro(texture: Texture2D, source: Rectangle, dest: Rectangle, origin: Vector2, rotation: f32, tint: Color) void;

export @symbol("DrawTextureNPatch")
fn draw_texture_n_patch(texture: Texture2D, nPatchInfo: NPatchInfo, dest: Rectangle, origin: Vector2, rotation: f32, tint: Color) void;


    // Color/pixel related functions
export @symbol("Fade")
fn fade(color: Color, alpha: f32) Color;

export @symbol("ColorToInt")
fn color_to_int(color: Color) int;

export @symbol("ColorNormalize")
fn color_normalize(color: Color) Vector4;

export @symbol("ColorFromNormalized")
fn color_from_normalized(normalized: Vector4) Color;

export @symbol("ColorToHSV")
fn color_to_h_s_v(color: Color) Vector3;

export @symbol("ColorFromHSV")
fn color_from_h_s_v(hue: f32, saturation: f32, value: f32) Color;

export @symbol("ColorTint")
fn color_tint(color: Color, tint: Color) Color;

export @symbol("ColorBrightness")
fn color_brightness(color: Color, factor: f32) Color;

export @symbol("ColorContrast")
fn color_contrast(color: Color, contrast: f32) Color;

export @symbol("ColorAlpha")
fn color_alpha(color: Color, alpha: f32) Color;

export @symbol("ColorAlphaBlend")
fn color_alpha_blend(dst: Color, src: Color, tint: Color) Color;

export @symbol("GetColor")
fn get_color(hexValue : uint) Color;

export @symbol("GetPixelColor")
fn get_pixel_color(srcPtr: *opaque, format: int) Color;

export @symbol("SetPixelColor")
fn set_pixel_color(dstPtr: *opaque, color: Color, format: int) void;

export @symbol("GetPixelDataSize")
fn get_pixel_data_size(width: int, height: int, format: int) int;


