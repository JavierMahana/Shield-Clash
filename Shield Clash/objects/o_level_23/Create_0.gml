event_inherited();

global._pointMultiplier = 2;

_maxIncreaseRatio = 16;

_currentMaxEnemies = 25; //starter
_levelMaxEnemies = 80;
_timeToIncreaseMaxEnemies = 60;

//NO ES EN 1/10 de segs, YA QUE HAY UN MODIFICADOR.
_currentSpawnTime = 550;//starter
_levelLowestSpawnTime = 80;
//_ticksToDecreaseSpawnTime = 20;
_timeToDecreaseSpawnTime = 8;


_timeStartSpawnMediumEnemies = 200;
_timeStartSpawnBigEnemies = 600;
_timeStartSpawnHugeEnemies = 1000;

_smallEnemiesSpawnWeight = 12;
_mediumEnemiesSpawnWeight = 9;
_bigEnemiesSpawnWeight = 6;
_hugeEnemiesSpawnWeight = 3;

_initialSpawnCount = 7;