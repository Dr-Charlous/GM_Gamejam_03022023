var _dir = point_direction(0, 0, x_target_dash, y_target_dash);
var x_target = lengthdir_x(range_view, _dir); 
var y_target = lengthdir_y(range_view, _dir);

if x < x_target_dash {
	x += x_target;
	if instance_position(x,y,obj_wall)
		x -= x_target;
} else {
	x -= x_target;
	if instance_position(x,y,obj_wall)
		x += x_target;
}
	
if y < y_target_dash {
	y += y_target;
	if instance_position(x,y,obj_wall)
		y -= x_target;
} else {
	y -= y_target;
	if instance_position(x,y,obj_wall)
		y += x_target;
}
	
charging = false;