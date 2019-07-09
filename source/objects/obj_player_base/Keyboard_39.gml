/// @description Move right
if (player_no == global.player_2_no) {
	image_xscale = 1;
	direction=0
		
	// Can't be more than a full screen away from any other player
	var dist_to_1 = obj_player1.x  - x;
	var dist_to_2=  obj_player2.x - x;
	var dist_to_3 = obj_player3.x - x;
	
	//var max_dist = max(dist_to_1, dist_to_2, dist_to_3);
	var min_dist = min(dist_to_1, dist_to_2, dist_to_3);
	if min_dist >= -camera_get_view_width(view_camera[0]) + 240 {
	for (i=4;i>0;i--) {
		if (place_free(x + i, y)) {
			x+=i;
			break;
		}
	}

	}
}