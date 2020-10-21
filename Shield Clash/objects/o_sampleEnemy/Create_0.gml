/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
_speed = 0.5;
_health = 1;

_shotTimer = 0;
_timeBewtweenShots = 150;
_playerOnSight = false;

_bulletSpeed = 2;

_havePath = false;
_repathTimer = random_range(0, 150);
_timeToCalculatePath = 150;

path = path_add();

//Éste enemigo usará la alarma 0 cada 30 algo.
alarm[0] = 30;
alarm[1] = -1;

//Sprites
_spriteWalk = E1_walk;
_spriteIdle = E1_idle;
_spriteAttack = E1_attack;
