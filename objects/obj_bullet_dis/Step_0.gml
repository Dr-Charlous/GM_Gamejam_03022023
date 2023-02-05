// Move the bullet
x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);

var _dist = point_distance(xstart, ystart, x, y);
if (_dist > distance)
	instance_change(obj_bullet_explosion, false);