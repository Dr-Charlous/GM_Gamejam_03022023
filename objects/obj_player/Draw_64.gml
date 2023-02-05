///@description Player UI

// Life
draw_healthbar(80,20,500,80,(timer/death_time)*100,c_black,c_red,c_red,0,true,false);

// Current enemy
draw_sprite_ext(spr_current_enemy, state, 20,20,2,2,0,c_white,1);

// Mini Map