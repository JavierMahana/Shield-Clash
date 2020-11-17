//Restart
if(keyboard_check(ord("R")))
	{
		room_restart();
	}

//Actual Relevant Stuff

desiredX = x;
desiredY = y;


#region MOVEMENT INPUT READ
image_speed = 0;
_horImp = 0;
_verImp = 0;

if (not _onDodge)
{
	
	if(keyboard_check(ord("A")))
	{
		_spriteIdle = K_side_run;
		 image_xscale = 1;
		_horImp -= 1;
		image_speed = 1;
	}
	if(keyboard_check(ord("D")))
	{
		_spriteIdle = K_side_run;
		 image_xscale = -1;
		_horImp += 1;
		image_speed = 1;
	}
	if(keyboard_check(ord("W")))
	{
		_spriteIdle = K_up_run;
		_verImp -= 1;
		image_speed = 1;
	}
	if(keyboard_check(ord("S")))
	{
		_spriteIdle = K_down_run;
		_verImp += 1;
		image_speed = 1;
	}
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
	audio_play_sound(sfx_roll,1,false);
}

if(_onDodge)
{	
	image_speed = 1;
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
_showShield = global._shieldCurrCharge > 0 && mouse_check_button(mb_left) && ! _onDodge;

if(_showShield)
{
	_shieldRechargeCounter = 0;
	global.player_usingShield = true;
	//global.player_shieldDirection = point_direction(x, y, mouse_x, mouse_y);
	
	global._shieldCurrCharge -= 1;
}
else
{
	global.player_usingShield = false;
	if(global._shieldCurrCharge > 0)
	{
		if(_shieldTimeToStartRegen <= _shieldRechargeCounter)
		{
			if(global._shieldMaxCharge < global._shieldCurrCharge + _shieldRegenRate)
			{
				global._shieldCurrCharge = global._shieldMaxCharge;
			}
			else
			{
				global._shieldCurrCharge += _shieldRegenRate;
			}
		}
	}
	else
	{
		if(_shieldRechargeTime <= _shieldRechargeCounter)
		{
			global._shieldCurrCharge = global._shieldMaxCharge;
		}
	}
	_shieldRechargeCounter += 1;
}
#endregion

