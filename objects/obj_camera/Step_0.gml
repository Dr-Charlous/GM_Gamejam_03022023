// screen shake
if is_screen_shaking {
	x += random_range(-screen_shake_amount, screen_shake_amount);
	y += random_range(-screen_shake_amount, screen_shake_amount);
}

// Update destination
xTo = follow.x;
yTo = follow.y;

// Update object position
x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

// Update camera view
camera_set_view_pos(cam, x-view_w_half, y-view_h_half);