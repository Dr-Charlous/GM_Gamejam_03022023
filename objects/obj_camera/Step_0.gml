// set current xy to match with room size
var current_x = clamp(camera_get_view_x(camera),0,room_width-camera_get_view_width(camera));
var current_y = clamp(camera_get_view_y(camera),0,room_height-camera_get_view_height(camera));

// screen shake
if is_screen_shaking {
	current_x += random_range(-screen_shake_amount, screen_shake_amount);
	current_y += random_range(-screen_shake_amount, screen_shake_amount);
}

// update camera position
camera_set_view_pos(camera,current_x,current_y);