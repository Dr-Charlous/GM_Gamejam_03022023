function state_player_idle(){
	// Idle State
	
	// Initialize player inputs
	init_player_input();
	
	// Move the player
	move_player();
	
	// Outside bounds
	outside_bounds();
	
	// Animation
	player_animation();
}