



if (shaderEnabled)
{
	var _xScale = window_get_width() / RESOLUTION_W;
	var _yScale = window_get_height() / RESOLUTION_H;
	application_surface_draw_enable(false);
	shader_set(shOrderedDither);

	draw_surface_ext(application_surface, 0, 0, _xScale, _yScale, 0, c_white, 1);

	shader_reset();
}
else
{
	application_surface_draw_enable(true);
}