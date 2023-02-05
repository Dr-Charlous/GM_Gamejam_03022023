// Wind Menu
if room == Menu || room == Credits {
	audio_sound_gain(snd_main_game, 0, 800);
	audio_sound_gain(snd_main_menu, 1, 800);
	if !audio_is_playing(snd_main_menu) {
		audio_play_sound(snd_main_menu,100,false);
		audio_sound_gain(snd_main_menu, 1, 800);
	}
}
else {
	audio_sound_gain(snd_main_menu,0,800);
	if !audio_is_playing(snd_main_game) {
		audio_play_sound(snd_main_game,100,false);
		audio_sound_gain(snd_main_game, 1, 800);
	}
}