/// @description Gravity
if (jump > 0) {
	
	if place_free(x, y-jump) {
		y-=jump
	}
	jump -=1
} else {
	
for (i=15;i>0;i--){
	if place_free(x, y+i) {
		y=y+i
		break;
	}
}
}

// check for walls
if direction == 0 && !place_free(x + 1, y) {
	is_pushing = true
	sprite_index = pushing_spr
}
else if direction == 180 && !place_free(x -1, y) {
	is_pushing = true
	sprite_index = pushing_spr
}
else {
	is_pushing = false
	sprite_index = walking_spr
}

