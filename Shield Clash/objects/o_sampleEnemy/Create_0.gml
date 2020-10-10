//Variables generales de enemigos
_playerOnSight = false;
Enemy_speed = 0.5;
_bulletSpeed = 2;
health = 1;

//Al crearse el enemigo, ocupa un lugar en grid.
path = path_add();

//Éste enemigo usará la alarma 0 cada 30 algo.
alarm[0] = 30;
alarm[1] = -1;


