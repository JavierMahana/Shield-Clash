/// Todas las variables del jugador
global.player_usingShield = false;
global.player_shieldDirection = 0;

_walkSpeed = 4;
_collision_speed = _walkSpeed + 2;

_dodgeFrameCount = 0;

_xDirection = 0;
_yDirection = 0;

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

