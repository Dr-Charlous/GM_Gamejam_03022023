if (other.spd == other.dash_spd) {
	if (!invincible) {
		invincible = true;
		alarm[INVINCIBILITY] = invincibility_time;
		health_points--;
	}
}