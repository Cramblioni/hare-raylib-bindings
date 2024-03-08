use types::c;

export @symbol("DrawPixel")
fn draw_pixel(posX: int, posY: int, color: Color) void;

export @symbol("DrawPixelV")
fn draw_pixel_v(position: Vector2, color: Color) void;

export @symbol("DrawLine")
fn draw_line(startPosX: int, startPosY: int, endPosX: int, endPosY: int, color: Color) void;

export @symbol("DrawLineV")
fn draw_line_v(startPos: Vector2, endPos: Vector2, color: Color) void;

export @symbol("DrawLineEx")
fn draw_line_ex(startPos: Vector2, endPos: Vector2, thick: f32, color: Color) void;

export @symbol("DrawLineStrip")
fn draw_line_strip(points: *Vector2, pointCount: int, color: Color) void;

export @symbol("DrawLineBezier")
fn draw_line_bezier(startPos: Vector2, endPos: Vector2, thick: f32, color: Color) void;

export @symbol("DrawCircle")
fn draw_circle(centerX: int, centerY: int, radius: f32, color: Color) void;

export @symbol("DrawCircleSector")
fn draw_circle_sector(center: Vector2, radius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color) void;

export @symbol("DrawCircleSectorLines")
fn draw_circle_sector_lines(center: Vector2, radius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color) void;

export @symbol("DrawCircleGradient")
fn draw_circle_gradient(centerX: int, centerY: int, radius: f32, color1: Color, color2: Color) void;

export @symbol("DrawCircleV")
fn draw_circle_v(center: Vector2, radius: f32, color: Color) void;

export @symbol("DrawCircleLines")
fn draw_circle_lines(centerX: int, centerY: int, radius: f32, color: Color) void;

export @symbol("DrawCircleLinesV")
fn draw_circle_lines_v(center: Vector2, radius: f32, color: Color) void;

export @symbol("DrawEllipse")
fn draw_ellipse(centerX: int, centerY: int, radiusH: f32, radiusV: f32, color: Color) void;

export @symbol("DrawEllipseLines")
fn draw_ellipse_lines(centerX: int, centerY: int, radiusH: f32, radiusV: f32, color: Color) void;

export @symbol("DrawRing")
fn draw_ring(center: Vector2, innerRadius: f32, outerRadius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color) void;

export @symbol("DrawRingLines")
fn draw_ring_lines(center: Vector2, innerRadius: f32, outerRadius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color) void;

export @symbol("DrawRectangle")
fn draw_rectangle(posX: int, posY: int, width: int, height: int, color: Color) void;

export @symbol("DrawRectangleV")
fn draw_rectangle_v(position: Vector2, _size: Vector2, color: Color) void;

export @symbol("DrawRectangleRec")
fn draw_rectangle_rec(rec: Rectangle, color: Color) void;

export @symbol("DrawRectanglePro")
fn draw_rectangle_pro(rec: Rectangle, origin: Vector2, rotation: f32, color: Color) void;

export @symbol("DrawRectangleGradientV")
fn draw_rectangle_gradient_v(posX: int, posY: int, width: int, height: int, color1: Color, color2: Color) void;

export @symbol("DrawRectangleGradientH")
fn draw_rectangle_gradient_h(posX: int, posY: int, width: int, height: int, color1: Color, color2: Color) void;

export @symbol("DrawRectangleGradientEx")
fn draw_rectangle_gradient_ex(rec: Rectangle, col1: Color, col2: Color, col3: Color, col4: Color) void;

export @symbol("DrawRectangleLines")
fn draw_rectangle_lines(posX: int, posY: int, width: int, height: int, color: Color) void;

export @symbol("DrawRectangleLinesEx")
fn draw_rectangle_lines_ex(rec: Rectangle, lineThick: f32, color: Color) void;

export @symbol("DrawRectangleRounded")
fn draw_rectangle_rounded(rec: Rectangle, roundness: f32, segments: int, color: Color) void;

export @symbol("DrawRectangleRoundedLines")
fn draw_rectangle_rounded_lines(rec: Rectangle, roundness: f32, segments: int, lineThick: f32, color: Color) void;

export @symbol("DrawTriangle")
fn draw_triangle(v1: Vector2, v2: Vector2, v3: Vector2, color: Color) void;

export @symbol("DrawTriangleLines")
fn draw_triangle_lines(v1: Vector2, v2: Vector2, v3: Vector2, color: Color) void;

export @symbol("DrawTriangleFan")
fn draw_triangle_fan(points: *Vector2, pointCount: int, color: Color) void;

export @symbol("DrawTriangleStrip")
fn draw_triangle_strip(points: *Vector2, pointCount: int, color: Color) void;

