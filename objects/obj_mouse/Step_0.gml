if (instance_exists(obj_player) == false) {
	x = mouse_x;
	y = mouse_y;
}
//get_gamepad_id();

//if gamepad_button_check_pressed(gamepad_id, gp_axislv) {
//	x = 224;
//	y = y_pos[current_y];
//	current_y = (current_y + 1) % 3;
//}

if mouse_check_button_pressed(mb_left) {
	image_speed = 1;
}