function outside_bounds(){
	// Horizontal bounds
	x = clamp(x, 0, room_width);
	
	// Vertical bounds
	y = clamp(y, 0, room_height);
}