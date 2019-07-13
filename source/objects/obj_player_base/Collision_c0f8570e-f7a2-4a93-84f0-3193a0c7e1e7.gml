/// @description Burn up
if !is_dead {
instance_create_layer(x, y, "Instances", obj_effect_burnt);
is_dead = true
visible = false
instance_create_layer(x,y, "Instances", obj_button_restart);



}