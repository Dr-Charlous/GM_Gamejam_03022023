function dash(){
	// Dash
	if (actionkey) && (can_dash) && (hspd !=0 || vspd != 0) { //&& state = PlayerState.Assassin
		is_dashing = true;
		audio_play_sound(snd_attack_assassin,1,false);
		if abs(vspd) <= abs(hspd) 
			vertical_facing *= 0.66;
		else
			facing *= 0.66;
		can_dash = false;
		spd = dash_spd;
		alarm[DASH_STOP] = dash_distance;
	} else {
		is_dashing = false;	
	}
}