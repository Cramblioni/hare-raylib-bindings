use types::c;

export @symbol("Draw_Pixel")
fn draw_pixel(posX: int, posY: int, color: Color) void;

export @symbol("Draw_Pixel_V")
fn draw_pixel_v(position: Vector2, color: Color) void;

export @symbol("Draw_Line")
fn draw_line(startPosX: int, startPosY: int, endPosX: int, endPosY: int, color: Color) void;

export @symbol("Draw_Line_V")
fn draw_line_v(startPos: Vector2, endPos: Vector2, color: Color) void;

export @symbol("Draw_Line_Ex")
fn draw_line_ex(startPos: Vector2, endPos: Vector2, thick: f32, color: Color) void;

export @symbol("Draw_Line_Strip")
fn draw_line_strip(points: *Vector2, pointCount: int, color: Color) void;

export @symbol("Draw_Line_Bezier")
fn draw_line_bezier(startPos: Vector2, endPos: Vector2, thick: f32, color: Color) void;

export @symbol("Draw_Circle")
fn draw_circle(centerX: int, centerY: int, radius: f32, color: Color) void;

export @symbol("Draw_Circle_Sector")
fn draw_circle_sector(center: Vector2, radius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color) void;

export @symbol("Draw_Circle_Sector_Lines")
fn draw_circle_sector_lines(center: Vector2, radius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color) void;

export @symbol("Draw_Circle_Gradient")
fn draw_circle_gradient(centerX: int, centerY: int, radius: f32, color1: Color, color2: Color) void;

export @symbol("Draw_Circle_V")
fn draw_circle_v(center: Vector2, radius: f32, color: Color) void;

export @symbol("Draw_Circle_Lines")
fn draw_circle_lines(centerX: int, centerY: int, radius: f32, color: Color) void;

export @symbol("Draw_Circle_Lines_V")
fn draw_circle_lines_v(center: Vector2, radius: f32, color: Color) void;

export @symbol("Draw_Ellipse")
fn draw_ellipse(centerX: int, centerY: int, radiusH: f32, radiusV: f32, color: Color) void;

export @symbol("Draw_Ellipse_Lines")
fn draw_ellipse_lines(centerX: int, centerY: int, radiusH: f32, radiusV: f32, color: Color) void;

export @symbol("Draw_Ring")
fn draw_ring(center: Vector2, innerRadius: f32, outerRadius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color) void;

export @symbol("Draw_Ring_Lines")
fn draw_ring_lines(center: Vector2, innerRadius: f32, outerRadius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color) void;

export @symbol("Draw_Rectangle")
fn draw_rectangle(posX: int, posY: int, width: int, height: int, color: Color) void;

export @symbol("Draw_Rectangle_V")
fn draw_rectangle_v(position: Vector2, size: Vector2, color: Color) void;

export @symbol("Draw_Rectangle_Rec")
fn draw_rectangle_rec(rec: Rectangle, color: Color) void;

export @symbol("Draw_Rectangle_Pro")
fn draw_rectangle_pro(rec: Rectangle, origin: Vector2, rotation: f32, color: Color) void;

export @symbol("Draw_Rectangle_Gradient_V")
fn draw_rectangle_gradient_v(posX: int, posY: int, width: int, height: int, color1: Color, color2: Color) void;

export @symbol("Draw_Rectangle_Gradient_H")
fn draw_rectangle_gradient_h(posX: int, posY: int, width: int, height: int, color1: Color, color2: Color) void;

export @symbol("Draw_Rectangle_Gradient_Ex")
fn draw_rectangle_gradient_ex(rec: Rectangle, col1: Color, col2: Color, col3: Color, col4: Color) void;

export @symbol("Draw_Rectangle_Lines")
fn draw_rectangle_lines(posX: int, posY: int, width: int, height: int, color: Color) void;

export @symbol("Draw_Rectangle_Lines_Ex")
fn draw_rectangle_lines_ex(rec: Rectangle, lineThick: f32, color: Color) void;

export @symbol("Draw_Rectangle_Rounded")
fn draw_rectangle_rounded(rec: Rectangle, roundness: f32, segments: int, color: Color) void;

export @symbol("Draw_Rectangle_Rounded_Lines")
fn draw_rectangle_rounded_lines(rec: Rectangle, roundness: f32, segments: int, lineThick: f32, color: Color) void;

export @symbol("Draw_Triangle")
fn draw_triangle(v1: Vector2, v2: Vector2, v3: Vector2, color: Color) void;

export @symbol("Draw_Triangle_Lines")
fn draw_triangle_lines(v1: Vector2, v2: Vector2, v3: Vector2, color: Color) void;

export @symbol("Draw_Triangle_Fan")
fn draw_triangle_fan(points: *Vector2, pointCount: int, color: Color) void;

