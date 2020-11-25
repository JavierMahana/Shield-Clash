audio_emitter_free(missileSound);
audio_emitter_free(emiterHit);
audio_emitter_free(emiterDeath);
var r =irandom(100);
if(r <= _dropChance)
{
	//HAY UN DROP
	instance_create_layer(x,y,"Instances", o_salvavidasDrop);	
}

global.puntaje += _destroyPoints;