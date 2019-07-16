/// @description Insert description here
// You can write your code in this editor

t+=0.0005;

// Draw Event
shader_set(shdr_ripple);
	texture_set_stage(gpu_handle_ripple_image,tex_ripple_image);
	shader_set_uniform_f(gpu_handle_t,t);
    draw_self();
shader_reset();