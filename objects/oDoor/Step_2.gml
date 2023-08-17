if (check == 0)
{
	if (instance_exists(oPlayer))
	{
		var _px = oPlayer.x;
		var _py = oPlayer.y;
		var _dist = point_distance(x + sprite_get_width(sDoor) * 0.5, y + sprite_get_height(sDoor) * 0.5, _px, _py);
		var _df = sprite_get_number(sDoor) - 1;
	
		// Door is closed and player is not near
		if (image_index == 0 && _dist > 32)
		{
			image_speed = 0;
		}
		// Door is closed or closing and player is near
		else if (image_index != _df && _dist < 32)
		{
			image_speed = 1;
		}
		// Door is open and player is near
		else if (image_index == _df && _dist < 32)
		{
			image_speed = 0;	
		}
		// Door is opening and player is near
		else if (image_index > 0 && _dist < 32 && image_index != _df)
		{
			image_speed = 1
		}
		// Door is open and player is not near
		else if (image_index != 0  && _dist > 32)
		{
			image_speed = -1;	
		}
	}
	check = check++ mod 8;
}