/// @description Burn up
if !is_dead {
instance_create_layer(x, y, "Instances", obj_effect_burnt);
is_dead = true
instance_destroy()
}