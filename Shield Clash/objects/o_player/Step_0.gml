
desiredX = x;
desiredY = y;

#region SALVAVIDAS

if(keyboard_check(ord("Q")))
{
	if(global.playerSalvavidas > 0 && !_usandoSalvavidas)
	{
		if(!_usarSalvavidasApretado)
		{
			global.playerSalvavidas -= 1;
			_usandoSalvavidas = true;
		}
		_usarSalvavidasApretado = true;
	}
}
else
{
	_usarSalvavidasApretado = false;
}

if(_usandoSalvavidas)
{
	instance_destroy(o_enemyBullet);
	_contadorSalvavidas += delta_time / 100000;
	if(_contadorSalvavidas >= _duracionSalvavidas)
	{
		_usandoSalvavidas = false;
		_contadorSalvavidas = 0;
	}
}

#endregion

#region MOVEMENT INPUT READ



_horImp = 0;
_verImp = 0;
if (not _onDodge)
{
	if(keyboard_check(ord("A")))
	{	
		sprite_index = K_side_run;
		image_xscale = 1;
		_horImp -= 1;
	}
	if(keyboard_check(ord("D")))
	{
		sprite_index = K_side_run;
		image_xscale = -1;
		_horImp += 1;
	}
	if(keyboard_check(ord("W")))
	{
		sprite_index = K_up_run;
		_verImp -= 1;
	}
	if(keyboard_check(ord("S")))
	{
		sprite_index = K_down_run;
		_verImp += 1;
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
	_lastSprite = sprite_index;	
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
	
	desiredX += _dodgeHorMult * _dodgeSpeed; //* delta_time/100000;
	desiredY += _dodgeVerMult * _dodgeSpeed; //* delta_time/100000;
	
}
else
{
	desiredX += _horImp * _speed; //* delta_time/100000;
	desiredY += _verImp * _speed; //* delta_time/100000;
}

#endregion


#region SET THE GLOBAL MOVEMENT DIRECTION

if(desiredX == x && desiredY == y)
{
	global.player_movmentDirection = -1;
}
else
{
	global.player_movmentDirection = point_direction(x,y,desiredX, desiredY);
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

//Sound
	
audio_listener_position(x,y,0);
