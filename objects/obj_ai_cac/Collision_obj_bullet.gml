if (!invincible) {
	invincible = true;
	alarm[INVINCIBILITY] = invincibility_time;
	with (other) bullet_die();
	screen_shake(0.3,3);
	facing = 0.6;
	knockback(6, other.direction);
	if health_points > 0 {
		health_points--;
		audio_play_sound(snd_hit,1,false);
	}
}