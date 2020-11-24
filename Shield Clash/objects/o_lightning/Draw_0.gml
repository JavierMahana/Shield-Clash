if(!surface_exists(lighting_surface))
{
	lighting_surface = surface_create(view_wport[0], view_hport[0]);
}
	surface_set_target(lighting_surface);
	draw_clear_alpha(c_black, 0.5);
	// relacion con fuentes de luz
	with (o_light)
	{
		var movimientoX = image_xscale + random_range(-movimiento, movimiento);
		var movimientoY = image_yscale + random_range(-movimiento, movimiento);
		
		gpu_set_blendmode(bm_subtract);
		draw_sprite_ext(sprite_index, image_index, x, y, movimientoX, movimientoX, 0, c_white, 1);
		
		gpu_set_blendmode(bm_add);
		draw_sprite_ext(sprite_index, image_index, x, y, movimientoY, movimientoY, 0, color, intensidad);
		gpu_set_blendmode(bm_normal);
	}
	with (o_player)
	{
		var PlayX = global.player_x;
		var PlayY = global.player_y;
		gpu_set_blendmode(bm_subtract);
		draw_sprite_ext(sprite_index, image_index, PlayX, PlayY, image_xscale, image_yscale, image_angle, c_gray, 0.75);
		gpu_set_blendmode(bm_normal);
	}
	with (o_enemy_c)
	{
		gpu_set_blendmode(bm_subtract);
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*0.71, image_yscale, image_angle, c_gray, 0.5);
		gpu_set_blendmode(bm_normal);
	}
	with (o_shield)
	{
		gpu_set_blendmode(bm_subtract);
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 0.75);	
		gpu_set_blendmode(bm_add);
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
		gpu_set_blendmode(bm_normal);
	}
	

	// siempre se debe resetear el objetivo de superficie
	surface_reset_target();
	draw_surface(lighting_surface,0,0);
