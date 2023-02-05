function player_animation(){
	// If Dead
	if state == PlayerState.Dead {
		// Wait some time before anim and stop loop
		sprite_index = spr_shroom_side;
		
	} else {
		// If Not Idle
		if (hspd!= 0 or vspd != 0) {
			// Face right direction
			if hspd != 0
				facing = sign(hspd);
			// Walk Animation
			if state == PlayerState.Walk {
				if (abs(hspd) >= abs(vspd))
					sprite_index = spr_shroom_side;
				else
					sprite_index = spr_shroom_updown;
			} else if state == PlayerState.Assassin {
				if (abs(hspd) >= abs(vspd)) {
					facing = -sign(hspd);
					sprite_index = spr_1eyed_corrupt_side
				}
				else {
					if (vspd >= 0)
						sprite_index = spr_1eyed_corrupt_front;
					else
						sprite_index = spr_1eyed_corrupt_back;
				}
			} else if state == PlayerState.ShockWave {
				if (abs(hspd) >= abs(vspd)) {
					facing = -sign(hspd);
					sprite_index = spr_2eyed_corrupt_side
				}
				else {
					if (vspd >= 0)
						sprite_index = spr_2eyed_corrupt_front;
					else
						sprite_index = spr_2eyed_corrupt_back;
				}
				} else if state == PlayerState.Shoot {
					if (abs(hspd) >= abs(vspd)) {
						facing = -sign(hspd);
						sprite_index = spr_3eyed_corrupt_side
				}
				else {
					if (vspd >= 0)
						sprite_index = spr_3eyed_corrupt_front;
					else
						sprite_index = spr_3eyed_corrupt_back;
				} 
			}
		} else {
			// Idle Animation
			if state == PlayerState.Walk
				sprite_index = spr_shroom_side;
			else if state == PlayerState.Assassin
				sprite_index = spr_1eyedcor_front_idle;
			else if state == PlayerState.ShockWave
				sprite_index = spr_2eyedcor_front_idle;
			else if state == PlayerState.Shoot
				sprite_index = spr_3eyedcor_front_idle;
		}
	}
}