//Controlar al jugador

#region Movimiento direccional y Dash

//Movimiento sin Dodge
if(not _onDodge)
{
	_yDirection = 0;
	_xDirection = 0;

	//input direccional
	if(keyboard_check(ord("A"))) 
	{
		_xDirection = -1;
		if(not place_meeting(x - _walkSpeed ,y,o_wall))
		{
			x -= _walkSpeed;
		}
	}
	
	if(keyboard_check(ord("D")))
	{
		_xDirection = 1;
		if(not place_meeting(x + _walkSpeed ,y,o_wall))
		{
			x += _walkSpeed;
		}
	}
	
	if(keyboard_check(ord("W"))) 
	{
		_yDirection = -1;
		if(not place_meeting(x, y - _walkSpeed ,o_wall))
		{
			y -= _walkSpeed;	
		}				
	}
	
	if(keyboard_check(ord("S")))
	{
		_yDirection = 1;
		if(not place_meeting(x, y + _walkSpeed ,o_wall))
		{
			y += _walkSpeed;
		}
	}	
}

// Input de Dodge
if(not _onDodge and mouse_check_button_pressed(mb_right))
{
	_dodgeFrameCount = 0;
	_onDodge = true;
}

// Ejecucion de Dodge, no se puede interrumpir hasta que se complete la animación
if(_onDodge)
{

	if(_dodgeFrameCount < _dodgeInvulFrames)
	{
		_invul = true;
	}
	else if(_dodgeFrameCount < _dodgeInvulFrames + _dodgeVulnerableFrames)
	{
		_invul = false;
	}
	else
	{
		_onDodge = false;
	}
	
	_dodgeFrameCount += 1;
	if(not place_meeting(x + _xDirection * _dodgeSpeed, y,o_wall))
		{
			x += _xDirection * _dodgeSpeed;	
		}	
	if(not place_meeting(x, y + _yDirection * _dodgeSpeed ,o_wall))
		{
			y += _yDirection * _dodgeSpeed;	
		}	
}
#endregion


#region Escudo
_showShield = _shieldCurrCharge > 0 && mouse_check_button(mb_left) && ! _onDodge;

if(_showShield)
{
	global.player_usingShield = true;
	_shieldRechargeCounter = 0;
	_shieldCurrCharge -= 1;	
}
else
{
	global.player_usingShield = false;
	if(_shieldCurrCharge > 0)
	{
		if(_shieldTimeToStartRegen <= _shieldRechargeCounter)
		{
			if(_shieldMaxCharge < _shieldCurrCharge + _shieldRegenRate)
			{
				_shieldCurrCharge = _shieldMaxCharge;
			}
			else
			{
				_shieldCurrCharge += _shieldRegenRate;
			}
		}
	}
	else
	{
		if(_shieldRechargeTime <= _shieldRechargeCounter)
		{
			_shieldCurrCharge = _shieldMaxCharge;
		}
	}
	_shieldRechargeCounter += 1;
}
#endregion

