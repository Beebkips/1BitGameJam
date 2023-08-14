var _u_pos = u_pos;

with(oLight)
{
	shader_set(shLight);
	shader_set_uniform_f(_u_pos, x, y);
	draw_rectangle(0,0,480,270,0);
	shader_reset();
}