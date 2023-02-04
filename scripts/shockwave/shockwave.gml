function shockwave(){
	// Dash
	if (actionkey) && (can_shockwave) { //&& state = PlayerState.Assassin
		is_shockwaving = true;
		can_shockwave = false;
		instance_create_depth(x,y,depth,obj_shockwave);
		alarm[CAN_ACTION] = shockwave_time;
		screen_shake(0.4,2);
	} else {
		is_shockwaving = false;	
	}
}