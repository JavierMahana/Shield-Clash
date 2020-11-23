if(!surface_exists(lighting_surface))
{
	lighting_surface = surface_create(view_wport[0], view_hport[0]);
}
	surface_set_target(lighting_surface);
	draw_clear_alpha(c_black, 0.5);
	// relacion con fuentes de luz
	with (o_lightSource0)
	{
		var MovimientoX = image_xscale + random_range(-Movimiento, Movimiento);
		var MovimientoY = image_yscale + random_range(-Movimiento, Movimiento);
		
		gpu_set_blendmode(bm_subtract);
		draw_sprite_ext(sprite_index, image_index, x, y, MovimientoX, MovimientoY, 0, c_white, 1);
		
		gpu_set_blendmode(bm_add);
		draw_sprite_ext(sprite_index, image_index, x, y, MovimientoX, MovimientoY, 0, color, intensity);
		
		gpu_set_blendmode(bm_normal);
	}

	// siempre se debe resetear el objetivo de superficie
	surface_reset_target();
	draw_surface(lighting_surface,0,0);
