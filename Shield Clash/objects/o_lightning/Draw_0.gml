if(!surface_exists(lighting_surface))
{
	lighting_surface = surface_create(view_wport[0], view_hport[0]);
}

surface_set_target(lighting_surface);
draw_clear_alpha(c_black,0.65);

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
		if (!global.player_usingShield)
		{
			gpu_set_blendmode(bm_subtract);
			draw_sprite_ext(Light, image_number, x, y, image_xscale*0.5, image_yscale*0.5, 0, c_white, 1 );
			gpu_set_blendmode(bm_add);
			draw_sprite_ext(Light, image_index, x, y, image_xscale*0.25, image_yscale*0.25, 0, c_white, 0.75);
			gpu_set_blendmode(bm_normal);
		}
		else
		{
			gpu_set_blendmode(bm_subtract);
			draw_sprite_ext(Light, image_number, x, y, image_xscale*0.5, image_yscale*0.5, 0, c_white, 1 );
			gpu_set_blendmode(bm_add);
			draw_sprite_ext(Light, image_index, x, y, image_xscale*0.5, image_yscale*0.5, 0, c_silver, 1);
			draw_sprite_ext(Light, image_index, x, y, image_xscale*0.5, image_yscale*0.5, 0, c_blue, 0.5);
			gpu_set_blendmode(bm_normal);
		}

	}
	with (o_enemy_c)
	{
		#region enemigos
		gpu_set_blendmode(bm_subtract);
		draw_sprite_ext(Light, image_number, x, y, image_xscale*0.75, image_yscale*0.75, 0, c_white, 0.8);
		with (o_arquero)
		{
			gpu_set_blendmode(bm_add);
			draw_sprite_ext(Light, image_index, x, y, image_xscale*0.75, image_yscale*0.75, 0, c_ltgray, 0.15);
			gpu_set_blendmode(bm_normal);
		}
		with (o_ballestero)
		{
			gpu_set_blendmode(bm_add);
			draw_sprite_ext(Light, image_index, x, y, image_xscale*0.75, image_yscale*0.75, 0, c_teal,0.15);
			gpu_set_blendmode(bm_normal);
		}
		with (o_conjurer)
		{
			gpu_set_blendmode(bm_add);
			draw_sprite_ext(Light, image_index, x, y, image_xscale*1.8, image_yscale*1.8, 0, c_purple,0.15);
			gpu_set_blendmode(bm_normal);
		}
		with (o_lancero)
		{
			gpu_set_blendmode(bm_add);
			draw_sprite_ext(Light, image_index, x, y, image_xscale*0.75, image_yscale*0.75, 0, c_yellow,0.15);
			gpu_set_blendmode(bm_normal);
		}
		with (o_Lowmage)
		{
			gpu_set_blendmode(bm_add);
			draw_sprite_ext(Light, image_index, x, y, image_xscale*1.2, image_yscale*1.2, 0, c_green,0.15);
			gpu_set_blendmode(bm_normal);
		}
		gpu_set_blendmode(bm_normal);
		
	}
	
	#endregion
	with (o_shield)
	{
		gpu_set_blendmode(bm_subtract);
		draw_sprite_ext(LightShield, image_index, x, y, image_xscale, image_yscale*1.75, image_angle, c_white, 1);
		
		gpu_set_blendmode(bm_add);			
		draw_sprite_ext(LightShield2, image_number, x, y, image_xscale*4, image_yscale*0.15, image_angle, c_blue, 0.75 );
		draw_sprite_ext(LightShield, image_number, x, y, image_xscale*1.1, image_yscale*0.15, image_angle, c_white, 1 );
		draw_sprite_ext(LightShield, image_number, x, y, image_xscale, image_yscale*1.75, image_angle, c_navy, 1 );
		gpu_set_blendmode(bm_normal);	
	}
		with (o_enemyBullet)
	{
		#region enemyBullets
		gpu_set_blendmode(bm_subtract);
		draw_sprite_ext(Light, image_number, x, y, image_xscale*0.5, image_yscale*0.5, 0, c_white, 1 );
		with (o_conjurerBullet)
		{
			gpu_set_blendmode(bm_add);	
			draw_sprite_ext(Light, image_index, x, y, image_xscale*0.5, image_yscale*0.5, 0, c_purple, 0.1);
			gpu_set_blendmode(bm_normal);
		}
		with (o_lanceroBullet)
		{
			gpu_set_blendmode(bm_add);	
			draw_sprite_ext(Light, image_index, x, y, image_xscale*0.5, image_yscale*0.5, 0, c_yellow,0.1);
			gpu_set_blendmode(bm_normal);
		}
		with (o_LowmageBullet)
		{
			gpu_set_blendmode(bm_add);	
			draw_sprite_ext(Light, image_index, x, y, image_xscale*0.5, image_yscale*0.5, 0, c_green,0.1);
			gpu_set_blendmode(bm_normal);
		}

		gpu_set_blendmode(bm_normal);	
		
	}
	#endregion
		with (o_playerBullet)
	{
		gpu_set_blendmode(bm_subtract);
		draw_sprite_ext(Light, image_number, x, y, image_xscale, image_yscale, 0, c_white, 1 );
		gpu_set_blendmode(bm_add);	
		draw_sprite_ext(Light, image_number, x, y, image_xscale, image_yscale, 0, c_blue, 0.5 );
		draw_sprite_ext(LightBullet, image_number, x, y, image_xscale, image_yscale, 0, c_white, 1 );
		draw_sprite_ext(LightBullet, image_number, x, y, image_xscale*0.75, image_yscale*0.75, 0, c_blue, 0.25 );
		gpu_set_blendmode(bm_normal);		
	}

		with (o_salvavidasDrop)
	{
		gpu_set_blendmode(bm_subtract);
		draw_sprite_ext(sprite_index, image_number, x, y, image_xscale, image_yscale, 0, c_white, 0.5 );
		gpu_set_blendmode(bm_add);	
		draw_sprite_ext(sprite_index, image_number, x, y, image_xscale, image_yscale, 0, c_white, 0.5 );
		gpu_set_blendmode(bm_normal);	
	}
		with (o_spawner)
	{
		gpu_set_blendmode(bm_subtract);
		draw_sprite_ext(Light, image_number, x, y, image_xscale*0.5, image_yscale*0.5, 0, c_white, 1 );
		gpu_set_blendmode(bm_add);	
		draw_sprite_ext(Light, image_number, x, y, image_xscale*1.5, image_yscale*1.5, 0, c_red, 0.75 );
		draw_sprite_ext(sprite_index, image_number, x, y, image_xscale*0.5, image_yscale*0.5, 0, c_red, 1 );
		gpu_set_blendmode(bm_normal);	
	}
		with (o_corpse)
	{
		gpu_set_blendmode(bm_subtract);
		draw_sprite_ext(sprite_index, image_number, x, y, image_xscale*1.5, image_yscale*1.5, 0, c_white, 1 );
		gpu_set_blendmode(bm_normal);	
	}
	// siempre se debe resetear el objetivo de superficie
surface_reset_target();


draw_surface(lighting_surface,0,0);