/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//var path = path_add();

//if(!_havePath)
//{
//	mp_potential_path_object(path, global.player_x, global.player_y, _speed, 4, o_notWalkable);
//	path_start(path, _speed, path_action_stop, true);
//	_havePath = true;
//}
//else if( _repathTimer >= _timeToCalculatePath)
//{
//	mp_potential_path_object(path, global.player_x, global.player_y, _speed, 4, o_notWalkable);
//	path_start(path, _speed, path_action_stop, true);
//	_repathTimer = 0;
//}
//else
//{
//	_repathTimer += 1;
//}



//if(collision_line(x,y,global.player_x, global.player_y, o_blockSight, false, true) == noone)
//{
//	_playerOnSight = true;
//}
//else
//{
//	_playerOnSight = false;
//	_shotTimer = 0;
//}


//if(_playerOnSight)
//{
//	_shotTimer += 1;
//	if(_shotTimer >= _timeBewtweenShots)
//	{
//		_shotTimer = 0;
//		var instance = instance_create_layer(x,y,"Instances", o_enemyBullet);
//		instance.speed = _bulletSpeed;
//		instance.direction = point_direction(x,y, global.player_x, global.player_y);
//	}
//}

