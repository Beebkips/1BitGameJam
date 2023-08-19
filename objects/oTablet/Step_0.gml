if (keyboard_check_pressed(vk_space))
{
	var _messageLength = string_length(drawMessage);
	if (textProgress >= _messageLength)
	{
		drawState = false;
	}
	else
	{
		if (textProgress > 2)
		{
			textProgress = _messageLength;
		}
	}
}

	if (keyboard_check_pressed(ord("E")) && point_distance(x, y, oPlayer.x, oPlayer.y) <= 20)
	{
		drawState = !drawState;	
	}
	else if (point_distance(x, y, oPlayer.x, oPlayer.y) > 20)
	{
		drawState = false;	
	}