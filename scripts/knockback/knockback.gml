function knockback(strength, dir){
	// Instance hit is running the script
	//var dir = point_direction(other.target.x, other.target.y, x, y);
		repeat(strength) {
			if !place_meeting(x + lengthdir_x(1, dir), y+ lengthdir_y(1, dir), obj_wall){
				x += lengthdir_x(1, dir);
				y += lengthdir_y(1, dir);
			}
		}
}