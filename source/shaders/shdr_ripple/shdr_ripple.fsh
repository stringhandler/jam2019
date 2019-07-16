// Ripple Effect fragment shader

uniform sampler2D ripple_image;
uniform float t;

varying vec2 texcoord;

void main() {
	vec2 anim_offset=vec2(mod(texcoord.x+t,1.0),mod(texcoord.y+t*0.5,1.0));
	vec2 flow_vector=(texture2D(ripple_image,anim_offset).xy-0.5)*0.01;
    gl_FragColor=texture2D(gm_BaseTexture,texcoord+flow_vector);
}
