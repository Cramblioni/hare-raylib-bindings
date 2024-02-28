
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

export type Radians = f32;
export type Degrees = f32;

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

// VECTOR 2

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
fn vector2_angle(v1: Vector2, v2: Vector2) Degrees;

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
fn vector2_rotate(v: Vector2, angle: Degrees) Vector2;

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

// VECTOR 3
export @symbol("Vector3Zero")
fn vector3_zero() Vector3;

export @symbol("Vector3One")
fn vector3_one() Vector3;

export @symbol("Vector3Add")
fn vector3_add(v1: Vector3, v2: Vector3) Vector3;

export @symbol("Vector3AddValue")
fn vector3_add_value(v: Vector3, add: f32) Vector3;

export @symbol("Vector3Subtract")
fn vector3_subtract(v1: Vector3, v2: Vector3) Vector3;

export @symbol("Vector3SubtractValue")
fn vector3_subtract_value(v: Vector3, sub: f32) Vector3;

export @symbol("Vector3Scale")
fn vector3_scale(v: Vector3, scalar: f32) Vector3;

export @symbol("Vector3Multiply")
fn vector3_multiply(v1: Vector3, v2: Vector3) Vector3;

export @symbol("Vector3CrossProduct")
fn vector3_cross_product(v1: Vector3, v2: Vector3) Vector3;

export @symbol("Vector3Perpendicular")
fn vector3_perpendicular(v: Vector3) Vector3;

export @symbol("Vector3Length")
fn vector3_length(v: const Vector3) f32;

export @symbol("Vector3LengthSqr")
fn vector3_length_sqr(v: const Vector3) f32;
 
export @symbol("Vector3DotProduct")
fn vector3_dot_product(v1: Vector3, v2: Vector3) f32;

export @symbol("Vector3Distance")
fn vector3_distance(v1: Vector3, v2: Vector3) f32;

export @symbol("Vector3DistanceSqr")
fn vector3_distance_sqr(v1: Vector3, v2: Vector3) f32;

export @symbol("Vector3Angle")
fn vector3_angle(v1: Vector3, v2: Vector3) Degrees;

export @symbol("Vector3Negate")
fn vector3_negate(v: Vector3) Vector3;

export @symbol("Vector3Divide")
fn vector3_divide(v1: Vector3, v2: Vector3) Vector3;

export @symbol("Vector3Normalize")
fn vector3_normalize(v: Vector3) Vector3;

export @symbol("Vector3OrthoNormalize")
fn vector3_ortho_normalize(v1: *Vector3, v2: *Vector3) void;

export @symbol("Vector3Transform")
fn vector3_transform(v: Vector3, mat: Matrix) Vector3;

export @symbol("Vector3RotateByQuaternion")
fn vector3_rotate_by_quaternion(v: Vector3, q: Quaternion) Vector3;

export @symbol("Vector3RotateByAxisAngle")
fn vector3_rotate_by_axis_angle(v: Vector3, axis: Vector3, angle: Degrees) Vector3;

export @symbol("Vector3Lerp")
fn vector3_lerp(v1: Vector3, v2: Vector3, amount: f32) Vector3;

export @symbol("Vector3Reflect")
fn vector3_reflect(v: Vector3, normal: Vector3) Vector3;

export @symbol("Vector3Min")
fn vector3_min(v1: Vector3, v2: Vector3) Vector3;

export @symbol("Vector3Max")
fn vector3_max(v1: Vector3, v2: Vector3) Vector3;

export @symbol("Vector3Barycenter")
fn vector3_barycenter(p: Vector3, a: Vector3, b: Vector3, c: Vector3) Vector3;

export @symbol("Vector3Unproject")
fn vector3_unproject(source: Vector3, projection: Matrix, view: Matrix) Vector3;

export @symbol("Vector3ToFloatV")
fn vector3_to_float_v(v: Vector3) f32;

export @symbol("Vector3Invert")
fn vector3_invert(v: Vector3) Vector3;

export @symbol("Vector3Clamp")
fn vector3_clamp(v: Vector3, min: Vector3, max: Vector3) Vector3;

export @symbol("Vector3ClampValue")
fn vector3_clamp_value(v: Vector3, min: f32, max: f32) Vector3;

export @symbol("Vector3Equals")
fn vector3_equals(p: Vector3, q: Vector3) int;

export @symbol("Vector3Refract")
fn vector3_refract(v: Vector3, n: Vector3, r: f32) Vector3;

// Quaternions
export @symbol("QuaternionAdd")
fn quaternion_add(q1: Quaternion, q2: Quaternion) Quaternion;

export @symbol("QuaternionAddValue")
fn quaternion_add_value(q: Quaternion, add: f32) Quaternion;

export @symbol("QuaternionSubtract")
fn quaternion_subtract(q1: Quaternion, q2: Quaternion) Quaternion;

export @symbol("QuaternionSubtractValue")
fn quaternion_subtract_value(q: Quaternion, sub: f32) Quaternion;

