/// Si me cambian una linea de este código van a revertir 9 meses de terapia 
/// FUCK OFF

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

_barX = global.player_x + (_newDirectionX * 32) - 40;
_barY = global.player_y - (_newDirectionY * 32);

draw_sprite_stretched(s_energyBar,0,_barX,_barY,(global._shieldCurrCharge/global._shieldMaxCharge)*_barWidth, _barHeight);
draw_sprite_stretched(s_energyOutline,0,_barX,_barY,_barWidth, _barHeight);

