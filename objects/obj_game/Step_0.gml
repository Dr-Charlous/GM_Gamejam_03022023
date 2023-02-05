if (instance_exists(obj_player) == false) {
	x = mouse_x;
	y = mouse_y;
}

if keyboard_check_released(vk_escape) {
	var my_transition = instance_create_depth(x,y,depth,obj_transition);
			//my_transition.quit = true;
			my_transition.intro = false;
			my_transition.target = Menu;
			can_interact = false;	
}