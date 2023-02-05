if possesskey {
	var my_spore = instance_create_depth(x,y,depth-1,obj_spore);
	state = other.state;
	instance_destroy(other);
	timer = 0;
}