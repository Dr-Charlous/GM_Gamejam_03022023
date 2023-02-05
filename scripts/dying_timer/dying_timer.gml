function dying_timer(){
	timer += 1 / (game_get_speed(gamespeed_fps));
	
	if timer > death_time {
		screen_shake(2,8);
		state = PlayerState.Dead;	
	}
}