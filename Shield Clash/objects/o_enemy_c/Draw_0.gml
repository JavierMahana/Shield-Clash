draw_self();
if flashAlpha > 0
{
	shader_set(Flash);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, bulletDirection, flashColour, flashAlpha);
	shader_reset();
}

