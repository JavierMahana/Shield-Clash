if(!surface_exists(lighting_surface))
{
	lighting_surface = surface_create(view_wport[0], view_hport[0]);
}

surface_set_target(lighting_surface);
draw_clear_alpha(c_black,0.35);

#region SUBTRACT
// SUBTRACT 
gpu_set_blendmode(bm_subtract);
	// relacion con fuentes de luz
	with (o_light)
	{
		var movimientoX = image_xscale + random_range(-movimiento, movimiento);
		var movimientoY = image_yscale + random_range(-movimiento, movimiento);	
		draw_sprite_ext(sprite_index, image_index, x, y, movimientoX, movimientoX, 0, c_white, 1);
	}	
	with (o_player)
	{
		draw_sprite_ext(Light, image_number, x, y, image_xscale*0.5, image_yscale*0.5, 0, c_white, 1 );
	}	
	with (o_enemy_c)
	{
		draw_sprite_ext(Light, image_number, x, y, image_xscale*0.75, image_yscale*0.75, 0, c_silver, 1);		
	}
	with (o_shield)
	{
		draw_sprite_ext(LightShield, image_index, x, y, image_xscale, image_yscale*1.75, image_angle, c_white, 1);
	}
	with (o_enemyBullet)
	{
		draw_sprite_ext(Light, image_number, x, y, image_xscale*0.5, image_yscale*0.5, 0, c_white, 1 );
	}
	with (o_playerBullet)
	{
		draw_sprite_ext(Light, image_number, x, y, image_xscale, image_yscale, 0, c_white, 1 );
	}
	with (o_salvavidasDrop)
	{
		draw_sprite_ext(sprite_index, image_number, x, y, image_xscale, image_yscale, 0, c_white, 0.5 );
	}
	with (o_spawner)
	{	
		draw_sprite_ext(Light, image_number, x, y, image_xscale*0.5, image_yscale*0.5, 0, c_white, 1 );
	}
		with(Death)
	{
		draw_sprite_ext(sprite_index, image_number, x, y, image_xscale, image_yscale, image_angle, c_white, 1 );	
	}
	
		
#endregion
		
#region ADD	
// ADD
gpu_set_blendmode(bm_add);
with (o_light)
	{
		draw_sprite_ext(sprite_index, image_index, x, y, movimientoY, movimientoY, 0, color, intensidad);
	}	
	with (o_player)
	{
		if (!global.player_usingShield)
		{
			draw_sprite_ext(Light, image_index, x, y, image_xscale*0.25, image_yscale*0.25, 0, c_white, 0.75);
		}
		else
		{	
			draw_sprite_ext(Light, image_index, x, y, image_xscale*0.5, image_yscale*0.5, 0, c_silver, 1);
			draw_sprite_ext(Light, image_index, x, y, image_xscale*0.5, image_yscale*0.5, 0, c_blue, 0.5);
		}

	}
		
	with (o_arquero)
	{		
		draw_sprite_ext(Light, image_index, x, y, image_xscale*0.75, image_yscale*0.75, 0, c_ltgray, 1);
	}
	with (o_ballestero)
	{
		draw_sprite_ext(Light, image_index, x, y, image_xscale*0.75, image_yscale*0.75, 0, c_teal,1);
	}
	with (o_conjurer)
	{
		draw_sprite_ext(Light, image_index, x, y, image_xscale*1.8, image_yscale*1.8, 0, c_purple,1);
	}
	with (o_lancero)
	{
		draw_sprite_ext(Light, image_index, x, y, image_xscale*0.75, image_yscale*0.75, 0, c_yellow,1);
	}
	with (o_Lowmage)
	{
		draw_sprite_ext(Light, image_index, x, y, image_xscale*1.2, image_yscale*1.2, 0, c_green,1);
	}		
	
	with (o_shield)
	{
		draw_sprite_ext(LightShield2, image_number, x, y, image_xscale*4, image_yscale*0.15, image_angle, c_blue, 1 );
		draw_sprite_ext(LightShield, image_number, x, y, image_xscale*1.1, image_yscale*0.15, image_angle, c_white, 1 );
		draw_sprite_ext(LightShield, image_number, x, y, image_xscale, image_yscale*1.75, image_angle, c_navy, 1 );
	}
	
	with (o_conjurerBullet)
	{
		draw_sprite_ext(Light, image_index, x, y, image_xscale*0.5, image_yscale*0.5, 0, c_purple, 1);
	}
	with (o_lanceroBullet)
	{
		draw_sprite_ext(Light, image_index, x, y, image_xscale*0.5, image_yscale*0.5, 0, c_yellow, 1);
	}
	with (o_LowmageBullet)
	{
		draw_sprite_ext(Light, image_index, x, y, image_xscale*0.5, image_yscale*0.5, 0, c_green, 1);
	}	
	
	with (o_playerBullet)
	{
		draw_sprite_ext(Light, image_number, x, y, image_xscale, image_yscale, 0, c_blue, 0.5 );
		draw_sprite_ext(LightBullet, image_number, x, y, image_xscale, image_yscale, 0, c_white, 1 );
		draw_sprite_ext(LightBullet, image_number, x, y, image_xscale*0.75, image_yscale*0.75, 0, c_blue, 0.25 );	
	}
	with (o_salvavidasDrop)
	{
		draw_sprite_ext(sprite_index, image_number, x, y, image_xscale, image_yscale, 0, c_white, 0.5 );
	}
	with (o_spawner)
	{
		draw_sprite_ext(Light, image_number, x, y, image_xscale*1.5, image_yscale*1.5, 0, c_red, 1 );
		draw_sprite_ext(sprite_index, image_number, x, y, image_xscale*0.5, image_yscale*0.5, 0, c_red, 1 );
	}
	with(Death)
	{
		draw_sprite_ext(sprite_index, image_number, x, y, image_xscale, image_yscale, image_angle, c_white, 1 );	
	}
	
#endregion

// NORMAL
gpu_set_blendmode(bm_normal);	

// siempre se debe resetear el objetivo de superficie
surface_reset_target();

gpu_set_blendmode(bm_normal);	
draw_surface(lighting_surface,0,0);