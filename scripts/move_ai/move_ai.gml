function move_ai(){	
	randomize();

	if doing = 0 {
		var path = path_add();
		var range_x = irandom_range(-range_view, range_view);
		var range_y = irandom_range(-range_view, range_view);
		var _dir = point_direction(0, 0, range_x, range_y);
		var nearest_x = lengthdir_x(range_view, _dir);
		var nearest_y = lengthdir_y(range_view, _dir);
		if mp_grid_path(grid, path, x, y, nearest_x, nearest_y, 1) {
			path_start(path, spd, 0, 0);
		}
	}
}