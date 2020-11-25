audio_emitter_free(stepSound);
global.playerIsAlive = false;
global.Strings = 10;
global.DefeatString = irandom_range(1,global.Strings);
show_debug_message(global.DefeatString);