export @symbol("Draw_Triangle_Strip")
fn draw_triangle_strip(points: *Vector2, pointCount: int, color: Color) void;

export @symbol("Draw_Poly")
fn draw_poly(center: Vector2, sides: int, radius: f32, rotation: f32, color: Color) void;

export @symbol("Draw_Poly_Lines")
fn draw_poly_lines(center: Vector2, sides: int, radius: f32, rotation: f32, color: Color) void;

export @symbol("Draw_Poly_Lines_Ex")
fn draw_poly_lines_ex(center: Vector2, sides: int, radius: f32, rotation: f32, lineThick: f32, color: Color) void;


    // Splines drawing functions
export @symbol("Draw_Spline_Linear")
fn draw_spline_linear(points: *Vector2, pointCount: int, thick: f32, color: Color) void;

export @symbol("Draw_Spline_Basis")
fn draw_spline_basis(points: *Vector2, pointCount: int, thick: f32, color: Color) void;

export @symbol("Draw_Spline_Catmull_Rom")
fn draw_spline_catmull_rom(points: *Vector2, pointCount: int, thick: f32, color: Color) void;

export @symbol("Draw_Spline_Bezier_Quadratic")
fn draw_spline_bezier_quadratic(points: *Vector2, pointCount: int, thick: f32, color: Color) void;

export @symbol("Draw_Spline_Bezier_Cubic")
fn draw_spline_bezier_cubic(points: *Vector2, pointCount: int, thick: f32, color: Color) void;

export @symbol("Draw_Spline_Segment_Linear")
fn draw_spline_segment_linear(p1: Vector2, p2: Vector2, thick: f32, color: Color) void;

export @symbol("Draw_Spline_Segment_Basis")
fn Draw_Spline_Segment_Basis(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, thick: f32, color: Color) void;

export @symbol("Draw_Spline_Segment_Catmull_Rom")
fn draw_spline_segment_catmull_rom(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, thick: f32, color: Color) void;

export @symbol("Draw_Spline_Segment_Bezier_Quadratic")
fn draw_spline_segment_bezier_quadratic(p1: Vector2, c2: Vector2, p3: Vector2, thick: f32, color: Color) void;

export @symbol("Draw_Spline_Segment_Bezier_Cubic")
fn draw_spline_segment_bezier_cubic(p1: Vector2, c2: Vector2, c3: Vector2, p4: Vector2, thick: f32, color: Color) void;


    // Spline segment point evaluation functions, for a given t [0.0f .. 1.0f]
export @symbol("Get_Spline_Point_Linear")
fn get_spline_point_linear(startPos: Vector2, endPos: Vector2, t: f32) Vector2;

export @symbol("Get_Spline_Point_Basis")
fn get_spline_point_basis(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, t: f32) Vector2;

export @symbol("Get_Spline_Point_Catmull_Rom")
fn get_spline_point_catmull_rom(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, t: f32) Vector2;

export @symbol("Get_Spline_Point_Bezier_Quad")
fn get_spline_point_bezier_quad(p1: Vector2, c2: Vector2, p3: Vector2, t: f32) Vector2;

export @symbol("Get_Spline_Point_Bezier_Cubic")
fn get_spline_point_bezier_cubic(p1: Vector2, c2: Vector2, c3: Vector2, p4: Vector2, t: f32) Vector2;


    // Basic shapes collision detection functions
export @symbol("Check_Collision_Recs")
fn check_collision_recs(rec1: Rectangle, rec2: Rectangle) bool;

export @symbol("Check_Collision_Circles")
fn check_collision_circles(center1: Vector2, radius1: f32, center2: Vector2, radius2: f32) bool;

export @symbol("Check_Collision_Circle_Rec")
fn check_collision_circle_rec(center: Vector2, radius: f32, rec: Rectangle) bool;

export @symbol("Check_Collision_Point_Rec")
fn check_collision_point_rec(point: Vector2, rec: Rectangle) bool;

export @symbol("Check_Collision_Point_Circle")
fn check_collision_point_circle(point: Vector2, center: Vector2, radius: f32) bool;

export @symbol("Check_Collision_Point_Triangle")
fn check_collision_point_triangle(point: Vector2, p1: Vector2, p2: Vector2, p3: Vector2) bool;

export @symbol("Check_Collision_Point_Poly")
fn check_collision_point_poly(point: Vector2, points: *Vector2, pointCount: int) bool;

export @symbol("Check_Collision_Lines")
fn check_collision_lines(startPos1: Vector2, endPos1: Vector2, startPos2: Vector2, endPos2: Vector2, collisionPoint: *Vector2) bool;

export @symbol("Check_Collision_Point_Line")
fn check_collision_point_line(point: Vector2, p1: Vector2, p2: Vector2, threshold: int) bool;

export @symbol("Get_Collision_Rec")
fn get_collision_rec(rec1: Rectangle, rec2: Rectangle) Rectangle;

