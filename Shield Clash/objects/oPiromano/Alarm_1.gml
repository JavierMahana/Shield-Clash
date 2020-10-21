///////////
// Ataque //
////////////
		
	/// Dispara al jugador
	path_start(path,0,path_action_stop,false);
	if (image_xscale == -1)
	{
		var instance = instance_create_layer(x+16,y-16,"Instances", o_enemyBullet);	
	}
	else
	{
		var instance = instance_create_layer(x-16,y-16,"Instances", o_enemyBullet);	
	}
	var enemyBulletDir = point_direction(instance.x, instance.y, global.player_x, global.player_y);
	instance.direction = enemyBulletDir;
	instance.speed = _bulletSpeed * 1.5;	
		
// Luego revisa si hay vision del jugador
// revisa con una linea desde sí mismo hasta el objeto jugador
if(collision_line(x,y,global.player_x, global.player_y,o_blockSight,false,true))
{
	// si no hay vision del jugador, desactiva alarma 1
	// y activa alarma 0
	_speed = 0.5;
	_playerOnSight = false;
	alarm_set(0,30);
	alarm_set(1,-1);
}
else
{
	// si hay vision, sigue disparando con la ejecucion de esta alarma
	_playerOnSight = true;
	alarm_set(0,60);
	sprite_index = sPiromano;
}