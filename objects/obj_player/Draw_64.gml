///@description Player UI

// Life
draw_healthbar(140,40,500,80,(timer/death_time)*100,c_black,c_white,c_white,0,true,false);

// Current enemy
draw_sprite_ext(spr_current_enemy, state, 30,30,3.5,3.5,0,c_white,1);

// Mini Map