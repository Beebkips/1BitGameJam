// Draw item pick ups

// show_debug_message("Here")

if (array_length(global.playerKeyItems) > 0)
{
	for (var _i = 0; _i < array_length(global.playerKeyItems); _i++)
	{
		draw_sprite(sItemBoxUI, 0, RESOLUTION_W - (_i * 30) - 28, RESOLUTION_H - 28);
		draw_sprite(sKeyItems, global.playerKeyItems[_i], RESOLUTION_W - (_i * 30) - 24, RESOLUTION_H - 24);
	}
}

for (var _i = 0; _i < array_length(global.playerHasItem); _i++)
{
	var _x = 4
	var _y = ((_i - 1) * 30)
	var _n = 4
	switch (_i)
	{
		case (ITEM.FLASHLIGHT):
		{

			draw_sprite(sItemBoxUI, 0, _n, _y + _n);
			draw_sprite(sAmmo, _i, _n * 2, _y + _n * 2);

			DrawTextWithOutline(_x + sprite_get_width(sItemBoxUI), _y  + sprite_get_width(sItemBoxUI) * 0.5, "x" + string(global.playerAmmo[_i]))
			
		} break;
		case (ITEM.WEAPON):
		{
			draw_sprite(sItemBoxUI, 0, _n, _y + _n);
			draw_sprite(sAmmo, _i, _n * 2, _y + _n * 2);
			
			DrawTextWithOutline(_x + sprite_get_width(sItemBoxUI), _y  + sprite_get_width(sItemBoxUI) * 0.5, "x" + string(global.playerAmmo[_i]))
		} break;
		default: break;
	}
}