/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

#region sprites

_idleSrite = Crossbow_walk;
_prepSprite = Crossbow_cast;
_attackingSprite = Crossbow_attack;
_walkingSprite = Crossbow_walk;

#endregion

#region general atributtes

_health = 1;
_speed = 0.5;
_attackSound = sfx_arrow;
_sightDistance = 150;
dead = false;
_dropChance = 1;
_destroyPoints = 100;

#endregion


#region attack attributes

//tiempo que se demora la animacion de inicio de ataque
_attackPrepTime = 30;
//tiempo que se demora la animacion de ataque
_attackTime = 2;
//tiempo entre cada bala del ataque
_attackInBewtweenTime = 0;
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
_burstAmmount = 5;

_predictMovement = false;

_bulletObject = o_ballesteroBullet;

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