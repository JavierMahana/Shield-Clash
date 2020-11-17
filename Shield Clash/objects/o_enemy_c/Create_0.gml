enum EnemyState
{
	CHASING,
	PREPARING,
	ATTACKING,
	WANDERING
}
enum AttackState
{
	ATTACK_ANIM,
    WAIT
}


#region sprites

_idleSrite = Lowmage_idle;
_prepSprite = Lowmage_idle;
_attackingSprite = Lowmage_attack;
_walkingSprite = Lowmage_idle;

#endregion

#region general atributtes

_health = 1;
_speed = 0.5;

_sightDistance = 150;


#endregion


#region attack attributes

//tiempo que se demora la animacion de inicio de ataque
_attackPrepTime = 30;
//tiempo que se demora la animacion de ataque
_attackTime = 6;
//tiempo entre cada bala del ataque
_attackInBewtweenTime = 5;
//tiempo en el que el enemigo no ataca y se empieza a mover luego de haber realizado un ataque
_wanderTime = 100;

//cantidad de balas que se disparan en cada disparo de una rafaga.
_ammountOfBulletsPerBurst = 1;

for (i = 0; i < _ammountOfBulletsPerBurst; i++)
{
	//angulo respecto al objetivo en el que se dispara la bala.
	_bulletAngle[i] = 0;
}

_bulletSpeed = 2;
//cantidad de disparos que tiene una rafaga de ataques.
_burstAmmount = 3;

_predictMovement = false;

_bulletObject = o_enemyBullet;

//_attackAndMove = false;

#endregion

#region variables

_playerOnSight = false;
_state = EnemyState.CHASING;
_stateTimer = 0;
_currBurstCount = 0;
_triggerAttack = false;

_attackState = AttackState.ATTACK_ANIM;

#endregion












//Al crearse el enemigo, ocupa un lugar en grid.
path = path_add();