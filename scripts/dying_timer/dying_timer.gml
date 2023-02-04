function dying_timer(){
	timer += 1;
	
	if timer > death_time {
		state = PlayerState.Dead;	
	}
}