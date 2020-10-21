/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

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

_health = 1;

_speed = 0.5;

_bulletSpeed = 2;

_sightDistance = 300;
_playerOnSight = false;

//tiempo que se demora la animacion de inicio de ataque
_attackPrepTime = 3;
//tiempo que se demora la animacion de ataque
_attackTime = 0.3;
//tiempo entre cada bala del ataque
_attackInBewtweenTime = 0.7;
//tiempo en el que el enemigo no ataca y se empieza a mover luego de haber realizado un ataque
_wanderTime = 10;



_state = EnemyState.CHASING;
_stateTimer = 0;

_currBurstCount = 0;
//cantidad de balas que tiene una rafaga de ataques.
_burstAmmount = 3;
_attackState = AttackState.ATTACK_ANIM;
_triggerAttack = false;

//Al crearse el enemigo, ocupa un lugar en grid.
path = path_add();

//Éste enemigo usará la alarma 0 cada 30 algo.
alarm[0] = 30;
alarm[1] = -1;
