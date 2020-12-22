
event_inherited();

global._pointMultiplier = 0;

_maxIncreaseRatio = 0;

_currentMaxEnemies = 0; //starter
_levelMaxEnemies =0;
_timeToIncreaseMaxEnemies = 0;

//NO ES EN 1/10 de segs, YA QUE HAY UN MODIFICADOR.
_currentSpawnTime = 0;//starter
_levelLowestSpawnTime =0;
//_ticksToDecreaseSpawnTime = 20;
_timeToDecreaseSpawnTime = 0;



_timeStartSpawnMediumEnemies = 0;
_timeStartSpawnBigEnemies = 0;
_timeStartSpawnHugeEnemies = 0;

_smallEnemiesSpawnWeight = 0;
_mediumEnemiesSpawnWeight = 0;
_bigEnemiesSpawnWeight = 0;
_hugeEnemiesSpawnWeight = 0;
