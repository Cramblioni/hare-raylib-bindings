
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

export type Matrix = struct {
	m0 : f32, m1 : f32, m2 : f32, m3 : f32,
	m4 : f32, m5 : f32, m6 : f32, m7 : f32,
	m8 : f32, m9 : f32, m10: f32, m11: f32,
	m12: f32, m13: f32, m14: f32, m15: f32,
};

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

export @symbol("Vector2AddValue")
fn vector2_add_value(x: Vector2, y: f32) Vector2;

export @symbol("Vector2Subtract")
fn vector2_subtract(x: Vector2, y: Vector2) Vector2;

export @symbol("Vector2SubtractValue")
fn vector2_subtract_value(x: Vector2, y: f32) Vector2;

export @symbol("Vector2Length")
fn vector2_length(Vector2) f32;

export @symbol("Vector2LengthSqr")
fn vector2_length_sqr(Vector2) f32;

export @symbol("Vector2DotProduct")
fn vector2_dotproduct(v1: Vector2, v2: Vector2) f32;

export @symbol("Vector2Distance")
fn vector2_distance(v1: Vector2, v2: Vector2) f32;

export @symbol("Vector2Angle")
fn vector2_angle(v1: Vector2, v2: Vector2) f32;

export @symbol("Vector2Scale")
fn vector2_scale(v: Vector2, s: f32) Vector2;

export @symbol("Vector2Mulitply")
fn vector2_multiply(x: Vector2, y: Vector2) Vector2;

export @symbol("Vector2Negate")
fn vector2_negate(Vector2) Vector2;

export @symbol("Vector2Divide")
fn vector2_divide(v1: Vector2, v2: Vector2) Vector2;

export @symbol("Vector2Normalize")
fn vector2_normalize(Vector2) Vector2;

export @symbol("Vector2Transform")
fn vector2_transform(v: Vector2, mat: Matrix) Vector2;

export @symbol("Vector2Lerp")
fn vector2_lerp(v1: Vector2, v2: Vector2, value: f32) Vector2;

export @symbol("Vector2Reflect")
fn vector2_reflect(v: Vector2, normal: Vector2) Vector2;

export @symbol("Vector2Rotate")
fn vector2_rotate(v: Vector2, angle: f32) Vector2;

export @symbol("Vector2MoveTowards")
fn vector2_move_towards(v: Vector2, target: Vector2, maxDistance: f32) Vector2;

export @symbol("Vector2Invert")
fn vector2_invert(v: Vector2) Vector2;

export @symbol("Vector2Clamp")
fn vector2_clamp(v: Vector2, min: Vector2, max: Vector2) Vector2;

export @symbol("Vector2ClampValue")
fn vector2_clamp_value(v: Vector2, min: f32, max: f32) Vector2;

export @symbol("Vector2Equals")
fn vector2_equals(p: Vector2, q: Vector2) bool;

export @symbol("Vector3Zero")
fn vector3_zero() Vector3;

export @symbol("Vector3One")
fn vector3_one() Vector3;

export @symbol("Vector3Add")
fn vector3_add(x: Vector3, y: Vector3) Vector3;

export @symbol("Vector3AddValue")
fn vector3_add_value(x: Vector3, y: f32) Vector3;

export @symbol("Vector3Subtract")
fn vector3_subtract(x: Vector3, y: Vector3) Vector3;

export @symbol("Vector3SubtractValue")
fn vector3_subtract_value(x: Vector3, y: f32) Vector3;

export @symbol("Vector3Length")
fn vector3_length(Vector3) f32;

export @symbol("Vector3LengthSqr")
fn vector3_length_sqr(Vector3) f32;

export @symbol("Vector3DotProduct")
fn vector3_dotproduct(v1: Vector3, v2: Vector3) f32;

export @symbol("Vector3Distance")
fn vector3_distance(v1: Vector3, v2: Vector3) f32;

export @symbol("Vector3Angle")
fn vector3_angle(v1: Vector3, v2: Vector3) f32;

export @symbol("Vector3Scale")
fn vector3_scale(v: Vector3, s: f32) Vector3;

export @symbol("Vector3Mulitply")
fn vector3_multiply(x: Vector3, y: Vector3) Vector3;

