/// @description Move left
// You can write your code in this editor
with (global.sprites[global.player_1_no - 1]) {
	image_xscale = -1
	direction=180
	
	// Can't be more than a full screen away from any other player
	var dist_to_1 = obj_player1.x  - x;
	var dist_to_2=  obj_player2.x - x;
	var dist_to_3 = obj_player3.x - x;
	
	var max_dist = max(dist_to_1, dist_to_2, dist_to_3);
	//var min_dist = min(dist_to_1, dist_to_2, dist_to_3);
	if max_dist <= camera_get_view_width(view_camera[0])- 240 {
	
	var s = hor_speed;
	
	if (is_pushing && direction==0) {
		//s = 2;
		var pushing_against = instance_place(x-1, y, obj_solid_tile_base);
		//var pushing_against = instance_place(x+1, y, other);
		
	}
	
	var actual_s = 0;
	if (pushing_against == noone) {
		for (i=s;i>0;i--) {
			if (place_free(x - i, y)) {
				x-=i;
				break;
			}
		}
	} else {
		s = ceil(hor_speed / 2);
		for (var i=s;i>0;i--) {
			
			with(pushing_against) {
				if (place_free(x - i, y)) {
					x-=i;
					other.x-=i;
					break;
				}
			}
		
		}
		//x-=actual_s;
	}
	
	
	
}
}
