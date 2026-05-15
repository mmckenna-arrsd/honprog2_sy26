function getcontrols()
{
	//directional inputs
	rightkey = keyboard_check(ord("D")); + gamepad_button_check(0, gp_padr);
	rightkey=clamp(rightkey, 0, 1);
	
	leftkey = keyboard_check(vk_left);
	keyboard_check(ord("A")); + gamepad_button_check(0, gp_padl);
	leftkey=clamp(leftkey, 0, 1);
	
	
	//action inputs
	jumpkeyPressed= keyboard_check_pressed(vk_space) + gamepad_button_check(0, gp_face1);
	jumpkeyPressed=clamp(jumpkeyPressed, 0, 1);
}