export @symbol("Vector3Negate")
fn vector3_negate(Vector3) Vector3;

export @symbol("Vector3Divide")
fn vector3_divide(v1: Vector3, v2: Vector3) Vector3;

export @symbol("Vector3Normalize")
fn vector3_normalize(Vector3) Vector3;

export @symbol("Vector3Transform")
fn vector3_transform(v: Vector3, mat: Matrix) Vector3;

export @symbol("Vector3Lerp")
fn vector3_lerp(v1: Vector3, v2: Vector3, value: f32) Vector3;

export @symbol("Vector3Reflect")
fn vector3_reflect(v: Vector3, normal: Vector3) Vector3;

export @symbol("Vector3Rotate")
fn vector3_rotate(v: Vector3, angle: f32) Vector3;

export @symbol("Vector3MoveTowards")
fn vector3_move_towards(v: Vector3, target: Vector3, maxDistance: f32) Vector3;

export @symbol("Vector3Invert")
fn vector3_invert(v: Vector3) Vector3;

export @symbol("Vector3Clamp")
fn vector3_clamp(v: Vector3, min: Vector3, max: Vector3) Vector3;

export @symbol("Vector3ClampValue")
fn vector3_clamp_value(v: Vector3, min: f32, max: f32) Vector3;

export @symbol("Vector3Equals")
fn vector3_equals(p: Vector3, q: Vector3) bool;

export @symbol("Vector4Zero")
fn vector4_zero() Vector4;

export @symbol("Vector4One")
fn vector4_one() Vector4;

export @symbol("Vector4Add")
fn vector4_add(x: Vector4, y: Vector4) Vector4;

export @symbol("Vector4AddValue")
fn vector4_add_value(x: Vector4, y: f32) Vector4;

export @symbol("Vector4Subtract")
fn vector4_subtract(x: Vector4, y: Vector4) Vector4;

export @symbol("Vector4SubtractValue")
fn vector4_subtract_value(x: Vector4, y: f32) Vector4;

export @symbol("Vector4Length")
fn vector4_length(Vector4) f32;

export @symbol("Vector4LengthSqr")
fn vector4_length_sqr(Vector4) f32;

export @symbol("Vector4DotProduct")
fn vector4_dotproduct(v1: Vector4, v2: Vector4) f32;

export @symbol("Vector4Distance")
fn vector4_distance(v1: Vector4, v2: Vector4) f32;

export @symbol("Vector4Angle")
fn vector4_angle(v1: Vector4, v2: Vector4) f32;

export @symbol("Vector4Scale")
fn vector4_scale(v: Vector4, s: f32) Vector4;

export @symbol("Vector4Mulitply")
fn vector4_multiply(x: Vector4, y: Vector4) Vector4;

export @symbol("Vector4Negate")
fn vector4_negate(Vector4) Vector4;

export @symbol("Vector4Divide")
fn vector4_divide(v1: Vector4, v2: Vector4) Vector4;

export @symbol("Vector4Normalize")
fn vector4_normalize(Vector4) Vector4;

export @symbol("Vector4Transform")
fn vector4_transform(v: Vector4, mat: Matrix) Vector4;

export @symbol("Vector4Lerp")
fn vector4_lerp(v1: Vector4, v2: Vector4, value: f32) Vector4;

export @symbol("Vector4Reflect")
fn vector4_reflect(v: Vector4, normal: Vector4) Vector4;

export @symbol("Vector4Rotate")
fn vector4_rotate(v: Vector4, angle: f32) Vector4;

export @symbol("Vector4MoveTowards")
fn vector4_move_towards(v: Vector4, target: Vector4, maxDistance: f32) Vector4;

export @symbol("Vector4Invert")
fn vector4_invert(v: Vector4) Vector4;

export @symbol("Vector4Clamp")
fn vector4_clamp(v: Vector4, min: Vector4, max: Vector4) Vector4;

export @symbol("Vector4ClampValue")
fn vector4_clamp_value(v: Vector4, min: f32, max: f32) Vector4;

export @symbol("Vector4Equals")
fn vector4_equals(p: Vector4, q: Vector4) bool;
