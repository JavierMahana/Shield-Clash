/// @description MODIFICAR SPRITES
// Puede escribir su código en este editor

global.player_shieldDirection = point_direction(x, y, mouse_x, mouse_y);
sprite_index = K_idle;
global.player_x = x;
global.player_y = y;

if(_onDodge)
{
	sprite_index = K_roll;
}

	

