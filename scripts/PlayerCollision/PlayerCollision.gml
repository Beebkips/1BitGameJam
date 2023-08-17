function PlayerCollision ()
{
	var _collision = false;
	var _nudge = P_BOUND_SIZE;
	
	var _right = tilemap_get_at_pixel(tileColMap, x + hSpeed + _nudge, y + vSpeed)
	var _bottom = tilemap_get_at_pixel(tileColMap, x + hSpeed, y + vSpeed + _nudge)
	var _left = tilemap_get_at_pixel(tileColMap, x + hSpeed - _nudge, y + vSpeed)
	var _top = tilemap_get_at_pixel(tileColMap, x + hSpeed, y + vSpeed - _nudge)
	
	if (_bottom && (y + _nudge) mod 16 < _nudge + vSpeed)
	{
		//show_debug_message("collision diff: " + string((y + vSpeed + _nudge) mod 16))
		//show_debug_message("playerY: " + string(y))
		//show_debug_message("collisionY: " + string(y + vSpeed + _nudge))
		//show_debug_message("hSpeed: " + string(hSpeed) + ",vSpeed: " + string(vSpeed))
		y -= (y + _nudge) mod 16;
		//show_debug_message("new playerY: " + string(y))
		vSpeed = 0;
		_collision = true;
	}
	
	if(_right && (x + _nudge) mod 16 < _nudge + hSpeed)
	{
		x -= (x + _nudge) mod 16;
		hSpeed = 0;
		_collision = true;
	}
	
	if(_top && (y - _nudge) mod 16 > _nudge + vSpeed)
	{
		y += (TILE_SIZE - 1) - (y - _nudge) mod 16;
		vSpeed = 0;
		_collision = true;
	}
	
	if(_left && (x - _nudge) mod 16 > _nudge + hSpeed)
	{
		x += (TILE_SIZE - 1) - (x - _nudge) mod 16;
		hSpeed = 0;
		_collision = true;
	}
	
	x += hSpeed;
	y += vSpeed;
	
	return _collision;
}