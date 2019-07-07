/// @description Set initial values
global.player_1_no := 1;

global.sprites = [obj_player1, obj_player2, obj_player3];
camera_set_view_target(view_camera[0], global.sprites[global.player_1_no - 1]);