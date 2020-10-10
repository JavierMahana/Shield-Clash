////////////
// Ataque //
////////////

// Luego revisa si hay vision del jugador
// revisa con una linea desde sí mismo hasta el objeto jugador
if(collision_line(x,y,o_player.x,o_player.y,o_blockSight,false,true))
{
	// si no hay vision del jugador, desactiva alarma 1
	// y activa alarma 0
	Enemy_speed = 0.5;
	_playerOnSight = false;
	alarm_set(0,30);
	alarm_set(1,-1);
	
}
else
{
	// si hay vision, sigue disparando con la ejecucion de esta alarma
	_playerOnSight = true;
	alarm_set(1,200);
	
}

/// Dispara al jugador

path_start(path,0,path_action_stop,false);
var instance = instance_create_layer(x,y,"Instances", o_enemyBullet);
var enemyBulletDir = point_direction(instance.x, instance.y, o_player.x, o_player.y);
instance.direction = enemyBulletDir;
instance.speed = _bulletSpeed * 1.5;