export @symbol("DrawPoly")
fn draw_poly(center: Vector2, sides: int, radius: f32, rotation: f32, color: Color) void;

export @symbol("DrawPolyLines")
fn draw_poly_lines(center: Vector2, sides: int, radius: f32, rotation: f32, color: Color) void;

export @symbol("DrawPolyLinesEx")
fn draw_poly_lines_ex(center: Vector2, sides: int, radius: f32, rotation: f32, lineThick: f32, color: Color) void;


    // Splines drawing functions
export @symbol("DrawSplineLinear")
fn draw_spline_linear(points: *Vector2, pointCount: int, thick: f32, color: Color) void;

export @symbol("DrawSplineBasis")
fn draw_spline_basis(points: *Vector2, pointCount: int, thick: f32, color: Color) void;

export @symbol("DrawSplineCatmullRom")
fn draw_spline_catmull_rom(points: *Vector2, pointCount: int, thick: f32, color: Color) void;

export @symbol("DrawSplineBezierQuadratic")
fn draw_spline_bezier_quadratic(points: *Vector2, pointCount: int, thick: f32, color: Color) void;

export @symbol("DrawSplineBezierCubic")
fn draw_spline_bezier_cubic(points: *Vector2, pointCount: int, thick: f32, color: Color) void;

export @symbol("DrawSplineSegmentLinear")
fn draw_spline_segment_linear(p1: Vector2, p2: Vector2, thick: f32, color: Color) void;

export @symbol("DrawSplineSegmentBasis")
fn draw_spline_segment_basis(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, thick: f32, color: Color) void;

export @symbol("DrawSplineSegmentCatmullRom")
fn draw_spline_segment_catmull_rom(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, thick: f32, color: Color) void;

export @symbol("DrawSplineSegmentBezierQuadratic")
fn draw_spline_segment_bezier_quadratic(p1: Vector2, c2: Vector2, p3: Vector2, thick: f32, color: Color) void;

export @symbol("DrawSplineSegmentBezierCubic")
fn draw_spline_segment_bezier_cubic(p1: Vector2, c2: Vector2, c3: Vector2, p4: Vector2, thick: f32, color: Color) void;


    // Spline segment point evaluation functions, for a given t [0.0f .. 1.0f]
export @symbol("GetSplinePointLinear")
fn get_spline_point_linear(startPos: Vector2, endPos: Vector2, t: f32) Vector2;

export @symbol("GetSplinePointBasis")
fn get_spline_point_basis(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, t: f32) Vector2;

export @symbol("GetSplinePointCatmullRom")
fn get_spline_point_catmull_rom(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, t: f32) Vector2;

export @symbol("GetSplinePointBezierQuad")
fn get_spline_point_bezier_quad(p1: Vector2, c2: Vector2, p3: Vector2, t: f32) Vector2;

export @symbol("GetSplinePointBezierCubic")
fn get_spline_point_bezier_cubic(p1: Vector2, c2: Vector2, c3: Vector2, p4: Vector2, t: f32) Vector2;


    // Basic shapes collision detection functions
export @symbol("CheckCollisionRecs")
fn check_collision_recs(rec1: Rectangle, rec2: Rectangle) bool;

export @symbol("CheckCollisionCircles")
fn check_collision_circles(center1: Vector2, radius1: f32, center2: Vector2, radius2: f32) bool;

export @symbol("CheckCollisionCircleRec")
fn check_collision_circle_rec(center: Vector2, radius: f32, rec: Rectangle) bool;

export @symbol("CheckCollisionPointRec")
fn check_collision_point_rec(point: Vector2, rec: Rectangle) bool;

export @symbol("CheckCollisionPointCircle")
fn check_collision_point_circle(point: Vector2, center: Vector2, radius: f32) bool;

export @symbol("CheckCollisionPointTriangle")
fn check_collision_point_triangle(point: Vector2, p1: Vector2, p2: Vector2, p3: Vector2) bool;

export @symbol("CheckCollisionPointPoly")
fn check_collision_point_poly(point: Vector2, points: *Vector2, pointCount: int) bool;

export @symbol("CheckCollisionLines")
fn check_collision_lines(startPos1: Vector2, endPos1: Vector2, startPos2: Vector2, endPos2: Vector2, collisionPoint: *Vector2) bool;

export @symbol("CheckCollisionPointLine")
fn check_collision_point_line(point: Vector2, p1: Vector2, p2: Vector2, threshold: int) bool;

export @symbol("GetCollisionRec")
fn get_collision_rec(rec1: Rectangle, rec2: Rectangle) Rectangle;

