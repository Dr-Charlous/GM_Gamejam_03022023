function shoot(){
	// Shoot
	if (actionkey) && (can_shoot) { //&& state = PlayerState.Assassin
		is_shooting = true;
		can_shoot = false;
		instance_create_depth(x,y,depth,obj_bullet);
		audio_play_sound(snd_bullet,1,false);
		alarm[CAN_ACTION] = shoot_time;
	} else {
		is_shooting = false;	
	}
	
	if gamepad_is_connected(gamepad_id) {
		if round(gamepad_axis_value(gamepad_id, gp_axisrh)) != 0 or round(gamepad_axis_value(gamepad_id, gp_axisrv)) != 0 {
			// The player is currently holding the stick
			dir = point_direction(x, y, x+gamepad_axis_value(gamepad_id, gp_axisrh), y+gamepad_axis_value(gamepad_id, gp_axisrv));
			my_mouse.sprite_index = spr_mouse;
		} else {
			// The player is not holding the stick
			my_mouse.sprite_index = noone;
		}
	} else {
		dir = point_direction(x, y, mouse_x, mouse_y);
		my_mouse.sprite_index = spr_mouse;
	}
}