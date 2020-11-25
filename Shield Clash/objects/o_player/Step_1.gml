
global.player_shieldDirection = point_direction(x, y, mouse_x, mouse_y);


if(_onDodge)
{
	if (_dodgeHorMult != 0)
	{
			if(_invul)
			{
				sprite_index = K_side_roll_invul;	
			}
			else
			{
				sprite_index = K_side_roll_vul;	
			}
			//sprite_index = K_side_roll;			
			if (_dodgeHorMult == 1)
			{
				 image_xscale = -1;
			}		
	}
	else if (_dodgeVerMult != 0)
	{
		if(_dodgeVerMult == 1)
		{
			if(_invul)
			{
				sprite_index = K_down_roll_invul;	
			}
			else
			{
				sprite_index = K_down_roll_vul;	
			}
			//sprite_index = K_down_roll
		}
		else
		{
			if(_invul)
			{
				sprite_index = K_up_roll_invul;	
			}
			else
			{
				sprite_index = K_up_roll_vul;	
			}
			//sprite_index = K_up_roll;
		}
	}
	
}
else
{
	//sprite_index = K_Idle;
	//sprite_index = _lastSprite;	
	_lastSprite = sprite_index;	
}



