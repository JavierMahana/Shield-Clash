draw_self();
if flashAlpha > 0
{
	shader_set(Flash);
	draw_sprite_ext(_idleSrite, image_index, x, y, image_xscale, image_yscale, bulletDirection, flashColour, flashAlpha);
	shader_reset();
}
