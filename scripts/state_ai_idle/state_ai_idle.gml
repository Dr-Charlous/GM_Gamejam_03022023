function state_ai_idle(){
	// Idle State
	
	// Initialize player inputs
	init_ai_input();
	
	// Move the player
	move_ai();
	
	// Outside bounds
	outside_bounds();
	
	// Animation
	ai_animation();
}