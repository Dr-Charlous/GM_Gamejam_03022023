function init_player_input() {
	get_gamepad_id();
	var last_button_pressed = 0; // 0 -> Keyboard
								 // 1 -> Controller
	
	if gamepad_is_connected(gamepad_id) {
		// Controller Support
		hspd = round(gamepad_axis_value(gamepad_id, gp_axislh));
		vspd = round(gamepad_axis_value(gamepad_id, gp_axislv));
		actionkey =  mouse_check_button(mb_left) || gamepad_button_check_pressed(gamepad_id ,gp_shoulderr) || gamepad_button_check_pressed(gamepad_id ,gp_shoulderl); // dash key
		
		// Set last button controller
		if (gp_axislh || gp_axislv)
			last_button_pressed = 1;
	} else {
		actionkey = mouse_check_button(mb_left);
	}
	// Keyboard Support
	var rkey = keyboard_check(vk_right) or keyboard_check(ord("D")); // WASD
	var lkey = keyboard_check(vk_left) or keyboard_check(ord("Q"));
	var ukey = keyboard_check(vk_up) or keyboard_check(ord("Z"));
	var dkey = keyboard_check(vk_down) or keyboard_check(ord("S"));
	
	// Set last button keyboard
	if (rkey || lkey || ukey || dkey) 
		last_button_pressed = 0;
	if (last_button_pressed == 0) {
		hspd = (rkey - lkey);
		vspd = (dkey - ukey);
	}

	if gamepad_is_connected(gamepad_id) {
		my_mouse.x = x + gamepad_axis_value(gamepad_id, gp_axisrh) * mouse_distance;
		my_mouse.y = y + gamepad_axis_value(gamepad_id, gp_axisrv) * mouse_distance;
	} else {
		my_mouse.x = mouse_x;
		my_mouse.y = mouse_y;
	}
}