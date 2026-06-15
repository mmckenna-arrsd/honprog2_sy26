/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 2E5E331A
/// @DnDArgument : "key" "vk_enter"
var l2E5E331A_0;l2E5E331A_0 = keyboard_check_pressed(vk_enter);if (l2E5E331A_0){	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 25753AFE
	/// @DnDParent : 2E5E331A
	/// @DnDArgument : "alarm" "6"
	alarm_set(6, 30);}