
#region sprites

_idleSrite = Archer_walk;
_prepSprite = Archer_cast;
_attackingSprite = Archer_attack;
_walkingSprite = Archer_walk;
_bulletSprite = Archer_missile
image_xscale = -1;

#endregion

#region general atributtes

_health = 2;
_speed = 1;
_attackSound = sfx_arrow;
_sightDistance = 250;
dead = false;

#endregion


#region attack attributes

//tiempo que se demora la animacion de inicio de ataque
_attackPrepTime = 10;
//tiempo que se demora la animacion de ataque
_attackTime = 10;
//tiempo entre cada bala del ataque
_attackInBewtweenTime = 0;
//tiempo en el que el enemigo no ataca y se empieza a mover luego de haber realizado un ataque
_wanderTime = 40;

//cantidad de balas que se disparan en cada disparo de una rafaga.
_ammountOfBulletsPerBurst = 5;

for (i = 0; i < _ammountOfBulletsPerBurst; i++)
{
	//angulo respecto al objetivo en el que se dispara la bala.
	
	_bulletAngle[i] = i * 5 - 10;
}

_bulletSpeed = 2;
//cantidad de disparos que tiene una rafaga de ataques.
_burstAmmount = 1;

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


//sound 
missileSound = audio_emitter_create();



#region shader
flashAlpha = 0;
flashColour = c_white;
bulletDirection = 0;
deadCount = 0;
#endregion









//Al crearse el enemigo, ocupa un lugar en grid.
path = path_add();
