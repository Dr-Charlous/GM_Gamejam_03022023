// Check if button not already pressed
if obj_game.can_interact {
	// Touch mouse
	if distance_to_point(obj_mouse.x ,obj_mouse.y) <= 0 {
		selected = true;
	} else {
		selected = false;
	}

	// Show Text
	if (selected) {
		col = #14182E;
		scale_x = 1.2;
		if (mouse_check_button(mb_left)) {
			// FADE
			var my_transition = instance_create_depth(x,y,depth,obj_transition);
			my_transition.quit = true;
			my_transition.intro = false;
			obj_game.can_interact = false;
		}
	} else {
		col = c_white;
		scale_x = 1;
	}

	scale_y = scale_x;
} else {
	col = c_white;
	scale_x = 1;	
}