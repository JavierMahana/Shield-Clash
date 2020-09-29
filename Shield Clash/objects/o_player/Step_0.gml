/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


desiredX = x;
desiredY = y;

#region MOVEMENT INPUT READ




_horImp = 0;
_verImp = 0;
if(keyboard_check(ord("A")))
{
	_horImp -= 1;
}
if(keyboard_check(ord("D")))
{
	_horImp += 1;
}
if(keyboard_check(ord("W")))
{
	_verImp -= 1;
}
if(keyboard_check(ord("S")))
{
	_verImp += 1;
}



if(abs( _horImp) > 0 && abs(_verImp) > 0)
{
	_horImp *= 0.71;
	_verImp *= 0.71;
}
#endregion


#region DODGE CONTROLLER
_startDodge = (abs( _horImp) > 0 || abs(_verImp) > 0)  && !_onDodge && mouse_check_button_pressed(mb_right);


if(_startDodge)
{
	_dodgeHorMult = _horImp;
	_dodgeVerMult = _verImp;
	
	_dodgeFrameCount = 0;
	_onDodge = true;
}


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
	
	desiredX += _dodgeHorMult * _dodgeSpeed;
	desiredY += _dodgeVerMult * _dodgeSpeed;
	
}
else
{
	desiredX += _horImp * _speed;
	desiredY += _verImp * _speed;
}

#endregion


#region DO THE MOVEMENT



x = collide_x(desiredX, self);
y = collide_y(desiredY, self);

#endregion


#region SHIELD VARIABLES CONTROLLER
_showShield = _shieldCurrCharge > 0 && mouse_check_button(mb_left) && ! _onDodge;

if(_showShield)
{
	_shieldRechargeCounter = 0;
	global.player_usingShield = true;
	//global.player_shieldDirection = point_direction(x, y, mouse_x, mouse_y);
	
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




//global.player_x = x;
//global.player_y = y;
