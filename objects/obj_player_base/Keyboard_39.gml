/// @description Move right
if (player_no == global.player_1_no) {
	
	for (i=4;i>0;i--) {
		if (place_free(x + i, y)) {
			x+=i;
			break;
		}
	}

}