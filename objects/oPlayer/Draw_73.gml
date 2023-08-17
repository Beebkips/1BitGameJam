draw_sprite_ext
(
	sprite_index,
	image_index,
	floor(x),
	floor(y),
	image_xscale,
	image_yscale,
	image_angle,
	image_blend,
	image_alpha
)

if (debugBound)
{
	var _nudge = P_BOUND_SIZE
	draw_sprite(sTest, 0, x + hSpeed + _nudge, y + vSpeed)
	draw_sprite(sTest, 0, x + hSpeed, y + vSpeed + _nudge)
	draw_sprite(sTest, 0, x + hSpeed - _nudge, y + vSpeed)
	draw_sprite(sTest, 0, x + hSpeed , y + vSpeed - _nudge)
}