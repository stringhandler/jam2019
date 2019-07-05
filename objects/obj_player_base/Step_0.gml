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