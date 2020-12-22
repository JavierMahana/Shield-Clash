/// Si me cambian una linea de este código van a revertir 9 meses de terapia 
/// FUCK OFF
/*
#region barra de los cojones ostias!
// Y
if ((abs(global.player_y) - abs(_newBarY)) != 32 && _moveY)
{
	if (mouse_y < global.player_y)
	{	
		if (contY < 44)
		{
			_newBarY = contY;
			contY += 2;
		}	
		else
		{
			_moveY = false;
			_moveX = true;
		}
	}
	if (mouse_y > global.player_y)
	{		
		if (contY > 0)
		{
			_newBarY = contY;	
			contY -= 2;
		}	
		else
		{
			_moveY = false;
			_moveX = true;
		}
	}
}
// X
if ((abs(global.player_x) - abs(_newBarX)) != 32 && _moveX)
{
	if (mouse_x < global.player_x)
	{	
		if (contX < 44)
		{
			_newBarX = contX;
			contX += 4;
		}	
		else
		{
			_moveX = false;
			_moveY = true;
		}
	}
	if (mouse_x > global.player_x)
	{		
		if (contX > 0)
		{
			_newBarX = contX;	
			contX -= 4;
		}			
		else
		{
			_moveX = false;
			_moveY = true;
		}
	}
}

if (instance_exists(o_player))
{
	_barX = global.player_x + _newBarX - 32;
	_barY = global.player_y + _newBarY - 24;
}
else
{
	_barX = 9999;
	_barY = 9999;
}
#endregion
//No cambien esto ¬¬

draw_sprite_stretched(s_energyBar,0,_barX,_barY,(global._shieldCurrCharge/global._shieldMaxCharge)*_barWidth, _barHeight);
draw_sprite_stretched(s_energyOutline,0,_barX,_barY,_barWidth, _barHeight);
*/
/*

#region barra opuesta a escudo

var point = point_direction(global.player_x, global.player_y, mouse_x, mouse_y);
var dd = angle_difference(o_player, point)/100;
_newDirectionX = abs(dd);
show_debug_message(dd);
if (mouse_x < global.player_x)
{
	if (dd>0.90)
	{
		_newDirectionY = 1.80 - dd;	
	}
	if (dd<-0.90)
	{
		_newDirectionY = -1.80 + (dd * -1);
		show_debug_message(_newDirectionY);
	}
}
else
{
	_newDirectionY = dd;	
}
if (instance_exists(o_testPalyer))
{
	_barX = global.player_x + (_newDirectionX * 32) - 40;
	_barY = global.player_y - (_newDirectionY * 32);
}
else
{
	_barX = 9999;
	_barY = 9999;
}


#endregion
	*/	
#region barra arriba o abajo del jugador

/*  

if (mouse_y > global.player_y)
{
	_newBarY = - 32;
}
else
{
	_newBarY = 32;
}
if (instance_exists(o_testPalyer))
{
	_barX = global.player_x + _newBarX;
	_barY = global.player_y + _newBarY;
}
else
{
	_barX = 9999;
	_barY = 9999;
}

*/

#endregion
	
#region barra en la esquina opuesta al mouse

/*

if (mouse_y > global.player_y)
{
	_newBarY = - 32;
}
else
{
	_newBarY = 32;
}
if (mouse_x > global.player_x)
{
	_newBarX = -32;
}
else
{
	_newBarX = 16;
}

if (instance_exists(o_testPalyer))
{
	_barX = global.player_x + _newBarX;
	_barY = global.player_y + _newBarY;
}
else
{
	_barX = 9999;
	_barY = 9999;
}

*/

#endregion