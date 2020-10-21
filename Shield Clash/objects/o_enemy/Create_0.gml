/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

_health = 1;

_speed = 0.5;

_bulletSpeed = 2;
_playerOnSight = false;

//Al crearse el enemigo, ocupa un lugar en grid.
path = path_add();

//Éste enemigo usará la alarma 0 cada 30 algo.
alarm[0] = 30;
alarm[1] = -1;
