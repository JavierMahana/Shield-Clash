
#region sprites

_idleSrite = Spearman_idle;
_prepSprite = Spearman_idle;
_attackingSprite = Spearman_attack;
_walkingSprite = Spearman_idle;

#endregion

#region general atributtes

_health = 2;
_speed = 0.4;
_attackSound = sfx_spear;
_sightDistance = 300;
dead = false;
_dropChance = 1;
_destroyPoints = 100;

#endregion


#region attack attributes

//tiempo que se demora la animacion de inicio de ataque
_attackPrepTime = 25;
//tiempo que se demora la animacion de ataque
_attackTime = 10;
//tiempo entre cada bala del ataque
_attackInBewtweenTime = 5;
//tiempo en el que el enemigo no ataca y se empieza a mover luego de haber realizado un ataque
_wanderTime = 40;

//cantidad de balas que se disparan en cada disparo de una rafaga.
_ammountOfBulletsPerBurst = 1;

for (i = 0; i < _ammountOfBulletsPerBurst; i++)
{
	//angulo respecto al objetivo en el que se dispara la bala.
	
	_bulletAngle[i] = 0;
}

_bulletSpeed = 3;
//cantidad de disparos que tiene una rafaga de ataques.
_burstAmmount = 1;

_predictMovement = true;

_bulletObject = o_lanceroBullet;

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
emiterHit = audio_emitter_create();
emiterDeath = audio_emitter_create();

#region shader
flashAlpha = 0;
flashColour = c_white;
bulletDirection = 0;
deadCount = 0;
#endregion









//Al crearse el enemigo, ocupa un lugar en grid.
path = path_add();