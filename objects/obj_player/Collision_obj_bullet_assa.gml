if other.tag = "enemy_assa" and other.can_hurt {
	timer += 1;
	screen_shake(0.3,4);
	other.can_hurt = false;
}