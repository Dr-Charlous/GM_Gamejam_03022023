if other.current_state == 0 {
	var BulletIns = instance_create_layer(x,y,"Instances",obj_ai_assa);
	with(BulletIns) {
		health_points = other.health_points
		facing = other.facing;
	}
	instance_destroy();
}