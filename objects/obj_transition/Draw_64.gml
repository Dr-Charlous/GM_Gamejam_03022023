/// Draw bars

if (mode != TRANS_MODE.OFF)
{
	draw_set_color(c_black);
	draw_set_alpha(1);
	if (intro)
		draw_rectangle(0,0,percent*w,h,false);
	else
		draw_rectangle(0,0,w-(percent*w)+60,h,false);
}