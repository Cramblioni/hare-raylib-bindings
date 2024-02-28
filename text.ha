use types::c::{char, uchar};

export type Font = struct {
    baseSize: int,
    glyphCount: int,
    glyphPadding: int,
    texture: Texture2D,
    recs: *Rectangle,
    glyphs: *GlyphInfo,
};
export type GlyphInfo = struct {
    value: int,
    offsetX: int,
    offsetY: int,
    advanceX: int,
    image: Image,
};


    // Font loading/unloading functions
export @symbol("GetFontDefault")
fn Get_Font_Default() Font;

export @symbol("LoadFont")
fn load_font(file_Name: *char) Font;

export @symbol("LoadFontEx")
fn load_font_ex(file_Name: *char, font_Size: int, codepoints: *int, codepoint_Count: int) Font;

export @symbol("LoadFontFromImage")
fn load_font_from_image(image: Image, key: Color, first_Char: int) Font;

export @symbol("LoadFontFromMemory")
fn load_font_from_memory(file_Type: *char, file_Data: *uchar, data_Size: int, font_Size: int, codepoints: *int, codepoint_Count: int) Font;

export @symbol("IsFontReady")
fn is_font_ready(font: Font) bool;

export @symbol("LoadFontData")
fn load_font_data(file_Data: *uchar, data_Size: int, font_Size: int, codepoints: *int, codepoint_Count: int, _type: int) *GlyphInfo;

export @symbol("GenImageFontAtlas")
fn gen_image_font_atlas(glyphs: *GlyphInfo, glyph_Recs: **Rectangle, glyph_Count: int, font_Size: int, padding: int, pack_Method: int) Image;

export @symbol("UnloadFontData")
fn unload_font_data(glyphs: *GlyphInfo, glyph_Count: int) void;

export @symbol("UnloadFont")
fn unload_font(font: Font) void;

export @symbol("ExportFontAsCode")
fn export_font_as_code(font: Font, file_Name: *char) bool;


    // Text drawing functions
export @symbol("DrawFPS")
fn draw_fps(pos_X: int, pos_Y: int) void;

export @symbol("DrawText")
fn draw_text(text: *char, pos_X: int, pos_Y: int, font_Size: int, color: Color) void;

export @symbol("DrawTextEx")
fn draw_text_ex(font: Font, text: *char, position: Vector2, font_Size: f32, spacing: f32, tint: Color) void;

export @symbol("DrawTextPro")
fn draw_text_pro(font: Font, text: *char, position: Vector2, origin: Vector2, rotation: f32, font_Size: f32, spacing: f32, tint: Color) void;

export @symbol("DrawTextCodepoint")
fn draw_text_codepoint(font: Font, codepoint: int, position: Vector2, font_Size: f32, tint: Color) void;

export @symbol("DrawTextCodepoints")
fn draw_text_codepoints(font: Font, codepoints: *int, codepoint_Count: int, position: Vector2, font_Size: f32, spacing: f32, tint: Color) void;


    // Text font info functions
export @symbol("SetTextLineSpacing")
fn set_text_line_spacing(spacing: int) void;

export @symbol("MeasureText")
fn measure_text(text: *char, font_Size: int) int;

export @symbol("MeasureTextEx")
fn measure_text_ex(font: Font, text: *char, font_Size: f32, spacing: f32) Vector2;

export @symbol("GetGlyphIndex")
fn get_glyph_index(font: Font, codepoint: int) int;

export @symbol("GetGlyphInfo")
fn get_glyph_info(font: Font, codepoint: int) GlyphInfo;

export @symbol("GetGlyphAtlasRec")
fn get_glyph_atlas_rec(font: Font, codepoint: int) Rectangle;


    // Text codepoints management functions (characters: unicode)
export @symbol("LoadUTF8")
fn load_utf8(codepoints: *int, length: int) *char;

export @symbol("UnloadUTF8")
fn unload_utf8(text: *char) void;

export @symbol("LoadCodepoints")
fn load_codepoints(text: *char, count: *int) *int;

export @symbol("UnloadCodepoints")
fn unload_codepoints(codepoints: *int) void;

export @symbol("GetCodepointCount")
fn get_codepoint_count(text: *char) int;

export @symbol("GetCodepoint")
fn get_codepoint(text: *char, codepoint_Size: *int) int;

export @symbol("GetCodepointNext")
fn get_codepoint_next(text: *char, codepoint_Size: *int) int;

export @symbol("GetCodepointPrevious")
fn get_codepoint_previous(text: *char, codepoint_Size: *int) int;

export @symbol("CodepointToUTF8")
fn codepoint_to_utf8(codepoint: int, utf8_Size: *int) *char;


    // Text strings management functions (UTF: no-strings: 8, byte: only chars)
    // NOTE: Some strings allocate memory internally for returned strings, just be careful!
export @symbol("TextCopy")
fn text_copy(dst: *char, src: *char) int;

export @symbol("TextIsEqual")
fn text_is_equal(text1: *char, text2: *char) bool;

export @symbol("TextLength")
fn text_length(text: *char) uint;

export @symbol("TextFormat")
fn text_format(text: *char, ...) *char;

export @symbol("TextSubtext")
fn text_subtext(text: *char, position: int, length: int) *char;

export @symbol("TextReplace")
fn text_replace(text: *char, replace: *char, by: *char) *char;

export @symbol("TextInsert")
fn text_insert(text: *char, _insert: *char, position: int) *char;

export @symbol("TextJoin")
fn text_join(text_List: **char, count: int, delimiter: *char) *char;

export @symbol("TextSplit")
fn text_split(text: *char, delimiter: char, count: *int) **char;

export @symbol("TextAppend")
fn text_append(text: *char, _append: *char, position: *int) void;

export @symbol("TextFindIndex")
fn text_find_index(text: *char, find: *char) int;

export @symbol("TextToUpper")
fn text_to_upper(text: *char) *char;

export @symbol("TextToLower")
fn text_to_lower(text: *char) *char;

export @symbol("TextToPascal")
fn text_to_pascal(text: *char) *char;

export @symbol("TextToInteger")
fn text_to_integer(text: *char) int;
