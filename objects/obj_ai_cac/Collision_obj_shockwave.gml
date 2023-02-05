if (!invincible) {
	invincible = true;
	alarm[INVINCIBILITY] = invincibility_time;
	knockback(5, point_direction(obj_player.x, obj_player.y, x, y));
	facing = 0.6;
	if health_points > 0 {
		health_points--;
		audio_play_sound(snd_hit,1,false);
	}
}