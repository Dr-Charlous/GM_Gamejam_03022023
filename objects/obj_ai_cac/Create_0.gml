// Player Variables
spd = 1;
hspd = x;
vspd = y;
facing = 1;
range_view = 175;
range_attack = 50;
alarm_set(0,120);

// HP
health_points = 3;
invincible = false;
invincibility_time = 20;

grid = mp_grid_create(0, 0, room_width div 16, room_height div 16, 64, 64);
mp_grid_add_instances(grid, obj_wall, false);
mp_grid_add_instances(grid, obj_wall_switch, false);