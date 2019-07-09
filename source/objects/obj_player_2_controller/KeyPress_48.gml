/// @description Switch character
	global.player_2_no ++;
	if (global.player_1_no == global.player_2_no) {
		global.player_2_no++;
	}
	if (global.player_2_no > 3) {
	 global.player_2_no := 1
	}
	if (global.player_1_no == global.player_2_no) {
		global.player_2_no++;
	}

