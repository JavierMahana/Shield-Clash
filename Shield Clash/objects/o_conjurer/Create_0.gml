
#region sprites

_idleSrite = Conjurador_dance;
_prepSprite = Conjurador_dance;
_attackingSprite = Conjurador_attack;
_walkingSprite = Conjurador_dance;

#endregion

#region general atributtes

_health = 20;
_speed = 0.3;
_attackSound = sfx_laugh;
_sightDistance = 250;
dead = false;
_dropChance = 5;
_destroyPoints = 100;

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

_bulletObject = o_conjurerBullet;

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