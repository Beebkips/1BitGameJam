if (drawState)
{
	draw_sprite_stretched(sBox, 0, x1, y1, x2 - x1, y2 - y1);
	draw_set_font(fText);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	
	var _padding = 10;
	textProgress += global.textSpeed;
	var _print = string_copy(drawMessage, 1, textProgress);
	draw_text_ext(x1 + _padding, y1 + _padding, _print, string_height(_print), x2 - x1);
}