export @symbol("QuaternionIdentity")
fn quaternion_identity() Quaternion;

export @symbol("QuaternionLength")
fn quaternion_length(q: Quaternion) f32;

export @symbol("QuaternionNormalize")
fn quaternion_normalize(q: Quaternion) Quaternion;

export @symbol("QuaternionInvert")
fn quaternion_invert(q: Quaternion) Quaternion;

export @symbol("QuaternionMultiply")
fn quaternion_multiply(q1: Quaternion, q2: Quaternion) Quaternion;

export @symbol("QuaternionScale")
fn quaternion_scale(q: Quaternion, mul: f32) Quaternion;

export @symbol("QuaternionDivide")
fn quaternion_divide(q1: Quaternion, q2: Quaternion) Quaternion;

export @symbol("QuaternionLerp")
fn quaternion_lerp(q1: Quaternion, q2: Quaternion, amount: f32) Quaternion;

export @symbol("QuaternionNlerp")
fn quaternion_nlerp(q1: Quaternion, q2: Quaternion, amount: f32) Quaternion;

export @symbol("QuaternionSlerp")
fn quaternion_slerp(q1: Quaternion, q2: Quaternion, amount: f32) Quaternion;

export @symbol("QuaternionFromVector3ToVector3")
fn quaternion_from_vector3_to_vector3(from: Vector3, to: Vector3) Quaternion;

export @symbol("QuaternionFromMatrix")
fn quaternion_from_matrix(mat: Matrix) Quaternion;

export @symbol("QuaternionToMatrix")
fn quaternion_to_matrix(q: Quaternion) Matrix;

export @symbol("QuaternionFromAxisAngle")
fn quaternion_from_axis_angle(axis: Vector3, angle: f32) Quaternion;

@symbol("QuaternionToAxisAngle")
fn QuaternionToAxisAngle(q: Quaternion, out_Axis: *Vector3, out_Angle: *f32) void;
export fn quaternion_to_axis_angle(q: Quaternion) (Vector3, Degrees) = {
	let axis = Vector3 { ... };
	let angle = 0.0f32;
	QuaternionToAxisAngle(q, &axis, &angle);
	return (axis, angle);
};

export @symbol("QuaternionFromEuler")
fn quaternion_from_euler(pitch: Degrees, yaw: Degrees, roll: Degrees) Quaternion;

export @symbol("QuaternionToEuler")
fn quaternion_to_euler(q: Quaternion) Vector3; // Radians

export @symbol("QuaternionTransform")
fn quaternion_transform(q: Quaternion, mat: Matrix) Quaternion;

export @symbol("QuaternionEquals")
fn quaternion_equals(p: Quaternion, q: Quaternion) int;

// Matrixes

export @symbol("MatrixDeterminant")
fn matrix_determinant(mat: Matrix) f32;

export @symbol("MatrixTrace")
fn matrix_trace(mat: Matrix) f32;

export @symbol("MatrixTranspose")
fn matrix_transpose(mat: Matrix) Matrix;

export @symbol("MatrixInvert")
fn matrix_invert(mat: Matrix) Matrix;

export @symbol("MatrixIdentity")
fn matrix_identity() Matrix;

export @symbol("MatrixAdd")
fn matrix_add(left: Matrix, right: Matrix) Matrix;

export @symbol("MatrixSubtract")
fn matrix_subtract(left: Matrix, right: Matrix) Matrix;

export @symbol("MatrixMultiply")
fn matrix_multiply(left: Matrix, right: Matrix) Matrix;

export @symbol("MatrixTranslate")
fn matrix_translate(x: f32, y: f32, z: f32) Matrix;

export @symbol("MatrixRotate")
fn matrix_rotate(axis: Vector3, angle: Radians) Matrix;

export @symbol("MatrixRotateX")
fn matrix_rotate_x(angle: Radians) Matrix;

export @symbol("MatrixRotateY")
fn matrix_rotate_y(angle: Radians) Matrix;

export @symbol("MatrixRotateZ")
fn matrix_rotate_z(angle: Radians) Matrix;

export @symbol("MatrixRotateXYZ")
fn matrix_rotate_xyz(angle: Vector3) Matrix; // Radians

export @symbol("MatrixRotateZYX")
fn matrix_rotate_zyx(angle: Vector3) Matrix; // Radians

export @symbol("MatrixScale")
fn matrix_scale(x: f32, y: f32, z: f32) Matrix;

export @symbol("MatrixFrustum")
fn matrix_frustum(left: f64, right: f64, bottom: f64, top: f64, near: f64, far: f64) Matrix;

export @symbol("MatrixPerspective")
fn matrix_perspective(fovy: Radians, aspect: f64, near: f64, far: f64) Matrix;

export @symbol("MatrixOrtho")
fn matrix_ortho(left: f64, right: f64, bottom: f64, top: f64, near: f64, far: f64) Matrix;

export @symbol("MatrixLookAt")
fn matrix_look_at(eye: Vector3, target: Vector3, up: Vector3) Matrix;

