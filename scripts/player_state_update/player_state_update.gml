function player_state_update(){
	
	if (state == PlayerState.Walk || state == PlayerState.Assassin 
		|| state == PlayerState.ShockWave || state == PlayerState.Shoot)// Set last state
		last_state = state;
	
	if (hspd!= 0 or vspd != 0) {
		state = last_state; 
	} else {
		state = PlayerState.Idle;
	}
	
	
}