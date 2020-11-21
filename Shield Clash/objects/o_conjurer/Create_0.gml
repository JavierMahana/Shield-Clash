
#region sprites

_idleSrite = Conjurador_dance;
_prepSprite = Conjurador_dance;
_attackingSprite = Conjurador_attack;
_walkingSprite = Conjurador_dance;
_bulletSprite = Conjurador_missile;

#endregion

#region general atributtes

_health = 20;
_speed = 0.3;
_attackSound = sfx_laugh;
_sightDistance = 250;


#endregion


#region attack attributes

//tiempo que se demora la animacion de inicio de ataque
_attackPrepTime = 30;
//tiempo que se demora la animacion de ataque
_attackTime = 4;
//tiempo entre cada bala del ataque
_attackInBewtweenTime = 0;
//tiempo en el que el enemigo no ataca y se empieza a mover luego de haber realizado un ataque
_wanderTime = 80;

//cantidad de balas que se disparan en cada disparo de una rafaga.
_ammountOfBulletsPerBurst = 20;

for (i = 0; i < _ammountOfBulletsPerBurst; i++)
{
	//angulo respecto al objetivo en el que se dispara la bala.
	_bulletAngle[i] = i * 18;
}

_bulletSpeed = 2;
//cantidad de disparos que tiene una rafaga de ataques.
_burstAmmount = 7;

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


missileSound = audio_emitter_create();









//Al crearse el enemigo, ocupa un lugar en grid.
path = path_add();