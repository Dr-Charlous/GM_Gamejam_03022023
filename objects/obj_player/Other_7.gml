if state == PlayerState.Dead {
	image_speed = 0;
	image_index = image_number - 1;
	my_transition = instance_create_depth(x,y,depth,obj_transition);
	my_transition.intro = false;
}