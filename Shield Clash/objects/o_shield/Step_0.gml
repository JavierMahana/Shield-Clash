/// Escudo steps!
if(global.player_usingShield)
{
	x = o_player.x;
	y = o_player.y;
	image_angle = global.player_shieldDirection;
}
else
{
	x = _notShownX;
	y = _notShownY;
}
