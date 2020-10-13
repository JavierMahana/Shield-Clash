  
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
	mp_grid_path(global.grid,path,x,y,global.player_x,global.player_y,true);
	path_start(path,_speed,path_action_stop,true);
	//alarma se vuelve a activar
	alarm_set(0,30);
}


/// Si ve al jugador activa la alarma 1 (alarma de disparo)
if(_playerOnSight)
{
	alarm_set(1,30);
	// ésta alarma se desactiva.
	alarm_set(0,-1);
}