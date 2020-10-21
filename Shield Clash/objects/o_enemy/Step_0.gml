/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(collision_line(x,y,global.player_x,global.player_y,o_blockSight,true,false))
{
	
	_playerOnSight = false;
}
else
{
	if(distance_to_point(global.player_x,global.player_y) <= _sightDistance)
	{
		_playerOnSight = true;	
	}
}


#region TRANSICIONES ENTRE ESTADOS

switch (_state)
{
	case EnemyState.CHASING:
	{
		if(_playerOnSight)
		{
			_stateTimer = 0;
			_state = EnemyState.PREPARING;
		}
		break; 
	}
	case EnemyState.PREPARING:
	{
		_stateTimer += delta_time / 1000000;
		if(_stateTimer >= _attackPrepTime)
		{
			_stateTimer = 0;
			_state = EnemyState.ATTACKING;
		}
		break; 
	}
	case EnemyState.ATTACKING:
	{
		_stateTimer += delta_time / 1000000;
		switch(_attackState)
		{
			case AttackState.ATTACK_ANIM:
			{
				if(_stateTimer >= _attackTime)
				{
					_triggerAttack = true;
					_stateTimer = 0;
					
					_currBurstCount += 1;
					if(_currBurstCount >= _burstAmmount)
					{
						//disparo todas las balas del ataque actual.
						_currBurstCount = 0;
						_state = EnemyState.WANDERING;
					}
					else
					{
						//aun quedan blas por disparar
						_attackState = AttackState.WAIT;
					}
					
				}
				break;
			}	
			case AttackState.WAIT:
			{
				if(_stateTimer >= _attackInBewtweenTime)
				{
					_attackState = AttackState.ATTACK_ANIM;
				}
				break;
			}
			default:
			{
				//entra acá si es que hay un error en la asignacion de valores.
				_stateTimer = 0;
				_state = EnemyState.CHASING;
				break;
			}
		}
		break; 
	}
	case EnemyState.WANDERING:
	{
		_stateTimer += delta_time / 1000000;
		if(_stateTimer >= _wanderTime)
		{
			_stateTimer = 0;
			_state = EnemyState.CHASING;
		}
		break; 
	}
}
#endregion


#region MOVIMIENTO

switch (_state)
{
	//solo se mueve si esta en chasing o wandering.
	case EnemyState.CHASING:
	case EnemyState.WANDERING:
	{
		mp_grid_path(global.grid,path,x,y,global.player_x,global.player_y,true);
		path_start(path,_speed,path_action_stop,true);
		break;
	}
	
	case EnemyState.PREPARING:
	case EnemyState.ATTACKING:
	{
		path_start(path,0,path_action_stop,false);
		break;
	}
}

#endregion


#region DISPARAR

if(_triggerAttack)
{
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
	instance.speed = _bulletSpeed;
	
	_triggerAttack = false;
		
}

#endregion