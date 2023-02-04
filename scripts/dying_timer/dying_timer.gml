function dying_timer(){
	timer += 1 / (game_get_speed(gamespeed_fps));
	
	if timer > death_time {
		state = PlayerState.Dead;	
	}
}