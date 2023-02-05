
var _dir = point_direction(0, 0, x_target_dash, y_target_dash);
var x_target = lengthdir_x(range_view*2, _dir); 
var y_target = lengthdir_y(range_view*2, _dir);

if x < x_target_dash
	x += x_target;
else
	x -= x_target;
	
if y < y_target_dash
	y += y_target;
else
	y -= y_target;

charging = false;