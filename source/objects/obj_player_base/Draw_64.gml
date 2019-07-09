
/// @description Draw player marker
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
if (player_no == global.player_1_no) { 
	draw_sprite(spr_player1_marker, 1, x - vx, y - vy -40);
}
	
	if (player_no == global.player_2_no) { 
	draw_sprite(spr_player2_marker, 1,x - vx,y - vy-40);
}
	