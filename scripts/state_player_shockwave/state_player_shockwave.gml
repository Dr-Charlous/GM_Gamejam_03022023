function state_player_shockwave(){
	// Walk State
	// Update the state
	player_state_update();
	
	// Initialize player inputs
	init_player_input();
	
	// Move the player
	move_player();
	
	// Shockwave
	shockwave();
	
	// Outside bounds
	outside_bounds();
	
	// Time Death
	dying_timer();
	
	// Animation
	player_animation();
}