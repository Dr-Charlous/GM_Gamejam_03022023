// Debug
if (keyboard_check_pressed(ord("R")))
	room_restart();
	
// Auto Set States
if (keyboard_check_pressed(ord("K")))
	obj_player.state = PlayerState.Assassin;
	
if (keyboard_check_pressed(ord("O")))
	obj_player.state = PlayerState.Walk;
	
if (keyboard_check_pressed(ord("I")))
	obj_player.state = PlayerState.Idle;
	
if (keyboard_check_pressed(ord("P")))
	obj_player.state = PlayerState.Dead;