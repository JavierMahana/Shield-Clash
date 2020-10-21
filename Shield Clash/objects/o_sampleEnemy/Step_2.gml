/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
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
		sprite_index = E1_walk;
		break;
	}
	
	case EnemyState.ATTACKING:
	{
		switch(_attackState)
		{
			case AttackState.ATTACK_ANIM:
			{
				sprite_index = E1_attack;
				break;
			}
			case AttackState.WAIT:
			{
				sprite_index = E1_idle;
				break;
			}
			default:
			{
				sprite_index = E1_idle;
				break;
			}
		}
		break;
	}
	case EnemyState.PREPARING:
	{
		sprite_index = E1_prep
		break;
	}
}