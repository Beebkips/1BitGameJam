function DrawTextWithOutline (_x, _y, _string)
{
	draw_set_colour(c_black);
	draw_set_font(fText);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	draw_text(_x + 1, _y, _string);
	draw_text(_x - 1, _y, _string);
	draw_text(_x, _y + 1, _string);
	draw_text(_x, _y - 1, _string);
	draw_set_colour(c_white);
	draw_text(_x, _y, _string);
}