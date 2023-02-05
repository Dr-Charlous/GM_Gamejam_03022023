if (distance_to_object(obj_player)> 1 && distance_to_object(obj_ai_assa)> 1 && distance_to_object(obj_ai_cac)> 1 && distance_to_object(obj_ai_dis)> 1) {
	current_state++;
	current_state %= 2;
	if (current_state == 1)
		image_speed = 1;
	else
		image_speed = -1;
} else {
	current_state = 1;
	image_speed = 1;
}
alarm[0] = change_spd;