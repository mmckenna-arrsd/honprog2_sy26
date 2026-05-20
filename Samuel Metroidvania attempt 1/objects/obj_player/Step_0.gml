// inputs
getcontrols()

// movement direction
	movedir = rightkey-leftkey;

	//Get xspd
	xspd = movedir*move_speed;

	//x collision
	var _subPixel = .5;
	if place_meeting(x + xspd, y, obj_wall)
	{
		//Scoot up to wall precisely
		var _pixelCheck = _subPixel * sign(xspd);
		while !place_meeting(x + _pixelCheck, y, obj_wall)
		{
			x+= _pixelCheck;
		}
	
		//Set xspd to zero to "collide"
		xspd=0;
	}

	//Move
	x+=xspd;


//Y Movement
	//Gravity
	yspd+= grav;
	
	//cap falling speed
	if yspd > termvel {yspd=termvel;}
	
	//Jump
	if jumpkeybuffered && place_meeting(x, y+1, obj_wall)
	{
		//reset the buffer
		jumpkeybuffered=false;
		jumpkeybuffertimer=0;
		
		//set yspd to jspd
		yspd=jspd;
	}
	
	//Y Collision
	//cap falling speed
	if yspd>termvel {yspd=termvel};
	
	var _subPixel= .5;
	if place_meeting(x, y+yspd, obj_wall)
	{
		//Scoot up to the wall precisely
		var _pixelCheck=_subPixel*sign(yspd);
		while !place_meeting(x, y+_pixelCheck, obj_wall)
		{
			y+=_pixelCheck;
		}
		
		//Set yspd to 0 to collide
		yspd=0;
	}
	
	//Move
	y+=yspd;