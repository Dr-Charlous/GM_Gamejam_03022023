// Player Variables
spd = 1;
hspd = 0;
vspd = 0;
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

// States
enum AiState {
	Idle,
	Walk,
	Dead
}

state = AiState.Idle;

state_array[AiState.Idle] = state_ai_idle;
state_array[AiState.Walk] = state_ai_walk;
state_array[AiState.Dead] = state_ai_dead;