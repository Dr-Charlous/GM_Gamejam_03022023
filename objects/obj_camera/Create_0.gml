// create camera
camera = camera_create_view(0,0,camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]),0,-1,-1,-1,128,128);
view_set_camera(0, camera);

// screen shake
is_screen_shaking = false;
screen_shake_amount_initial = 3;
screen_shake_amount = screen_shake_amount_initial;

/// Set up Camera
cam = view_camera[0];
follow = obj_player;
view_w_half = camera_get_view_width(cam) / 2;
view_h_half = camera_get_view_height(cam) / 2;
xTo = xstart;
yTo = ystart;

// Fade
instance_create_depth(0, 0, depth, obj_transition);