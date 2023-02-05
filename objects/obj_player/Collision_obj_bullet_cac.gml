if other.tag = "enemy_cac" {
	timer += 1;
	screen_shake(0.3,4);
	audio_play_sound(snd_hit_player,1,false);
}