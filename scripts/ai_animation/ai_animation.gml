function ai_animation(){
	// If Dead
	if state == AiState.Dead {
		// Wait some time before anim and stop loop
		sprite_index = spr_player_dead;
		
	} else {
		// If Not Idle
		if (hspd!= 0 or vspd != 0) {
			// Face right direction
			if hspd != 0
				facing = sign(hspd);
			// Walk Animation
			sprite_index = spr_player_walk;
			state = AiState.Walk; 
		} else {
			// Idle Animation
			sprite_index = spr_player_idle;
			state = AiState.Idle;
		}
	}
}