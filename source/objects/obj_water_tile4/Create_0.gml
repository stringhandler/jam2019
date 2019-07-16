/// @description Insert description here
// You can write your code in this editor

t=0.0;

gpu_handle_t=shader_get_uniform(shdr_ripple,"t");
gpu_handle_ripple_image=shader_get_sampler_index(shdr_ripple, "ripple_image");
tex_ripple_image=sprite_get_texture(spr_ripple_normal_map, 0);
