function player_state_update(){
	
	if (state != PlayerState.Dead)// Set last state
		last_state = state;
	
	state = last_state;
	
	
}