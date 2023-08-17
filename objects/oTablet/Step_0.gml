lerpProgress += (1- lerpProgress) / 50;
textProgress += global.textSpeed;

x1 = lerp(x1, x1Target, lerpProgress);
x2 = lerp(x2, x2Target, lerpProgress);

if (keyboard_check_pressed(vk_space))
{
	var _messageLength = string_length(drawMessage);
	if (textProgress >= _messageLength)
	{
		instance_destroy();
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