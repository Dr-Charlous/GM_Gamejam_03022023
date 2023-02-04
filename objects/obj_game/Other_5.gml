///@description Keep Player Last State

if (instance_exists(obj_player)) {
	if obj_player.state != PlayerState.Dead
		last_player_state = obj_player.state;
}