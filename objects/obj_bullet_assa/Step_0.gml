// Move the bullet
x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);

var _dist = point_distance(xstart, ystart, x, y);
if (_dist > distance) {
	var BulletIns = instance_create_layer(x,y,"Instances",obj_ai_assa);
	with(BulletIns) {
		health_points = other.health_points
		facing = other.facing;
	}
	instance_destroy();
}