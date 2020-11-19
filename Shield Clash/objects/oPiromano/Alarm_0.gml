// Primero revisa si es que puede ver al jugador
// revisa con una linea desde sí mismo hasta el objeto jugador

if(collision_line(x,y,global.player_x,global.player_y,o_blockSight,true,false))
{
	_playerOnSight = false;
}
else
{
	_playerOnSight = true;	

}

/// Si no ve al jugador, busca una forma de llegar a él
if(!_playerOnSight)
{
	show_debug_message("Teltransporte");
	alarm_set(2, 40);
	alarm_set(0,40);
	sprite_index = sPiromano_Tele;
}


/// Si ve al jugador activa la alarma 1 (alarma de disparo)
if(_playerOnSight)
{
	alarm_set(1,60);
	// ésta alarma se desactiva.
	alarm_set(0,-1);
	sprite_index = sPiromano
}