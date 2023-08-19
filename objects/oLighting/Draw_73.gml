

if (!surface_exists(surf))
{
	var _camWidth = camera_get_view_width(view_camera[0]);
	var _camHeight = camera_get_view_height(view_camera[0]);
	surf = surface_create(_camWidth, _camHeight);
	surface_set_target(surf);
	draw_set_color(c_black);
	draw_set_alpha(0);
	draw_rectangle(0,0,_camWidth,_camHeight,false);
	surface_reset_target();
}
else
{
	var _camWidth = camera_get_view_width(view_camera[0]);
	var _camHeight = camera_get_view_height(view_camera[0]);
	var _camX = camera_get_view_x(view_camera[0]);
	var _camY = camera_get_view_y(view_camera[0]);
	surface_set_target(surf);
	draw_set_color(c_black);
	draw_set_alpha(1.0);
	draw_rectangle(0, 0, _camWidth, _camHeight, 0);
	gpu_set_blendmode(bm_subtract);
	with (pLight)
	{
		//var _sprWidth = sprite_width/2;
		var _sprHeight = sprite_height/2;
		draw_sprite_ext(sLight, 0, x - _camX, y - _sprHeight - _camY, range, range, 0, c_white, brightness);
	}
	with (oPlayer)
	{
		//var _sprWidth = sprite_width/2;
		var _sprHeight = sprite_height/2;
		draw_sprite_ext(sLight, 0, x - _camX, y - _sprHeight - _camY, 1, 1, 0, c_white, 0.2);
		if (torchEnabled)
		{
			var _rot = image_index * 45;
			draw_sprite_ext(sTorch, 0, x - _camX, y - _sprHeight - _camY, 3, 3, _rot, c_white, 1);
		}
	}
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	surface_reset_target();
	draw_surface(surf, _camX, _camY);
	
}