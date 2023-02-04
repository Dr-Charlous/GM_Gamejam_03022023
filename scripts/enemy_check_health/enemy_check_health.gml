function enemy_check_health(){
	if (health_points <= 0) {
		state = AiState.Dead;	
	}
}