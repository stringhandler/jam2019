/// @description Move left
// You can write your code in this editor
if (player_no == global.player_1_no) {
	image_xscale = -1
	for (i=4;i>0;i--) {
		if (place_free(x - i, y)) {
			x-=i;
			break;
		}
	}
}