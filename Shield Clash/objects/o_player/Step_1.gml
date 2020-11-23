global.player_shieldDirection = point_direction(x, y, mouse_x, mouse_y);


if(_onDodge)
{
	draw_set_color(c_white);
	draw_line(_dodgeStartX,_dodgeStartY,x,y);
	if (_horImp != 0)
	{
			sprite_index = K_side_roll;
			if (_horImp == 1)
			{
				 image_xscale = -1;
			}		
	}
	else if (_verImp != 0)
	{
		if(_verImp == 1)
		{
			sprite_index = K_down_roll
		}
		else
		{
			sprite_index = K_up_roll;
		}
	}
	
}
else
{
	_lastSprite = sprite_index;	
}



