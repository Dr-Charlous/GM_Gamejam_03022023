/// Variables

w = display_get_gui_width();
h = display_get_gui_height();
w_half = w / 2;
h_half = h / 2;
enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}
mode = TRANS_MODE.INTRO;
intro = true;
percent = 1.2;
target = room;
target_room = noone;