function state_ai_idle(){
	// Idle State
	
	// Initialize player inputs
	init_ai_input();
	
	// Move the player
	move_ai();
	
	// Outside bounds
	outside_bounds();
	
	// Check Health
	enemy_check_health();
	
	// Animation
	ai_animation();
}