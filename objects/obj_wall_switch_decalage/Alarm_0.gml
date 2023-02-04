if (distance_to_object(obj_player)> 1) {
	current_state++;
	current_state %= 2;
} else {
	current_state = 1;
	image_index = current_state;
}
alarm[0] = change_spd;