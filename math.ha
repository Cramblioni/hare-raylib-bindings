
export type Vector2 = struct {
	x: f32, y: f32,
};

export type Vector3 = struct {
	x: f32, y: f32, z: f32,
};

export type Vector4 = struct {
	x: f32, y: f32, z: f32, w: f32,
};
export type Quaternion = Vector4;

export @symbol("Clamp")
fn clamp(value: f32, min: f32, max: f32) f32;

export @symbol("Lerp")
fn lerp(start: f32, end: f32, amount: f32) f32;

export @symbol("Normalize")
fn normalize(value: f32, start: f32, end: f32) f32;

export @symbol("Remap")
fn remap(value: f32,
	input_start: f32, input_end: f32,
	output_start: f32, output_end: f32) f32;

export @symbol("Wrap")
fn wrap(value: f32, min: f32, max: f32) f32;

export @symbol("FloatEquals")
fn float_equals(x: f32, y: f32) bool;

export @symbol("Vector2Zero")
fn vector2_zero() Vector2;

export @symbol("Vector2One")
fn vector2_one() Vector2;

export @symbol("Vector2Add")
fn vector2_add(x: Vector2, y: Vector2) Vector2;

export @symbol("Vector2AddValue");
fn vector2_add_value(x: Vector2, y: f32) Vector2;

export @symbol("Vector2Subtract")
fn vector2_subtract(x: Vector2, y: Vector2) Vector2;

export @symbol("Vector2SubtractValue");
fn vector2_subtract_value(x: Vector2, y: f32) Vector2;
