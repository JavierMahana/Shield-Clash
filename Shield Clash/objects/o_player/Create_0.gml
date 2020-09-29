/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

global.player_y = y;
global.player_x = x;

global.player_usingShield = false;
global.player_shieldDirection = 0;

_horImp = 0;
_verImp = 0;


_speed = 4;


_dodgeFrameCount = 0;

_dodgeHorMult = 0;
_dodgeVerMult = 0;

_dodgeInvulFrames = 14;
_dodgeVulnerableFrames = 9;
_dodgeSpeed = 5;

_onDodge = false;

_invul = false;

_shieldMaxCharge = 100;
_shieldCurrCharge = 100;
_shieldTimeToStartRegen = 20;
_shieldRegenRate = 2;
_shieldRechargeTime = 100;

_shieldRechargeCounter = 0;

