/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
// Primero revisa si es que puede ver al jugador
// revisa con una linea desde sÃ­ mismo hasta el objeto jugador

if(collision_line(x,y,global.player_x,global.player_y,o_blockSight,true,false))
{
	_playerOnSight = false;
}
else
{
	_playerOnSight = true;	

}

/// Si no ve al jugador, busca una forma de llegar a Ã©l
if(!_playerOnSight)
{
	alarm_set(2, 40);
	alarm_set(0,40);
	sprite_index = Piromano_teleport;
	if(_rageMode)
	{
		sprite_index = Piromano_rage_teleport;
	}
}

tim =30;
/// Si ve al jugador activa la alarma 1 (alarma de disparo)
if(_playerOnSight)
{
	sprite_index = Piromano_attack;
	if(_rageMode)
	{
		tim = 1;
		sprite_index = Piromano_attack_rage;
	}
	
	alarm_set(1,tim);
	// Ã©sta alarma se desactiva.
	alarm_set(0,-1);
}