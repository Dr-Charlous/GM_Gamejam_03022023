
var path = path_add();

var _dir = point_direction(0, 0, x_target_dash, y_target_dash);
x_target_dash = lengthdir_x(spd, _dir);
y_target_dash = lengthdir_y(spd, _dir);

if mp_grid_path(grid, path, x, y, x_target_dash, y_target_dash, 1) {
	path_start(path, spd*10, 0, 0);
}
charging = false;