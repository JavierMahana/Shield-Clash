//LOS CONTADORES SON 1/10 DE SEGUNDO POR UNIDAD
randomize();


_movmentMapInst = instance_find(o_movementMap, 0);
if(_movmentMapInst == noone)
{
	//show_error("YOU NEED A MOVEMENT MAP IN A LEVEL ROOM", true);
	
}

_maxIncreaseRatio = 10;

_currentMaxEnemies = 15; //starter
_levelMaxEnemies = 50;
_timeToIncreaseMaxEnemies = 100;
_counterIncreaseMaxEnemies = 0;

//NO ES EN 1/10 de segs, YA QUE HAY UN MODIFICADOR.
_currentSpawnTime = 700;//starter
_levelLowestSpawnTime = 100;
//_ticksToDecreaseSpawnTime = 20;
_timeToDecreaseSpawnTime = 10;
_counterToDecreaseSpawnTime = 0;

_counterSpawnEnemy = 0;


_counterLevelTime = 0;

_canSpawnMedium = false;
_canSpawnBig = false;
_canSpawnHuge = false;

_timeStartSpawnMediumEnemies = 300;
_timeStartSpawnBigEnemies = 800;
_timeStartSpawnHugeEnemies = 1500;

_smallEnemiesSpawnWeight = 12;
_mediumEnemiesSpawnWeight = 6;
_bigEnemiesSpawnWeight = 3;
_hugeEnemiesSpawnWeight = 1;


_smallEnemiesSpawners[0] = o_spawner_arquero;
_smallEnemiesSpawners[1] = o_spawner_piromano;


_mediumEnemiesSpawners[0] = o_spawner_lancero;
_mediumEnemiesSpawners[1] = o_spawner_arquero;

_bigEnemiesSpawners[0] = o_Lowmage;

_hugeEnemiesSpawners[0] = o_spawnerHuge;




//_spawnersToSpawn[0] = o_spawner;




enum EnemyType 
{
	SMALL,
	MEDIUM,
	BIG,
	HUGE
}

