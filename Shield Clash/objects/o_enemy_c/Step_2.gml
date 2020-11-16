if(x < global.player_x)
{
	image_xscale = -1;
}
else
{
	image_xscale = 1;	
}

switch(_state)
{
	case EnemyState.CHASING:
	case EnemyState.WANDERING:
	{
		sprite_index = _walkingSprite;
		break;
	}
	
	case EnemyState.ATTACKING:
	{
		switch(_attackState)
		{
			case AttackState.ATTACK_ANIM:
			{
				sprite_index = _attackingSprite;
				break;
			}
			case AttackState.WAIT:
			{
				sprite_index = _idleSrite;
				break;
			}
			default:
			{
				sprite_index = _idleSrite;
				break;
			}
		}
		break;
	}
	case EnemyState.PREPARING:
	{
		sprite_index = _prepSprite;
		break;
	}
}