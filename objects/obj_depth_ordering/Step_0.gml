/// @description Reduce player y
with (obj_depth_elements) {
	depth = -max(0, bbox_bottom);
	
	if object_index == (obj_wall_switch) || object_index == (obj_wall_switch_decalage) {
		if current_state = 1 {
			depth = 200;	
		}
	}
}

// Tiles Layer
// Foreground
//if layer_exists("Sprites_Foreground")
//	layer_depth("Sprites_Foreground", -500);
//if layer_exists("Black")
//	layer_depth("Black", -550);
//if layer_exists("Tileset_Foreground")
//	layer_depth("Tileset_Foreground", -600);
if layer_exists("Infos")
	layer_depth("Infos", -700);
	

// Background
//if layer_exists("Sprites_Background")
//	layer_depth("Sprites_Background", 500);
//if layer_exists("Tileset_Background")
//	layer_depth("Tileset_Background", 600);
