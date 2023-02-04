function shoot(){
	// Dash
	if (actionkey) && (can_shoot) { //&& state = PlayerState.Assassin
		is_shooting = true;
		can_shoot = false;
		instance_create_depth(x,y,depth,obj_bullet);
		alarm[CAN_ACTION] = shoot_time;
	} else {
		is_shooting = false;	
	}
}