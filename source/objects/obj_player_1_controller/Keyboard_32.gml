/// @description Jump
/// if on the ground, jump 
with global.sprites[global.player_1_no - 1] {
	
	if (!place_free(x, y+1)){
		jump := 20
	}
}