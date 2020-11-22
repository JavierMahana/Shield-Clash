if(!dead)
{
	
#region player on sight update

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

#endregion


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
		_stateTimer += delta_time / 100000;
		if(_stateTimer >= _attackPrepTime)
		{
			_stateTimer = 0;
			_state = EnemyState.ATTACKING;
		}
		break; 
	}
	case EnemyState.ATTACKING:
	{
		_stateTimer += delta_time / 100000;
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
		_stateTimer += delta_time / 100000;
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
		mp_grid_path(global.grid,path,x,y,global.player_x,global.player_y,false);
		path_start(path,_speed,path_action_stop,false);
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
	
	for (i = 0; i < _ammountOfBulletsPerBurst; i++)
	{
		//angulo respecto al objetivo en el que se dispara la bala.
		var bulletAngle = _bulletAngle[i];
		
		if (image_xscale == -1)
		{
			var instance = instance_create_layer(x+8,y-8,"Instances", _bulletObject);	
		}
		else
		{
			var instance = instance_create_layer(x-8,y-8,"Instances", _bulletObject);	
		}
		
		if(_predictMovement && global.player_movmentDirection != -1)
		{			
			var rad = -degtorad(global.player_movmentDirection);
			
			var steps = distance_to_point(global.player_x, global.player_y) / _bulletSpeed;
			
			var predictedPosX = global.player_x + cos(rad) * global.player_speed * steps;
			var predictedPosY = global.player_y + sin(rad) * global.player_speed * steps;
			
			var enemyBulletDir = bulletAngle + point_direction(instance.x, instance.y, predictedPosX, predictedPosY);
		}
		else
		{
			var enemyBulletDir = bulletAngle + point_direction(instance.x, instance.y, global.player_x, global.player_y);
		}
		
		instance.direction = enemyBulletDir;
		instance.image_angle = enemyBulletDir;
		instance.speed = _bulletSpeed;
		instance.sprite_index = _bulletSprite;	
	}
	
	audio_falloff_set_model(audio_falloff_linear_distance_clamped);
	audio_emitter_position(missileSound, x, y, 0);
	audio_emitter_falloff(missileSound, 10, 500, 1);
	audio_play_sound_on(missileSound, _attackSound, false, 10);

	
	_triggerAttack = false;
		
}

#endregion

#region Sprite
{
	if(global.player_x <= x)
	{
		image_xscale = 1;
	}
	else
	{
		image_xscale = -1;
	}
}

//flash 
if flashAlpha > 0
{
	flashAlpha -= 0.05;	
}
#endregion
	
}

else
{
	#region if death
	//flash 
	if flashAlpha > 0
	{
		flashAlpha -= 0.05;	
	}
	if deadCount > 0
	{
		deadCount--;
	}
	if (instance_exists(self))
	var bubbles = part_type_create();
	// particula a usar
	part_type_sprite(bubbles,Death, true, true, true);
	// escala
	part_type_scale(bubbles,0.1,0.1);
	// duracion de la particula (STEPS)
	part_type_life(bubbles, 10,20);
	// efecto de disipación
	part_type_alpha3(bubbles, 0.5, 1, 0);
	// color
	part_type_color1(bubbles, c_white);
	// tamaño(importa)
	part_type_size(bubbles,1,1,1,0);
	// velocidad
	part_type_speed(bubbles,0.01,0.05,0,0);
	// dirección
	part_type_direction(bubbles,0,359,0,true);
	// bubbles
	part_type_gravity(bubbles,0.02,90);
	// mezcla
	part_type_blend(bubbles,true);
	// el efecto
	part_particles_create(global.particleSystem, x, y, bubbles, 1);
	
	
	if deadCount == 0
	{
			instance_destroy(self);
	}
	#endregion
}
