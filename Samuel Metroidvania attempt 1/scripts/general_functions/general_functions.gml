function controlsetup()
{
	jumpbuffertime=3;
	
	jumpkeybuffered=0;
	jumpkeybuffertimer=0;
}

function getcontrols()
{
	//directional inputs
	rightkey = keyboard_check(ord("D")) + gamepad_button_check(0, gp_padr);
		rightkey=clamp(rightkey, 0, 1);
	
	leftkey = keyboard_check(ord("A")) + gamepad_button_check(0, gp_padl);
		leftkey=clamp(leftkey, 0, 1);
	
	
	//action inputs
	jumpkeyPressed= keyboard_check_pressed(vk_space) + gamepad_button_check_pressed(0, gp_face1);
	jumpkeyPressed=clamp(jumpkeyPressed, 0, 1);
	
	jumpkey=keyboard_check(vk_space) + gamepad_button_check(0, gp_face1);
	jumpkey=clamp(jumpkey, 0, 1);
	
	//jump key buffering
	if jumpkeyPressed
	{
		jumpkeybuffertimer=jumpbuffertime;
	}
	if jumpkeybuffertimer>0
	{
		jumpkeybuffered=1;
		jumpkeybuffertimer--;
	} else {
		jumpkeybuffered=0;
	}
}