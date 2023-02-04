/// @description Draw Player
draw_sprite_ext(sprite_index, image_index, x, y, facing, 1, 0, c_white, 1);
draw_circle(x,y,range_view,true);
draw_circle(x,y,range_attack,true);

if (path_exists(path_index)) {
	draw_path(path_index, 0, 0, true);
}