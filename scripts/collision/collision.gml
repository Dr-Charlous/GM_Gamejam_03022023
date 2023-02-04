function collision(element_to_collide){
	var _target_x = round(x);
	var _target_y = round(y);

	x = xprevious;
	y = yprevious;

	// get distance we want to move
	var dir_x = abs(_target_x - x);
	var dir_y = abs(_target_y - y);

	repeat(dir_x) 
	{
		if (!place_meeting(x + sign(_target_x - x), y, element_to_collide))
			x += sign(_target_x - x);
	}

	repeat(dir_y) 
	{
		if (!place_meeting(x, y + sign(_target_y - y), element_to_collide))
			y += sign(_target_y - y);
	}
}