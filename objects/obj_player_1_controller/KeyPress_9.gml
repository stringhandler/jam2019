/// @description Switch character
	global.player_1_no ++;
	if (global.player_1_no == global.player_2_no) {
		global.player_1_no++;
	}
	if (global.player_1_no > 3) {
	 global.player_1_no := 1
	}
	if (global.player_1_no == global.player_2_no) {
		global.player_1_no++;
	}
	
	camera_set_view_target(view_camera[0], global.sprites[global.player_1_no - 1]);

