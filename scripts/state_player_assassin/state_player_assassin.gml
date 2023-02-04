function state_player_assassin(){
	// Walk State
	// Update the state
	player_state_update();
	
	// Initialize player inputs
	init_player_input();
	
	// Move the player
	move_player();
	
	// Dash
	dash();
	
	// Outside bounds
	outside_bounds();
	
	// Time Death
	dying_timer();
	
	// Animation
	player_animation();
}