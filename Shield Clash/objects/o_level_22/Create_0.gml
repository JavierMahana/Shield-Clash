

event_inherited();

global._pointMultiplier = 1.5;

_maxIncreaseRatio = 13;

_currentMaxEnemies = 20; //starter
_levelMaxEnemies = 64;
_timeToIncreaseMaxEnemies = 80;

//NO ES EN 1/10 de segs, YA QUE HAY UN MODIFICADOR.
_currentSpawnTime = 600;//starter
_levelLowestSpawnTime = 90;
//_ticksToDecreaseSpawnTime = 20;
_timeToDecreaseSpawnTime = 9;


_timeStartSpawnMediumEnemies = 250;
_timeStartSpawnBigEnemies = 650;
_timeStartSpawnHugeEnemies = 1200;

_smallEnemiesSpawnWeight = 12;
_mediumEnemiesSpawnWeight = 7;
_bigEnemiesSpawnWeight = 5;
_hugeEnemiesSpawnWeight = 2;

_initialSpawnCount = 6;